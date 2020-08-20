FROM mcr.microsoft.com/windows/servercore/iis

SHELL ["powershell"]

RUN Install-WindowsFeature NET-Framework-45-ASPNET ; \
    Install-WindowsFeature Web-Asp-Net45; \
Start-Sleep -s 60; \
Copy-Item -Path "$(agent.builddirectory)" -Destination "C:\inetpub\wwwroot"; \
Get-ChildItem -Path "C:\inetpub\wwwroot";\
Start-Sleep -s 30; \
Invoke-Webrequest http://localhost:80; \
Start-Sleep -s 60; \
Invoke-Webrequest http://localhost:80; \
Start-Sleep -s 60

EXPOSE 80