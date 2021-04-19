\* DS_Shift-ScheduleProb *\
Minimize
OBJ: - l + u
Subject To
LB_Staff_Satisfy_Atsushi: - l + x(Atsushi,Fri) + x(Atsushi,Mon)
 + x(Atsushi,Sat) + x(Atsushi,Sun) + x(Atsushi,Thu) + x(Atsushi,Tue)
 + x(Atsushi,Wed) >= 0
LB_Staff_Satisfy_Ayaka: - l + x(Ayaka,Fri) + x(Ayaka,Mon) + x(Ayaka,Sat)
 + x(Ayaka,Sun) + x(Ayaka,Thu) + x(Ayaka,Tue) + x(Ayaka,Wed) >= 0
LB_Staff_Satisfy_Hiroshi: - l + x(Hiroshi,Fri) + x(Hiroshi,Mon)
 + x(Hiroshi,Sat) + x(Hiroshi,Sun) + x(Hiroshi,Thu) + x(Hiroshi,Tue)
 + x(Hiroshi,Wed) >= 0
LB_Staff_Satisfy_Kenichi: - l + x(Kenichi,Fri) + x(Kenichi,Mon)
 + x(Kenichi,Sat) + x(Kenichi,Sun) + x(Kenichi,Thu) + x(Kenichi,Tue)
 + x(Kenichi,Wed) >= 0
LB_Staff_Satisfy_Kohei: - l + x(Kohei,Fri) + x(Kohei,Mon) + x(Kohei,Sat)
 + x(Kohei,Sun) + x(Kohei,Thu) + x(Kohei,Tue) + x(Kohei,Wed) >= 0
LB_Staff_Satisfy_Masamichi: - l + x(Masamichi,Fri) + x(Masamichi,Mon)
 + x(Masamichi,Sat) + x(Masamichi,Sun) + x(Masamichi,Thu) + x(Masamichi,Tue)
 + x(Masamichi,Wed) >= 0
LB_Staff_Satisfy_Mayuko: - l + x(Mayuko,Fri) + x(Mayuko,Mon) + x(Mayuko,Sat)
 + x(Mayuko,Sun) + x(Mayuko,Thu) + x(Mayuko,Tue) + x(Mayuko,Wed) >= 0
LB_Staff_Satisfy_Shota: - l + x(Shota,Fri) + x(Shota,Mon) + x(Shota,Sat)
 + x(Shota,Sun) + x(Shota,Thu) + x(Shota,Tue) + x(Shota,Wed) >= 0
LB_Staff_Satisfy_Syori: - l + x(Syori,Fri) + x(Syori,Mon) + x(Syori,Sat)
 + x(Syori,Sun) + x(Syori,Thu) + x(Syori,Tue) + x(Syori,Wed) >= 0
LB_Staff_Satisfy_Takuya: - l + x(Takuya,Fri) + x(Takuya,Mon) + x(Takuya,Sat)
 + x(Takuya,Sun) + x(Takuya,Thu) + x(Takuya,Tue) + x(Takuya,Wed) >= 0
LB_Staff_Satisfy_Tomoya: - l + x(Tomoya,Fri) + x(Tomoya,Mon) + x(Tomoya,Sat)
 + x(Tomoya,Sun) + x(Tomoya,Thu) + x(Tomoya,Tue) + x(Tomoya,Wed) >= 0
LB_shift_Fri: x(Atsushi,Fri) + x(Ayaka,Fri) + x(Hiroshi,Fri) + x(Kenichi,Fri)
 + x(Kohei,Fri) + x(Masamichi,Fri) + x(Mayuko,Fri) + x(Shota,Fri)
 + x(Syori,Fri) + x(Takuya,Fri) + x(Tomoya,Fri) >= 1
LB_shift_Mon: x(Atsushi,Mon) + x(Ayaka,Mon) + x(Hiroshi,Mon) + x(Kenichi,Mon)
 + x(Kohei,Mon) + x(Masamichi,Mon) + x(Mayuko,Mon) + x(Shota,Mon)
 + x(Syori,Mon) + x(Takuya,Mon) + x(Tomoya,Mon) >= 1
LB_shift_Sat: x(Atsushi,Sat) + x(Ayaka,Sat) + x(Hiroshi,Sat) + x(Kenichi,Sat)
 + x(Kohei,Sat) + x(Masamichi,Sat) + x(Mayuko,Sat) + x(Shota,Sat)
 + x(Syori,Sat) + x(Takuya,Sat) + x(Tomoya,Sat) >= 1
