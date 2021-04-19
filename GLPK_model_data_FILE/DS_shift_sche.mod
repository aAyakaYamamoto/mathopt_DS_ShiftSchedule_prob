##############################
#	記号
##############################
set I;               # 人の集合
set I_;		         # PGMの集合	    
set J;               # 曜日の集合
set J_;              # 土日の集合
param s{I, J};       # 人iさんがj曜日に働ける時とき1,働けないなら0				
var x{I, J} binary;  # 人iさんがj曜日に働くとき1,働かないなら0
var u;		         # シフト希望が通る上限（最大値）
var l;               # シフト希望が通る下限（最小値）

##############################
#	目的関数
##############################
# シフト希望が通った回数の隔たりを最小にする
minimize Objective:
	 u  - l ; 

##############################
#	制約関数
##############################
# 毎日のシフトの上限・下限
subject to LB_shift {j in J}:
	sum{i in I} x[i, j] >= 2;
subject to UB_shift {j in J}:
 	sum{i in I } x[i, j] <= 4;

# 土・日のシフト人数の下限
subject to LB_shift_SunSat {j in J: j in J_ }:
	sum{i in I} x[i, j] >= 3;

# 毎日のシフトに必要なPGMの下限
subject to PGM_shift_commit {j in J}:
	sum{i in I: i in I_ } x[i, j] >= 1;

# シフト希望採用回数の上限・下限
subject to LB_Staff_Satisfy {i in I}:
	sum{j in J} x[i, j] >= l;
subject to UB_Staff_Satisfy {i in I}:
	sum{j in J} x[i, j] <= u;

# シフト希望日以外の出勤禁止条件
subject to Shift{i in I, j in J } :
	 (s[i, j] - x [i, j]) >= 0;


#### This is end of file ####
