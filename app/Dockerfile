#This file builds the python app in docker
FROM python:3

EXPOSE 8080

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

#This command would be for the bot
#CMD [ "python", "./emergency-bot.py" ]

#This command is for example app
CMD [ "python", "./hellothere.py", "-p 8080", "-d True" ]