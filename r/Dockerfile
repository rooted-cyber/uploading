FROM anasty17/mltb:latest

WORKDIR /maruf

RUN apt install git -y
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot
COPY . .
RUN cp conf* token* m*l*
RUN cd m*l*;pip3 install --no-cache-dir -r requirements.txt
RUN cd m*l*;bash start.sh