LB_shift_Sun: x(Atsushi,Sun) + x(Ayaka,Sun) + x(Hiroshi,Sun) + x(Kenichi,Sun)
 + x(Kohei,Sun) + x(Masamichi,Sun) + x(Mayuko,Sun) + x(Shota,Sun)
 + x(Syori,Sun) + x(Takuya,Sun) + x(Tomoya,Sun) >= 1
LB_shift_SunSat_Sat: x(Atsushi,Sat) + x(Ayaka,Sat) + x(Hiroshi,Sat)
 + x(Kenichi,Sat) + x(Kohei,Sat) + x(Masamichi,Sat) + x(Mayuko,Sat)
 + x(Shota,Sat) + x(Syori,Sat) + x(Takuya,Sat) + x(Tomoya,Sat) >= 3
LB_shift_SunSat_Sun: x(Atsushi,Sun) + x(Ayaka,Sun) + x(Hiroshi,Sun)
 + x(Kenichi,Sun) + x(Kohei,Sun) + x(Masamichi,Sun) + x(Mayuko,Sun)
 + x(Shota,Sun) + x(Syori,Sun) + x(Takuya,Sun) + x(Tomoya,Sun) >= 3
LB_shift_Thu: x(Atsushi,Thu) + x(Ayaka,Thu) + x(Hiroshi,Thu) + x(Kenichi,Thu)
 + x(Kohei,Thu) + x(Masamichi,Thu) + x(Mayuko,Thu) + x(Shota,Thu)
 + x(Syori,Thu) + x(Takuya,Thu) + x(Tomoya,Thu) >= 1
LB_shift_Tue: x(Atsushi,Tue) + x(Ayaka,Tue) + x(Hiroshi,Tue) + x(Kenichi,Tue)
 + x(Kohei,Tue) + x(Masamichi,Tue) + x(Mayuko,Tue) + x(Shota,Tue)
 + x(Syori,Tue) + x(Takuya,Tue) + x(Tomoya,Tue) >= 1
LB_shift_Wed: x(Atsushi,Wed) + x(Ayaka,Wed) + x(Hiroshi,Wed) + x(Kenichi,Wed)
 + x(Kohei,Wed) + x(Masamichi,Wed) + x(Mayuko,Wed) + x(Shota,Wed)
 + x(Syori,Wed) + x(Takuya,Wed) + x(Tomoya,Wed) >= 1
