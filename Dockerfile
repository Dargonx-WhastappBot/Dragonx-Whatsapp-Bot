FROM fusuf/whatsasena:latest

RUN git clone https://github.com/Janithsadanuwan/Dragonx-Wa-BotMain.git /root/Dragonx-Wa-BotMain
WORKDIR /root/Dragonx-Wa-BotMain/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "assets/module.js"]

