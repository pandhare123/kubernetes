FROM mcr.microsoft.com/windows/servercore:2004

RUN powershell -Command `
    Add-WindowsFeature Web-Server; 

EXPOSE 80