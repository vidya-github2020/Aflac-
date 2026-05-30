@echo off
REM Batch script to run Robot Framework tests using the virtual environment
REM Usage: run_accessibility_test.bat [test_file.robot]
REM This script should be run from the PAVE_RobotFrameworkTests root directory

REM Get the directory where this script is located
set "SCRIPT_DIR=%~dp0"

REM Navigate to the parent directory (PAVE_RobotFrameworkTests root)
cd /d "%SCRIPT_DIR%.."

REM Check if virtual environment exists
if not exist ".venv\Scripts\robot.exe" (
    echo ERROR: Virtual environment not found at .venv\Scripts\robot.exe
    echo Please ensure the virtual environment is set up in the project root directory.
    echo You may need to run: python -m venv .venv
    echo Then activate it and install robot framework: pip install robotframework
    pause
    exit /b 1
)

if "%1"=="" (
    echo Running all accessibility tests...
    .venv\Scripts\robot.exe Accessibility\TestCases\*.robot
) else (
    echo Running test: %1
    .venv\Scripts\robot.exe Accessibility\TestCases\%1
)

echo.
echo Test execution completed. Check the generated reports above.
pause
