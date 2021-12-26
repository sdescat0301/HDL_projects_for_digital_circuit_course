@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.2.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Fri Jul 09 10:31:02 +0800 2021
REM SW Build 3118627 on Tue Feb  9 05:14:06 MST 2021
REM
REM Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto 2e5e47bd28634a0f8322a812bdba1bac --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot sim_tb_behav xil_defaultlib.sim_tb xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto 2e5e47bd28634a0f8322a812bdba1bac --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot sim_tb_behav xil_defaultlib.sim_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0