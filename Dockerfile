FROM mcr.microsoft.com/windows/servercore/iis

SHELL ["powershell"]

RUN Install-WindowsFeature NET-Framework-45-ASPNET ; \
    Install-WindowsFeature Web-Asp-Net45
WORKDIR C:\inetpub\wwwroot
COPY C:\inetpub\wwwroot\Default.aspx C:\inetpub\wwwroot\Default.aspx
COPY C:\inetpub\wwwroot\web.config C:\inetpub\wwwroot\web.config
    
EXPOSE 80
