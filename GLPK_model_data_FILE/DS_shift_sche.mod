##############################
#	記号
##############################
set I;               # 人の集合
set I_;		     # PGMの集合	    
set J;               # 曜日の集合
set J_;              # 土日の集合
			    
param s{I, J};       # 人iさんがj曜日に働ける時とき1,働けないなら0				

var x{I, J} binary;  # 人iさんがj曜日に働くとき1,働かないなら0
var u;		     # シフト希望が通る上限（最大値）
var l;               # # シフト希望が通る下限（最小値）

##############################
#	目的関数
##############################
# シフト希望が通った回数の隔たりを最小にする
minimize Objective:
	 u  - l ; 

##############################
#	制約関数
##############################
# 1日少なくても2人
subject to LB_shift {j in J}:
	sum{i in I} x[i, j] >= 2;

# 1日多くても4人まで
subject to UB_shift {j in J}:
 	sum{i in I } x[i, j] <= 4;

# ただし土曜、日曜は3人以上必要
subject to LB_shift_SunSat {j in J: j in J_ }:
	sum{i in I} x[i, j] >= 3;

# １日少なくとも1人PGMがメンバにいる
subject to PGM_shift_commit {j in J}:
	sum{i in I: i in I_ } x[i, j] >= 1;

# 少なくともシフト希望が通る下限
subject to LB_Staff_Satisfy {i in I}:
	sum{j in J} x[i, j] >= l;

# 少なくともシフト希望が通る上限
subject to UB_Staff_Satisfy {i in I}:
	sum{j in J} x[i, j] <= u;


# シフト希望日以外は出勤しない
subject to Shift{i in I, j in J } :
	 (s[i, j] - x [i, j]) >= 0;


#### this is end of file ####
