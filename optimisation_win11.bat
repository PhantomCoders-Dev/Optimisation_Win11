@echo off
echo ====================================================
echo       Optimisation Extreme et Securisee de Windows 11
echo ====================================================
echo Attention ce script va effectuer les actions suivantes :
echo 1. Supprimer tous les fichiers dans le dossier "Telechargements".
echo 2. Vider completement la corbeille.
echo 3. Supprimer les fichiers temporaires du systeme.
echo 4. Nettoyer le cache des mises a jour Windows.
echo 5. Reparer les fichiers systeme corrompus.
echo 6. Desactiver certains services non critiques pour ameliorer la performance.
echo 7. Configurer les effets visuels pour privilegier la performance.
echo 8. Optimiser les disques pour une meilleure reactivite.
echo 9. Activer le mode performance maximale.
echo ====================================================
echo Veuillez verifier vos fichiers avant de continuer.
echo Tapez Y pour accepter et continuer l'optimisation.
echo Tapez N pour refuser et fermer le programme.
set /p choix="Votre choix (Y/N) : "

if /i "%choix%"=="Y" (
    echo Lancement de l'optimisation...
) else (
    echo Annulation de l'optimisation. Fermeture du programme.
    pause
    exit
)

:: Etape 1 : Nettoyage des fichiers temporaires
echo Suppression des fichiers temporaires...
del /q /f /s %TEMP%\* >nul 2>&1
del /q /f /s C:\Windows\Temp\* >nul 2>&1

:: Etape 2 : Nettoyage du dossier Download
echo Suppression des fichiers du dossier Download...
del /q /f /s %UserProfile%\Downloads\* >nul 2>&1

:: Etape 3 : Vider le cache de Windows Update
echo Nettoyage du cache Windows Update...
net stop wuauserv >nul 2>&1
net stop bits >nul 2>&1
rd /s /q C:\Windows\SoftwareDistribution\Download >nul 2>&1
net start wuauserv >nul 2>&1
net start bits >nul 2>&1

:: Etape 4 : Reparer les fichiers systeme
echo Verification et reparation des fichiers systeme...
sfc /scannow
dism /online /cleanup-image /restorehealth

:: Etape 5 : Desactiver les services non critiques
echo Optimisation des services...
sc config DiagTrack start=disabled
sc config dmwappushservice start=disabled

:: Etape 6 : Effets visuels pour la performance
echo Configuration des effets visuels pour la performance...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f

:: Etape 7 : Defragmentation (si disque HDD)
echo Optimisation du disque...
defrag C: /O

:: Etape 8 : Activer le mode performance maximale
echo Activation du mode performance maximale...
powercfg -setactive SCHEME_MIN

:: Etape 9 : Vider la corbeille
echo Vidage de la corbeille...
PowerShell -Command "& {Clear-RecycleBin -Force}"

echo ====================================================
echo Optimisation complete. Redemarrage recommande !
echo ====================================================
pause
