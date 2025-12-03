@echo off
echo ========================================
echo DARKSTARtool - Build Script
echo ========================================
echo.

REM Check if we're in the correct directory
if not exist "DARKSTARtool.csproj" (
    echo ERROR: DARKSTARtool.csproj not found!
    echo.
    echo You must run this script from the DARKSTARtool folder.
    echo Current directory: %CD%
    echo.
    echo Please:
    echo 1. Navigate to the folder containing DARKSTARtool.csproj
    echo 2. Run BUILD.bat from that location
    echo.
    echo OR simply double-click BUILD.bat from File Explorer
    pause
    exit /b 1
)

REM Check if dotnet is installed
dotnet --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: .NET SDK is not installed!
    echo Please install .NET 8.0 SDK from: https://dotnet.microsoft.com/download
    pause
    exit /b 1
)

echo .NET SDK found. Building application...
echo.

REM Clean previous builds
if exist "bin" rmdir /s /q "bin"
if exist "obj" rmdir /s /q "obj"

echo Choose build type:
echo.
echo 1. Self-Contained (70-100 MB, no .NET required on target PC)
echo 2. Framework-Dependent (5-10 MB, requires .NET 8.0 on target PC)
echo.
set /p choice="Enter your choice (1 or 2): "

if "%choice%"=="1" goto selfcontained
if "%choice%"=="2" goto framework
echo Invalid choice. Defaulting to Self-Contained...

:selfcontained
echo.
echo Building Self-Contained executable...
dotnet publish -c Release -r win-x64 --self-contained true -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -p:EnableCompressionInSingleFile=true
goto done

:framework
echo.
echo Building Framework-Dependent executable...
dotnet publish -c Release -r win-x64 --self-contained false -p:PublishSingleFile=true
goto done

:done
if errorlevel 1 (
    echo.
    echo ========================================
    echo BUILD FAILED!
    echo ========================================
    pause
    exit /b 1
)

echo.
echo ========================================
echo BUILD SUCCESSFUL!
echo ========================================
echo.
echo Your executable is located at:
echo bin\Release\net8.0-windows\win-x64\publish\DARKSTARtool.exe
echo.
echo IMPORTANT: Don't forget to place NSudo.exe in the same folder!
echo Download NSudo from: https://github.com/M2Team/NSudo/releases
echo.
pause
