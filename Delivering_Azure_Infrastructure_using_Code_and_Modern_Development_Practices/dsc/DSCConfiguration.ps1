configuration WindowsAdminCenter
{
    Import-DscResource -ModuleName PSDscResources

    Node localhost
    {
        MsiPackage InstallWindowsAdminCenter
        {
            ProductId = '{7019BE31-3389-46FB-A077-B813D53C1266}'
            Path      = 'http://download.microsoft.com/download/1/0/5/1059800B-F375-451C-B37E-758FFC7C8C8B/WindowsAdminCenter1804.25.msi'
            Arguments = '/qn /norestart /l*v c:\windows\temp\windowsadmincenter.msiinstall.log SME_PORT=443 SSL_CERTIFICATE_OPTION=generate'
            Ensure    = 'Present'
        }
    }
}
