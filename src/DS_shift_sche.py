#!/usr/bin/env python
# -*- coding: utf-8 -*-

# パッケージのインストール
import codecs
import io
import numpy as np
import openpyxl
import os
import pandas as pd
import plotly.express as px
import re
import shutil
import streamlit as st
import sys
import time
from ortoolpy import addvars
from pulp import *
from itertools import product
                                                                                                                                                                                                                                                                                               
##############################
#### データの取り込み
##############################
df_in = pd.read_csv("../input_data/2021_02_04_最適化問題_先端DSシフトスケジュール問題.csv", index_col=0) 

st.title('DS課 シフトスケジュール問題')
st.header('▼ 提出シフトデータ')

#### 取り込みデータの表示
st.markdown('提出済シフト内容：表 (1:入れる、0:入れない)')
st.dataframe(df_in.style.highlight_max(axis=0))

st.markdown('提出済シフト内容：シフト入れる回数')
st.write(px.bar(df_in))

##############################
#### 数理モデルの作成（パラメータはcsvから読み込み）
##############################
m = LpProblem("original_DS_ShiftSche") 
# 人の集合
I = df_in.index.values.tolist()
# PGMの集合
I_ = I[8:11]
# 曜日の集合
J = df_in.columns.tolist()
# 祝日の集合
#J_ = ['Sat', 'Sun']
J_ = J[5:7]
# 提出したシフト
shift = df_in.values.tolist()
s = {} # 空の辞書
for i in I:
    for j in J:
        s[i, j] = shift[I.index(i)][J.index(j)]
        
#### 変数
up = LpVariable("u", lowBound=0) 
low  = LpVariable("l", lowBound=0) 
x = {}
for i in I:
    for j in J:
        x[i, j] = LpVariable(f"x({i},{j})", cat=LpBinary)
        
#### 目的関数
m += (up - low)


#### 制約条件
st.header('▼ 作成するシフトの設定')

LB_shift = st.slider(
    '① 出勤人数の下限を決めてください', min_value=0, max_value=10, step=1, value=1)
st.write(" 毎日、少なくとも", LB_shift, '人は出勤します。')

st.write("-----------------------------")

UB_shift = st.slider(
    '② 出勤人数の上限を決めてください', min_value=0, max_value=10, step=1, value=4)
st.write(" 毎日、多くても", UB_shift, '人まで出勤します。')

for j in J:
    # １日少なくとも2人は出勤、多くても4人まで
    m += lpSum(x[i, j] for i in I) >= LB_shift, f"LB_shift_{j}"
    m += lpSum(x[i, j] for i in I) <= UB_shift, f"UB_shift_{j}"
   # PGMは少なくとも1人毎日出勤する
    m += lpSum(x[i, j] for i in I_) >= 1,  f"PGM_shift_commit_{j}"

# 土日は3人以上出勤する
for j in J_ :
    m += lpSum(x[i, j] for i in I) >= 3,  f"LB_shift_SunSat_{j}"

# シフト希望が通る回数の下限と上限
for i in I:
    m += lpSum(x[i, j] for j in J) >= low  , f"LB_Staff_Satisfy_{i}"
    m += lpSum(x[i, j] for j in J) <= up  ,   f"UB_Staff_Satisfy_{i}"
    
# シフト希望日以外は出勤しない
for i in I:
    for j in J:
        m += s[i, j] >= x[i, j],  f"Shift_({i}{j})"

##############################
#### ソルバの指定、オプションの指定
##############################
cmd = GLPK_CMD(timeLimit=None, keepFiles=True)

##############################
#### 最適化計算
##############################
st.header('▼ 最適化計算')
st.markdown('「提出済シフトにおいて、シフト希望採用回数の隔たりを最小にする」最適化問題を計算。')

if st.button("最適化計算スタート"):
#    st.write("計算をスタートしました!")
    text = st.empty()
    bar = st.progress(0)
    for i in range(100):
       text.text(f"計算ステータス {i + 1}/100")
       bar.progress(i + 1)
       time.sleep(0.01)

    #### ソルバで計算する
    try:
        m.solve(cmd)
        print(f"*" * 20)
        print("解の情報")
        print(f"*" * 20)
        print('Status num.: ', m.status) 
        print('Status: ', LpStatus[m.status])

        if m.status == 1:        
            # 計算結果をテキストファイルに保存
            with open("../output_data/tmp.txt", "a", newline="") as file:
                for i in I:
                    for j in J:            
                        print(x[i,j].value(), file=file, end="\n")
                        # 保存したテキストデータをエクセルに書き込み
            book = openpyxl.load_workbook('../output_data/temp_schedule.xlsx', data_only = False)
            sheet = book['result']

            # テキストファイルの読み込み
            file_data = open("../output_data/tmp.txt", "r", encoding="utf-8")
            for j in range(2, 13):   
                for i in range(2, 9):
                    pattern_data = file_data.readline().rstrip()

                    # エラー処理（ファイルが空の場合はskipする）
                    try:
                        sheet.cell(row=j, column=i).value = str(pattern_data)
                    except :
                        continue
                
                # ファイル出力
                filename, file_extension = os.path.splitext("../output_data/tmp.txt")
                out_file =  filename + ".xlsx"
                book.save(out_file)

            # 結果の表示
            df_out = pd.read_excel('../output_data/tmp.xlsx', index_col=0)

            st.header('▼ 最適化計算後のシフトデータ')

            st.markdown('計算後シフト内容：表（1：入れる、0：入れない）')
            st.write(df_out.style.highlight_max(axis=0))

            st.markdown('計算後シフト内容：シフト入れる回数')
            st.write(px.bar(df_out))

            # 初期化
            os.remove('../output_data/tmp.txt')
            LB_shift = 0
            UB_shift = 0

        else:
            st.markdown("実行可能解が見つかりませんでした。")

    except PulpSolverError as e:
        st.markdown("実行可能解が見つかりませんでした。")

    

    

