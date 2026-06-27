$pwd = "809520"
$bytes = [Text.Encoding]::UTF8.GetBytes($pwd)

$results = @{
    "MD5"     = [System.BitConverter]::ToString(([Security.Cryptography.MD5]::HashData($bytes))).Replace('-','').ToLower()
    "SHA-1"   = [System.BitConverter]::ToString(([Security.Cryptography.SHA1]::HashData($bytes))).Replace('-','').ToLower()
    "SHA-256" = [System.BitConverter]::ToString(([Security.Cryptography.SHA256]::HashData($bytes))).Replace('-','').ToLower()
    "SHA-512" = [System.BitConverter]::ToString(([Security.Cryptography.SHA512]::HashData($bytes))).Replace('-','').ToLower()
    "Base64"  = [Convert]::ToBase64String($bytes)
}

Write-Host "密码: 809520"
Write-Host "=" * 55
foreach ($key in $results.Keys) {
    Write-Host ("{0,-8}: {1}" -f $key, $results[$key])
}

$output = @"
密码: 809520
=======================================================
MD5     : $($results['MD5'])
SHA-1   : $($results['SHA-1'])
SHA-256 : $($results['SHA-256'])
SHA-512 : $($results['SHA-512'])
Base64  : $($results['Base64'])
"@

$output | Out-File -FilePath "D:\class809\809520_hash.txt" -Encoding utf8
Write-Host "`n已保存到 D:\class809\809520_hash.txt"
