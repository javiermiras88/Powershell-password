cls

Write-Host Escribe la contraseņa:

$Secure = Read-Host -AsSecureString

$Encrypted = ConvertFrom-SecureString -SecureString $Secure

Set-Content "C:\Users\Administrador\Desktop\contraseņa.pass" $Encrypted

Write-Host Contraseņa creada!


$Password = Get-Content "C:\Users\Administrador\Desktop\contraseņa.pass" | ConvertTo-SecureString
        
$Usuario = 'javi'

$Credenciales = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Usuario,$Password
        
$pass = $Credenciales.GetNetworkCredential().Password


     