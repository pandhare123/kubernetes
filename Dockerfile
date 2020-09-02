FROM mcr.microsoft.com/windows/servercore/iis

SHELL ["powershell"]

WORKDIR /inetpub/wwwroot
COPY content/ .

EXPOSE 80