PGM_shift_commit_Fri: x(Kenichi,Fri) + x(Shota,Fri) + x(Takuya,Fri) >= 1
PGM_shift_commit_Mon: x(Kenichi,Mon) + x(Shota,Mon) + x(Takuya,Mon) >= 1
PGM_shift_commit_Sat: x(Kenichi,Sat) + x(Shota,Sat) + x(Takuya,Sat) >= 1
PGM_shift_commit_Sun: x(Kenichi,Sun) + x(Shota,Sun) + x(Takuya,Sun) >= 1
PGM_shift_commit_Thu: x(Kenichi,Thu) + x(Shota,Thu) + x(Takuya,Thu) >= 1
PGM_shift_commit_Tue: x(Kenichi,Tue) + x(Shota,Tue) + x(Takuya,Tue) >= 1
PGM_shift_commit_Wed: x(Kenichi,Wed) + x(Shota,Wed) + x(Takuya,Wed) >= 1
Shift_(AtsushiFri): x(Atsushi,Fri) <= 1
Shift_(AtsushiMon): x(Atsushi,Mon) <= 1
Shift_(AtsushiSat): x(Atsushi,Sat) <= 0
Shift_(AtsushiSun): x(Atsushi,Sun) <= 1
Shift_(AtsushiThu): x(Atsushi,Thu) <= 0
Shift_(AtsushiTue): x(Atsushi,Tue) <= 0
Shift_(AtsushiWed): x(Atsushi,Wed) <= 1
Shift_(AyakaFri): x(Ayaka,Fri) <= 1
Shift_(AyakaMon): x(Ayaka,Mon) <= 1
Shift_(AyakaSat): x(Ayaka,Sat) <= 1
Shift_(AyakaSun): x(Ayaka,Sun) <= 0
Shift_(AyakaThu): x(Ayaka,Thu) <= 1
Shift_(AyakaTue): x(Ayaka,Tue) <= 1
Shift_(AyakaWed): x(Ayaka,Wed) <= 1
Shift_(HiroshiFri): x(Hiroshi,Fri) <= 1
Shift_(HiroshiMon): x(Hiroshi,Mon) <= 1
Shift_(HiroshiSat): x(Hiroshi,Sat) <= 1
Shift_(HiroshiSun): x(Hiroshi,Sun) <= 1
Shift_(HiroshiThu): x(Hiroshi,Thu) <= 1
Shift_(HiroshiTue): x(Hiroshi,Tue) <= 1
Shift_(HiroshiWed): x(Hiroshi,Wed) <= 1
Shift_(KenichiFri): x(Kenichi,Fri) <= 0
Shift_(KenichiMon): x(Kenichi,Mon) <= 1
Shift_(KenichiSat): x(Kenichi,Sat) <= 0
Shift_(KenichiSun): x(Kenichi,Sun) <= 0
Shift_(KenichiThu): x(Kenichi,Thu) <= 1
Shift_(KenichiTue): x(Kenichi,Tue) <= 1
Shift_(KenichiWed): x(Kenichi,Wed) <= 1
Shift_(KoheiFri): x(Kohei,Fri) <= 0
Shift_(KoheiMon): x(Kohei,Mon) <= 0
Shift_(KoheiSat): x(Kohei,Sat) <= 0
Shift_(KoheiSun): x(Kohei,Sun) <= 0
Shift_(KoheiThu): x(Kohei,Thu) <= 1
Shift_(KoheiTue): x(Kohei,Tue) <= 1
Shift_(KoheiWed): x(Kohei,Wed) <= 0
Shift_(MasamichiFri): x(Masamichi,Fri) <= 0
Shift_(MasamichiMon): x(Masamichi,Mon) <= 1
Shift_(MasamichiSat): x(Masamichi,Sat) <= 0
Shift_(MasamichiSun): x(Masamichi,Sun) <= 1
Shift_(MasamichiThu): x(Masamichi,Thu) <= 0
Shift_(MasamichiTue): x(Masamichi,Tue) <= 1
Shift_(MasamichiWed): x(Masamichi,Wed) <= 1
Shift_(MayukoFri): x(Mayuko,Fri) <= 1
Shift_(MayukoMon): x(Mayuko,Mon) <= 1
Shift_(MayukoSat): x(Mayuko,Sat) <= 0
Shift_(MayukoSun): x(Mayuko,Sun) <= 0
Shift_(MayukoThu): x(Mayuko,Thu) <= 0
Shift_(MayukoTue): x(Mayuko,Tue) <= 0
Shift_(MayukoWed): x(Mayuko,Wed) <= 1
Shift_(ShotaFri): x(Shota,Fri) <= 0
Shift_(ShotaMon): x(Shota,Mon) <= 0
Shift_(ShotaSat): x(Shota,Sat) <= 1
Shift_(ShotaSun): x(Shota,Sun) <= 1
Shift_(ShotaThu): x(Shota,Thu) <= 0
Shift_(ShotaTue): x(Shota,Tue) <= 0
Shift_(ShotaWed): x(Shota,Wed) <= 0
Shift_(SyoriFri): x(Syori,Fri) <= 1
Shift_(SyoriMon): x(Syori,Mon) <= 0
Shift_(SyoriSat): x(Syori,Sat) <= 1
Shift_(SyoriSun): x(Syori,Sun) <= 1
Shift_(SyoriThu): x(Syori,Thu) <= 0
Shift_(SyoriTue): x(Syori,Tue) <= 0
Shift_(SyoriWed): x(Syori,Wed) <= 0
Shift_(TakuyaFri): x(Takuya,Fri) <= 1
Shift_(TakuyaMon): x(Takuya,Mon) <= 0
Shift_(TakuyaSat): x(Takuya,Sat) <= 0
Shift_(TakuyaSun): x(Takuya,Sun) <= 1
Shift_(TakuyaThu): x(Takuya,Thu) <= 1
Shift_(TakuyaTue): x(Takuya,Tue) <= 0
Shift_(TakuyaWed): x(Takuya,Wed) <= 1
Shift_(TomoyaFri): x(Tomoya,Fri) <= 0
Shift_(TomoyaMon): x(Tomoya,Mon) <= 0
Shift_(TomoyaSat): x(Tomoya,Sat) <= 1
Shift_(TomoyaSun): x(Tomoya,Sun) <= 1
Shift_(TomoyaThu): x(Tomoya,Thu) <= 1
Shift_(TomoyaTue): x(Tomoya,Tue) <= 1
Shift_(TomoyaWed): x(Tomoya,Wed) <= 1
UB_Staff_Satisfy_Atsushi: - u + x(Atsushi,Fri) + x(Atsushi,Mon)
 + x(Atsushi,Sat) + x(Atsushi,Sun) + x(Atsushi,Thu) + x(Atsushi,Tue)
 + x(Atsushi,Wed) <= 0
