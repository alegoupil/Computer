::@echo off
setlocal enabledelayedexpansion

:adder8
:: A, B folder
set A=%1
set B=%2
set S=%3

del /q "!S!\*"
del /q "Cout\*"

call fulladder !A!/0 !B!/0 "" !S!/0 Cout/0
call fulladder !A!/1 !B!/1 Cout/0 !S!/1 Cout/1
call fulladder !A!/2 !B!/2 Cout/1 !S!/2 Cout/2
call fulladder !A!/3 !B!/3 Cout/2 !S!/3 Cout/3
call fulladder !A!/4 !B!/4 Cout/3 !S!/4 Cout/4
call fulladder !A!/5 !B!/5 Cout/4 !S!/5 Cout/5
call fulladder !A!/6 !B!/6 Cout/5 !S!/6 Cout/6
call fulladder !A!/7 !B!/7 Cout/6 !S!/7 Cout/7

exit /b