***********ENCRIPTAR CONTRASEÑA**************

cls

Write-Host Escribe la contraseña:

$password = Read-Host -AsSecureString
$Encrypted = ConvertFrom-SecureString -SecureString $password
$Key = (3,4,2,3,5,4,2,2,3,3,2,2,4,3,3,23,1,3,2,7,6,5,3,4)
Set-Content "C:\Users\javierf\Desktop\password.pass" $Encrypted -Key $Key

Write-Host Contraseña creada!


**********DESENCRIPTAR CONTRASEÑA******************


$Key = (3,4,2,3,5,4,2,2,3,3,2,2,4,3,3,23,1,3,2,7,6,5,3,4)
$Password = get-content "C:\Users\javierf\Desktop\password.pass" | ConvertTo-SecureString -Key $Key
$Usuario = 'javi'
$Credenciales = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Usuario,$Password    
$Credenciales.GetNetworkCredential().Password











