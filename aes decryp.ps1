# Define the key, IV, and paths for the encrypted file and the output decrypted file
$Key = "AB91HylYqxHvpNCz11AKMytMZ2kzvrm9"  # 256-bit key (32 characters)
$Iv = "VpbwNCOCakbzmpdr"                 # 16 characters for AES IV
$EncryptedFilePath = "C:\Users\vasan\Downloads\encryptedfile.enc"  # Path to the encrypted file
$DecryptedFilePath = "C:\Users\vasan\Downloads\decryptedfile.mp4"  # Path to save the decrypted file

# Read the encrypted bytes from the file
$EncryptedBytes = [System.IO.File]::ReadAllBytes($EncryptedFilePath)

# Create the AES object and set the key and IV
$Aes = [System.Security.Cryptography.Aes]::Create()
$Aes.Key = [Text.Encoding]::UTF8.GetBytes($Key)
$Aes.IV = [Text.Encoding]::UTF8.GetBytes($Iv)

# Create a decryptor
$Decryptor = $Aes.CreateDecryptor($Aes.Key, $Aes.IV)

# Decrypt the data
$DecryptedBytes = $Decryptor.TransformFinalBlock($EncryptedBytes, 0, $EncryptedBytes.Length)

# Write the decrypted bytes to the output file
[System.IO.File]::WriteAllBytes($DecryptedFilePath, $DecryptedBytes)

# Optional: Output a message when done
Write-Output "Decrypted file saved to $DecryptedFilePath"
