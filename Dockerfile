# Full List here:
# mcr.microsoft.com/windows
# IoT: docker pull mcr.microsoft.com/windows/iotcore
# Nano: docker pull mcr.microsoft.com/windows/nanoserver
# Core: docker pull mcr.microsoft.com/windows/servercore

FROM mcr.microsoft.com/windows/servercore:ltsc2019
LABEL maintainer="JuliBCN <julibcn@gmail.com>"

# Uses dism.exe to install the IIS role.
RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart

# Install apache and write hello world message
RUN del c:\inetpub\wwwroot\iisstart.*
COPY "src" 'C:\inetpub\wwwroot\'

# Sets a command or process that will run each time a container is run from the new image.
CMD [ "cmd" ]

# Build from powershell as
# docker build -t get-shite-win .

# Run it as
# docker run -it -p 80:80 get-shite-win