FROM mcr.microsoft.com/windows/servercore/iis

SHELL ["powershell"]

RUN docker cp '//c/inetpub/wwwroot/default.aspx' ($Build.ContainerId):c/inetpub/wwwroot ; \
    docker cp '//c/inetpub/wwwroot/web.config' ($Build.ContainerId):c/inetpub/wwwroot
    
EXPOSE 80
