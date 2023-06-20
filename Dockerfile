FROM python:alpine

# borrowed from w03Twoge chandraScript.sh
#'SQLALCHEMY_DATABASE_URI = "postgresql://postgres:Alpha2023@db1.chzveui56egk.us-east-1.rds.amazonaws.com/calc"' > .env

# borrowed from todolistFlaskNginx0
RUN apk update && \
   apk add --no-cache build-base libffi-dev openssl-dev

COPY . /app

# twoge.service needs changes
#COPY twoge.service /etc/systemd/system/twoge.service

WORKDIR /app

# not sure if I tried changing from COPY . /app for a reason or if I was just trying it
#COPY . .
#RUN pip install python-dotenv
RUN pip install -r requirements.txt
EXPOSE 80
CMD python app.py
