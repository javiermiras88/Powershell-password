cls

Write-Host Escribe la contraseña:

$Secure = Read-Host -AsSecureString

$Encrypted = ConvertFrom-SecureString -SecureString $Secure

Set-Content "C:\Users\Administrador\Desktop\contraseña.pass" $Encrypted

Write-Host Contraseña creada!


$Password = Get-Content "C:\Users\Administrador\Desktop\contraseña.pass" | ConvertTo-SecureString
        
$Usuario = 'javi'

$Credenciales = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Usuario,$Password
        
$pass = $Credenciales.GetNetworkCredential().Password


     