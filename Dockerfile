FROM debian:sid
RUN apt update
RUN apt install wget neofetch -y
RUN wget https://github.com/tsl0922/ttyd/releases/download/1.7.7/ttyd.x86_64 -O /ttyd
RUN chmod +777 /ttyd
RUN echo /ttyd -W -p 7860 bash > /run.sh
RUN chmod +777 /run.sh
CMD "/run.sh"
