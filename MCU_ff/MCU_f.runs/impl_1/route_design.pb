
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: d73bbd4b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:11 . Memory (MB): peak = 1810.703 ; gain = 32.6992default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: d73bbd4b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:11 . Memory (MB): peak = 1810.703 ; gain = 32.6992default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: d73bbd4b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:11 . Memory (MB): peak = 1816.738 ; gain = 38.7342default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: d73bbd4b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:11 . Memory (MB): peak = 1816.738 ; gain = 38.7342default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 152c2885b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 1825.785 ; gain = 47.7812default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=5.815  | TNS=0.000  | WHS=-0.153 | THS=-84.189|
2default:defaultZ35-416h px? 
}

Phase %s%s
101*constraints2
2.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
2.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 2.5.1 Update Timing | Checksum: 16b804842
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:15 ; elapsed = 00:00:13 . Memory (MB): peak = 1833.102 ; gain = 55.0982default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=5.815  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
P
;Phase 2.5 Update Timing for Bus Skew | Checksum: 115557a5e
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:15 ; elapsed = 00:00:13 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
I
4Phase 2 Router Initialization | Checksum: 1733f047d
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:15 ; elapsed = 00:00:13 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 1733f047d
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:15 ; elapsed = 00:00:13 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 1439ecf6c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:16 ; elapsed = 00:00:13 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=5.508  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1b1b3507f
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:18 ; elapsed = 00:00:15 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=5.508  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.2 Global Iteration 1 | Checksum: a98bd73b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:18 ; elapsed = 00:00:15 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
E
0Phase 4 Rip-up And Reroute | Checksum: a98bd73b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:18 ; elapsed = 00:00:15 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 5.1.1 Update Timing | Checksum: efa6ec43
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:18 ; elapsed = 00:00:15 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=5.587  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
B
-Phase 5.1 Delay CleanUp | Checksum: 46ecce93
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:18 ; elapsed = 00:00:15 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
L
7Phase 5.2 Clock Skew Optimization | Checksum: 46ecce93
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:18 ; elapsed = 00:00:15 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: 46ecce93
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:18 ; elapsed = 00:00:15 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 6.1.1 Update Timing | Checksum: bc0abba2
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:19 ; elapsed = 00:00:15 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=5.587  | TNS=0.000  | WHS=0.031  | THS=0.000  |
2default:defaultZ35-416h px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: d13b9ede
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:19 ; elapsed = 00:00:15 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: d13b9ede
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:19 ; elapsed = 00:00:15 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
A
,Phase 7 Route finalize | Checksum: ada66e61
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:19 ; elapsed = 00:00:15 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
H
3Phase 8 Verifying routed nets | Checksum: ada66e61
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:19 ; elapsed = 00:00:15 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 1282b325b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:19 ; elapsed = 00:00:16 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=5.587  | TNS=0.000  | WHS=0.031  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
G
2Phase 10 Post Router Timing | Checksum: 1282b325b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:19 ; elapsed = 00:00:16 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:19 ; elapsed = 00:00:16 . Memory (MB): peak = 1846.527 ; gain = 68.5232default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1112default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:222default:default2
00:00:172default:default2
1846.5272default:default2
68.5232default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2 
00:00:00.3462default:default2
1854.4532default:default2
7.9262default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2v
bE:/Xilinx_project/HDL_projects_for_digital_circuit_course/MCU_ff/MCU_f.runs/impl_1/mips_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2u
aExecuting : report_drc -file mips_drc_routed.rpt -pb mips_drc_routed.pb -rpx mips_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2h
Treport_drc -file mips_drc_routed.rpt -pb mips_drc_routed.pb -rpx mips_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
fE:/Xilinx_project/HDL_projects_for_digital_circuit_course/MCU_ff/MCU_f.runs/impl_1/mips_drc_routed.rptfE:/Xilinx_project/HDL_projects_for_digital_circuit_course/MCU_ff/MCU_f.runs/impl_1/mips_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file mips_methodology_drc_routed.rpt -pb mips_methodology_drc_routed.pb -rpx mips_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file mips_methodology_drc_routed.rpt -pb mips_methodology_drc_routed.pb -rpx mips_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
rE:/Xilinx_project/HDL_projects_for_digital_circuit_course/MCU_ff/MCU_f.runs/impl_1/mips_methodology_drc_routed.rptrE:/Xilinx_project/HDL_projects_for_digital_circuit_course/MCU_ff/MCU_f.runs/impl_1/mips_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
qExecuting : report_power -file mips_power_routed.rpt -pb mips_power_summary_routed.pb -rpx mips_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2x
dreport_power -file mips_power_routed.rpt -pb mips_power_summary_routed.pb -rpx mips_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1232default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2i
UExecuting : report_route_status -file mips_route_status.rpt -pb mips_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file mips_timing_summary_routed.rpt -pb mips_timing_summary_routed.pb -rpx mips_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px? 
}
%s4*runtcl2a
MExecuting : report_incremental_reuse -file mips_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
}
%s4*runtcl2a
MExecuting : report_clock_utilization -file mips_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file mips_bus_skew_routed.rpt -pb mips_bus_skew_routed.pb -rpx mips_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record