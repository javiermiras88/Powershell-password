***********ENCRIPTAR CONTRASEÑA**************

cls

Write-Host Escribe la contraseña:

$password = Read-Host -AsSecureString
$Key = (3,4,2,3,5,4,2,2,3,3,2,2,4,3,3,23,1,3,2,7,6,5,3,4)
$Encrypted = ConvertFrom-SecureString -SecureString $password -Key $Key
Set-Content "C:\Users\javierf\Desktop\password.pass" $Encrypted

Write-Host Contraseña creada!


**********DESENCRIPTAR CONTRASEÑA******************


$Key = (3,4,2,3,5,4,2,2,3,3,2,2,4,3,3,23,1,3,2,7,6,5,3,4)
$Password = get-content "C:\Users\javierf\Desktop\password.pass" | ConvertTo-SecureString -Key $Key
$User = '.'
$Credencials = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User,$Password    
$Credencials.GetNetworkCredential().Password