UB_Staff_Satisfy_Ayaka: - u + x(Ayaka,Fri) + x(Ayaka,Mon) + x(Ayaka,Sat)
 + x(Ayaka,Sun) + x(Ayaka,Thu) + x(Ayaka,Tue) + x(Ayaka,Wed) <= 0
UB_Staff_Satisfy_Hiroshi: - u + x(Hiroshi,Fri) + x(Hiroshi,Mon)
 + x(Hiroshi,Sat) + x(Hiroshi,Sun) + x(Hiroshi,Thu) + x(Hiroshi,Tue)
 + x(Hiroshi,Wed) <= 0
UB_Staff_Satisfy_Kenichi: - u + x(Kenichi,Fri) + x(Kenichi,Mon)
 + x(Kenichi,Sat) + x(Kenichi,Sun) + x(Kenichi,Thu) + x(Kenichi,Tue)
 + x(Kenichi,Wed) <= 0
UB_Staff_Satisfy_Kohei: - u + x(Kohei,Fri) + x(Kohei,Mon) + x(Kohei,Sat)
 + x(Kohei,Sun) + x(Kohei,Thu) + x(Kohei,Tue) + x(Kohei,Wed) <= 0
UB_Staff_Satisfy_Masamichi: - u + x(Masamichi,Fri) + x(Masamichi,Mon)
 + x(Masamichi,Sat) + x(Masamichi,Sun) + x(Masamichi,Thu) + x(Masamichi,Tue)
 + x(Masamichi,Wed) <= 0
UB_Staff_Satisfy_Mayuko: - u + x(Mayuko,Fri) + x(Mayuko,Mon) + x(Mayuko,Sat)
 + x(Mayuko,Sun) + x(Mayuko,Thu) + x(Mayuko,Tue) + x(Mayuko,Wed) <= 0
UB_Staff_Satisfy_Shota: - u + x(Shota,Fri) + x(Shota,Mon) + x(Shota,Sat)
 + x(Shota,Sun) + x(Shota,Thu) + x(Shota,Tue) + x(Shota,Wed) <= 0
UB_Staff_Satisfy_Syori: - u + x(Syori,Fri) + x(Syori,Mon) + x(Syori,Sat)
 + x(Syori,Sun) + x(Syori,Thu) + x(Syori,Tue) + x(Syori,Wed) <= 0
UB_Staff_Satisfy_Takuya: - u + x(Takuya,Fri) + x(Takuya,Mon) + x(Takuya,Sat)
 + x(Takuya,Sun) + x(Takuya,Thu) + x(Takuya,Tue) + x(Takuya,Wed) <= 0
UB_Staff_Satisfy_Tomoya: - u + x(Tomoya,Fri) + x(Tomoya,Mon) + x(Tomoya,Sat)
 + x(Tomoya,Sun) + x(Tomoya,Thu) + x(Tomoya,Tue) + x(Tomoya,Wed) <= 0
UB_shift_Fri: x(Atsushi,Fri) + x(Ayaka,Fri) + x(Hiroshi,Fri) + x(Kenichi,Fri)
 + x(Kohei,Fri) + x(Masamichi,Fri) + x(Mayuko,Fri) + x(Shota,Fri)
 + x(Syori,Fri) + x(Takuya,Fri) + x(Tomoya,Fri) <= 4
UB_shift_Mon: x(Atsushi,Mon) + x(Ayaka,Mon) + x(Hiroshi,Mon) + x(Kenichi,Mon)
 + x(Kohei,Mon) + x(Masamichi,Mon) + x(Mayuko,Mon) + x(Shota,Mon)
 + x(Syori,Mon) + x(Takuya,Mon) + x(Tomoya,Mon) <= 4
