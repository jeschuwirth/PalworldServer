FROM steamcmd/steamcmd

# Installing PalServer
RUN steamcmd +login anonymous +app_update 2394010 validate +quit

# Create user steam and move PalServer files to its dir
RUN useradd -ms /bin/bash steam
RUN mv ./Steam/steamapps/common/PalServer ../home/steam

# mv -v ./Steam/steamapps/common/PalServer ../home/steam
EXPOSE 8211

# USER steam
# WORKDIR /home/steam/PalServer
# ../../root/Steam/steamapps/common/PalServer/PalServer.sh
CMD [""]