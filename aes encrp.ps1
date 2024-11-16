$Key = "AB91HylYqxHvpNCz11AKMytMZ2kzvrm9" # 256-bit key (32 characters)
$Iv = "VpbwNCOCakbzmpdr" # 16 characters for AES IV
$File = "D:\coding\Python-Cheat-Sheet.pdf" # Image or video file path

# Encrypt the file
$Bytes = [System.IO.File]::ReadAllBytes($File)
$Aes = [System.Security.Cryptography.Aes]::Create()
$Aes.Key = [Text.Encoding]::UTF8.GetBytes($Key)
$Aes.IV = [Text.Encoding]::UTF8.GetBytes($Iv)

$Encryptor = $Aes.CreateEncryptor($Aes.Key, $Aes.IV)
$Encrypted = $Encryptor.TransformFinalBlock($Bytes, 0, $Bytes.Length)

[System.IO.File]::WriteAllBytes("C:\Users\vasan\Downloads\encryptedfile.enc", $Encrypted)  # output path 
