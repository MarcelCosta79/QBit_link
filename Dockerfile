FROM linuxserver/qbittorrent:latest
RUN apt-get -y update
RUN ln -s -v /all/remote/uranocript/movies/*/* /downloads/ 2>/dev/null
RUN ln -s -v /all/remote/uranocript2/movies2/*/* /downloads/ 2>/dev/null
RUN apt-get -y upgrade && apt-get -y clean && apt-get -y --purge autoremove
