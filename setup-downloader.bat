@echo off
setlocal enabledelayedexpansion

echo Quale setup vuoi scaricare?
echo [1] React
echo [2] Vanilla
set /p choice=Inserisci il numero: 

if "%choice%"=="1" (
    set folder=reactSetup
)
if "%choice%"=="2" (
    set folder=vanillaSetup
)

if not defined folder (
    echo Scelta non valida.
    pause
    exit /b
)

:: Apertura finestra grafica per scegliere la cartella
for /f "delims=" %%i in ('powershell -command "Add-Type -AssemblyName System.Windows.Forms; $f = New-Object Windows.Forms.FolderBrowserDialog; if ($f.ShowDialog() -eq 'OK') {$f.SelectedPath}"') do set "target=%%i"

if not defined target (
    echo Nessuna cartella selezionata.
    pause
    exit /b
)

mkdir "%target%\%folder%"
cd /d "%target%\%folder%"

git clone --filter=blob:none --no-checkout https://github.com/bubbosvilup/Setups.git temp_clone
cd temp_clone
git sparse-checkout init --cone
git sparse-checkout set %folder%
git checkout

xcopy %folder% "..\" /E /I /Y
cd ..
rmdir /s /q temp_clone

echo ✓ Setup %folder% scaricato correttamente in: %target%\%folder%
pause
