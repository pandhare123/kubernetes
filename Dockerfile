FROM mcr.microsoft.com/windows/servercore/iis

SHELL ["powershell"]

RUN Install-WindowsFeature NET-Framework-45-ASPNET ; \
    Install-WindowsFeature Web-Asp-Net45
WORKDIR //c/inetpub/wwwroot
COPY Default.aspx Default.aspx
COPY web.config web.config
    
EXPOSE 80
