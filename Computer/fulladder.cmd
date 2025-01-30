@echo off

:fulladder
::A,B,Cin,S,Cout file
set A=%1
set B=%2
set Cin=%3
set S=%4
set Cout=%5

::a*/b*/c + /a*b*/c + /a*/b*c + a*b*c -> S
::a*b*/c + a*/b*c + /a*b*c + a*b*c === a*b + a*c + b*c -> Cout
if exist "%A%" (
    if exist "%B%" (
        if exist "%Cin%" (
            :: Case a*b*c
            echo a*b*c
            echo. > "%S%"
            echo. > "%Cout%"
        ) else (
            :: Case a*b*/c
            echo a*b*/c
            echo. > "%Cout%"
        )
    ) else (
        if exist "%Cin%" (
            :: Case a*/b*c
            echo a*/b*c
            echo. > "%Cout%"
        ) else (
            :: Case a*/b*/c
            echo a*/b*/c
            echo. > "%S%"
        )
    )
) else (
    if exist "%B%" (
        if exist "%Cin%" (
            :: Case /a*b*c
            echo /a*b*c
            echo. > "%Cout%"
        ) else (
            :: Case /a*b*/c
            echo /a*b*/c
            echo. > "%S%"
        )
    ) else (
        if exist "%Cin%" (
            :: Case /a*/b*c
            echo /a*/b*c
            echo. > "%S%"
        ) else (
            :: Case /a*/b*/c
            echo /a*/b*/c
        )
    )
)