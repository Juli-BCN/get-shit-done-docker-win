# Full List here:
# mcr.microsoft.com/windows
# IoT: docker pull mcr.microsoft.com/windows/iotcore
# Nano: docker pull mcr.microsoft.com/windows/nanoserver:1903
# Nano IIS: docker pull nanoserver/iis
# Nano for Windows 2019: docker pull mcr.microsoft.com/windows/nanoserver:1809
# Core: docker pull mcr.microsoft.com/windows/servercore:ltsc2019
# Core IIS: docker pull mcr.microsoft.com/windows/servercore/iis
# Inside: docker pull mcr.microsoft.com/windows/servercore/insider:10.0.20303.1
# Basic IIS: docker pull microsoft/iis

FROM mcr.microsoft.com/windows/servercore/iis
LABEL maintainer="JuliBCN <julibcn@gmail.com>"

# Uses dism.exe to install the IIS role.
#RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart

# Install IIS and copy the files
RUN powershell -NoProfile -Command Remove-Item -Recurse C:\inetpub\wwwroot\*
WORKDIR /inetpub/wwwroot
COPY src/ .

# Old School
#RUN del c:\inetpub\wwwroot\iisstart.*
#COPY "src" 'C:\inetpub\wwwroot\'

# Sets a command or process that will run each time a container is run from the new image.
CMD [ "cmd" ]

# Build from powershell as
# docker build -t get-sh-it-done-win .

# Run it as
# docker run -it -d -p 80:80 get-sh-it-done-win