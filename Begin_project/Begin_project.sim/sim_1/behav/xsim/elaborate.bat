@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.2.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Fri Apr 30 10:34:07 +0800 2021
REM SW Build 3118627 on Tue Feb  9 05:14:06 MST 2021
REM
REM Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto bab8ecf9e9ee46ff8a0153b784d55a6f --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot FullAdder_tb_behav xil_defaultlib.FullAdder_tb -log elaborate.log"
call xelab  -wto bab8ecf9e9ee46ff8a0153b784d55a6f --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot FullAdder_tb_behav xil_defaultlib.FullAdder_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
