FROM mcr.microsoft.com/windows/servercore/iis

RUN powershell -NoProfile -Command Remove-Item -Recurse C:\inetpub\wwwroot\*

RUN powershell New-Item -Path "c:\" -Name "pushedfiles" -ItemType "directory"

WORKDIR /inetpub/wwwroot

COPY c/pushedfiles/ .