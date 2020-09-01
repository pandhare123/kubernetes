FROM mcr.microsoft.com/windows/servercore/iis

SHELL ["powershell"]

RUN $Build.ContainerId

    Copy-Item "C:\inetpub\wwwroot\*" -Destination "($Build.ContainerId):c\inetpub\wwwroot" -Force
    
EXPOSE 80
