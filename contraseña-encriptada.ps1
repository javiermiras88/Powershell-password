cls

Write-Host Escribe la contrase�a:

$Secure = Read-Host -AsSecureString

$Encrypted = ConvertFrom-SecureString -SecureString $Secure

Set-Content "C:\Users\Administrador\Desktop\contrase�a.pass" $Encrypted

Write-Host Contrase�a creada!


$Password = Get-Content "C:\Users\Administrador\Desktop\contrase�a.pass" | ConvertTo-SecureString
        
$Usuario = 'javi'

$Credenciales = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Usuario,$Password
        
$pass = $Credenciales.GetNetworkCredential().Password


     