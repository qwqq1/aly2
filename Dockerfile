FROM debian
WORKDIR /alys
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y sudo 
#&& apt-get install -y python3-pip && pip3 install --upgrade pip
RUN apt install -y curl wget sudo tar git
RUN mkdir myself
#RUN pip3 install aligo flask apscheduler flask_sqlalchemy
#RUN git clone https://github.moeyy.xyz/https://github.com/Biubush/alys
RUN wget https://github.moeyy.xyz/https://github.com/Biubush/alys/releases/download/v1.0.0/alys_v1.0.0_linux_amd64.tar.gz
RUN tar -xzvf alys_v1.0.0_linux_amd64.tar.gz -C myself
COPY *.sh .
RUN chmod a+x my.sh
#RUN adduser --disabled-password --gecos '' admin
#RUN adduser admin sudo
#RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
#RUN chown -R admin:admin /alys
#RUN chmod -R 777 /alys
#RUN chown -R admin:admin /home
#RUN chmod -R 777 /home
#USER admin
EXPOSE 8587
#RUN cd alys_v0.0.54_linux_amd64 && chmod +x alys && ./alys
CMD ["./my.sh"]
