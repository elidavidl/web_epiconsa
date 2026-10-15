@echo off
echo =========================================
echo   EPICONSA - Push a GitHub + Deploy Vercel
echo =========================================
echo.

cd /d D:\PROYECTOS

echo [1/3] Subiendo archivos a GitHub...
git push -u origin main
if %errorlevel% neq 0 (
    echo.
    echo ERROR: No se pudo hacer push. Revisa tus credenciales de GitHub.
    pause
    exit /b 1
)

echo.
echo [2/3] Push exitoso! Repositorio actualizado en GitHub.
echo.
echo [3/3] Abriendo Vercel para importar el proyecto...
start https://vercel.com/new/import?s=https://github.com/elidavidl/web_epiconsa

echo.
echo =========================================
echo   Listo! Se abrio Vercel en tu navegador.
echo   Sigue los pasos para publicar tu web.
echo =========================================
echo.
pause
