@echo off
setlocal enabledelayedexpansion

:start
cls
echo Netherlands Trading Shop Calculator
echo ====================================

set /p code=Enter the product code (1-7): 

if "%code%"=="1" (
    set "product=1 Stack of Brick Blocks"
    set "price=250"
    set "quantity_factor=64"  REM Set the quantity factor for stacks
) else if "%code%"=="2" (
    set "product=10 Tomatoes, Peaches, Pomegranates"
    set "price=50"
    set "quantity_factor=1"   REM No need to adjust quantity for these items
) else if "%code%"=="3" (
    set "product=Full Iron Armor"
    set "price=100"
    set "quantity_factor=1"   REM No need to adjust quantity for armor
) else if "%code%"=="4" (
    set "product=1 Stack of Bread"
    set "price=100"
    set "quantity_factor=64"  REM Set the quantity factor for stacks
) else if "%code%"=="5" (
    set "product=16 Soul Sand"
    set "price=100"
    set "quantity_factor=16"  REM Set the quantity factor for soul sand
) else if "%code%"=="6" (
    set "product=1 Stack of Oak Planks"
    set "price=100"
    set "quantity_factor=64"  REM Set the quantity factor for stacks
) else if "%code%"=="7" (
    set "product=2 Llamas"
    set "price=500"
    set "quantity_factor=2"   REM Set the quantity factor for llamas
) else (
    echo Invalid code. Please try again.
    pause
    goto start
)

echo.
echo Product: %product%
echo Price: $%price%

set /p quantity=Enter the quantity: 

REM Adjust total price based on quantity and quantity_factor
if %quantity% equ 1 (
    set /a total=%price% / %quantity_factor%
) else (
    set /a total=%price% * %quantity% / %quantity_factor%
)

echo.
echo Total price: $%total%

echo.
set /p choice=Do you want to calculate another product? (Y/N): 
if /i "%choice%"=="Y" goto start

echo Thank you for using the Netherlands Trading Shop Calculator!
pause
