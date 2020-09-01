FROM mcr.microsoft.com/windows/servercore/iis

SHELL ["powershell"]

RUN Install-WindowsFeature NET-Framework-45-ASPNET ; \
    Install-WindowsFeature Web-Asp-Net45
    docker cp '//c/inetpub/wwwroot/default.aspx' ($Build.ContainerId):c/inetpub/wwwroot
    docker cp '//c/inetpub/wwwroot/web.config' ($Build.ContainerId):c/inetpub/wwwroot
    
EXPOSE 80