UB_shift_Sat: x(Atsushi,Sat) + x(Ayaka,Sat) + x(Hiroshi,Sat) + x(Kenichi,Sat)
 + x(Kohei,Sat) + x(Masamichi,Sat) + x(Mayuko,Sat) + x(Shota,Sat)
 + x(Syori,Sat) + x(Takuya,Sat) + x(Tomoya,Sat) <= 4
UB_shift_Sun: x(Atsushi,Sun) + x(Ayaka,Sun) + x(Hiroshi,Sun) + x(Kenichi,Sun)
 + x(Kohei,Sun) + x(Masamichi,Sun) + x(Mayuko,Sun) + x(Shota,Sun)
 + x(Syori,Sun) + x(Takuya,Sun) + x(Tomoya,Sun) <= 4
UB_shift_Thu: x(Atsushi,Thu) + x(Ayaka,Thu) + x(Hiroshi,Thu) + x(Kenichi,Thu)
 + x(Kohei,Thu) + x(Masamichi,Thu) + x(Mayuko,Thu) + x(Shota,Thu)
 + x(Syori,Thu) + x(Takuya,Thu) + x(Tomoya,Thu) <= 4
UB_shift_Tue: x(Atsushi,Tue) + x(Ayaka,Tue) + x(Hiroshi,Tue) + x(Kenichi,Tue)
 + x(Kohei,Tue) + x(Masamichi,Tue) + x(Mayuko,Tue) + x(Shota,Tue)
 + x(Syori,Tue) + x(Takuya,Tue) + x(Tomoya,Tue) <= 4
UB_shift_Wed: x(Atsushi,Wed) + x(Ayaka,Wed) + x(Hiroshi,Wed) + x(Kenichi,Wed)
 + x(Kohei,Wed) + x(Masamichi,Wed) + x(Mayuko,Wed) + x(Shota,Wed)
 + x(Syori,Wed) + x(Takuya,Wed) + x(Tomoya,Wed) <= 4
Binaries
x(Atsushi,Fri)
x(Atsushi,Mon)
x(Atsushi,Sat)
x(Atsushi,Sun)
x(Atsushi,Thu)
x(Atsushi,Tue)
x(Atsushi,Wed)
x(Ayaka,Fri)
x(Ayaka,Mon)
x(Ayaka,Sat)
x(Ayaka,Sun)
x(Ayaka,Thu)
x(Ayaka,Tue)
x(Ayaka,Wed)
x(Hiroshi,Fri)
x(Hiroshi,Mon)
x(Hiroshi,Sat)
x(Hiroshi,Sun)
x(Hiroshi,Thu)
x(Hiroshi,Tue)
x(Hiroshi,Wed)
x(Kenichi,Fri)
x(Kenichi,Mon)
x(Kenichi,Sat)
x(Kenichi,Sun)
x(Kenichi,Thu)
x(Kenichi,Tue)
x(Kenichi,Wed)
x(Kohei,Fri)
x(Kohei,Mon)
x(Kohei,Sat)
x(Kohei,Sun)
x(Kohei,Thu)
x(Kohei,Tue)
x(Kohei,Wed)
x(Masamichi,Fri)
x(Masamichi,Mon)
x(Masamichi,Sat)
x(Masamichi,Sun)
x(Masamichi,Thu)
x(Masamichi,Tue)
x(Masamichi,Wed)
x(Mayuko,Fri)
x(Mayuko,Mon)
x(Mayuko,Sat)
x(Mayuko,Sun)
x(Mayuko,Thu)
x(Mayuko,Tue)
x(Mayuko,Wed)
x(Shota,Fri)
x(Shota,Mon)
x(Shota,Sat)
x(Shota,Sun)
x(Shota,Thu)
x(Shota,Tue)
x(Shota,Wed)
x(Syori,Fri)
x(Syori,Mon)
x(Syori,Sat)
x(Syori,Sun)
x(Syori,Thu)
x(Syori,Tue)
x(Syori,Wed)
x(Takuya,Fri)
x(Takuya,Mon)
x(Takuya,Sat)
x(Takuya,Sun)
x(Takuya,Thu)
x(Takuya,Tue)
x(Takuya,Wed)
x(Tomoya,Fri)
x(Tomoya,Mon)
x(Tomoya,Sat)
x(Tomoya,Sun)
x(Tomoya,Thu)
x(Tomoya,Tue)
x(Tomoya,Wed)
End
