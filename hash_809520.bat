@echo off
chcp 65001 >nul
echo 密码: 809520
echo ==================================================

echo MD5:
powershell -Command "[System.BitConverter]::ToString((New-Object Security.Cryptography.MD5CryptoServiceProvider).ComputeHash([Text.Encoding]::UTF8.GetBytes('809520'))).Replace('-','').ToLower()"

echo SHA-1:
powershell -Command "[System.BitConverter]::ToString((New-Object Security.Cryptography.SHA1CryptoServiceProvider).ComputeHash([Text.Encoding]::UTF8.GetBytes('809520'))).Replace('-','').ToLower()"

echo SHA-256:
powershell -Command "[System.BitConverter]::ToString((New-Object Security.Cryptography.SHA256CryptoServiceProvider).ComputeHash([Text.Encoding]::UTF8.GetBytes('809520'))).Replace('-','').ToLower()"

echo SHA-512:
powershell -Command "[System.BitConverter]::ToString((New-Object Security.Cryptography.SHA512CryptoServiceProvider).ComputeHash([Text.Encoding]::UTF8.GetBytes('809520'))).Replace('-','').ToLower()"

echo Base64:
powershell -Command "[Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes('809520'))"

pause
