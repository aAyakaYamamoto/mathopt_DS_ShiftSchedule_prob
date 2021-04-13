# mathopt_DS_ShiftSchedule_prob

11人のメンバーがいるDS課のシフトスケジュールを作成する数理最適化問題
#### 目的関数
* シフト希望が通った回数の隔たりを最小にする

#### GUI上で設定できる制約
* 制約条件1：１日で働く人数の上限と下限を設定
* 制約条件2：土日に働く下限を設定
* 制約条件3：毎日のシフトにおけるPGMメンバ下限を設定
#### 設定できない制約
* 制約条件4：シフト希望日以外は出勤しない


# ディレクトリ構成

| フォルダ名 | 概要 |
| ---- | ---- |
| src | 検証用のnotebookとメインコードを格納|
| input_data | メインコードを動かす上で必要な希望シフトを格納 |
| out_put_data | メインコード中で最適化計算後に作成される最終的なシフト等を格納 |
| GLPK_model_data_FILE | CUIで最適化計算を動かす場合に必要なソースを格納 |

# requirement.txtのセットアップ

* おそらくpython3.8以上が必要
pipで必要なパッケージをインストールする。

```
$ pip install -r requirements.txt
```

# GUI:streamitの実行

下記コマンドでstremlitを起動し、GUIを立ち上げ操作する。
```
$ streamlit run ./src/ DS_shift_sche.py
```

# CUI:modファイルとdatファイルを用いてGLPKを起動する

最適化計算ツールであるGLPKのダウンロードは以下のコードで行う。
* 参考：https://formulae.brew.sh/formula/glpk
```
$ brew install glpk
```
下記コマンドを用いて、glpsol(GLPK）の環境変数を通す。
```
$ which glpsol
```

下記コマンドでGLPKを呼び出し、最適化計算を行う。

```
$ glpsol -m DS_shift_sche.mod -d DS_shift_sche.dat -o DS_shift_sche_result.txt --log DS_shift_sche_log.txt
```

