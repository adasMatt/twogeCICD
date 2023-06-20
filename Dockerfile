FROM python:alpine

# borrowed from w03Twoge chandraScript.sh
#'SQLALCHEMY_DATABASE_URI = "postgresql://postgres:Alpha2023@db1.chzveui56egk.us-east-1.rds.amazonaws.com/calc"' > .env

#ENV SQLALCHEMY_DATABASE_URI='postgresql://mattyyy:Happy123#@localhost:5432/twoge_db'
# do I not need to specify the port here after localhost? Chandra did not in the .env from w03
#ENV SQLALCHEMY_DATABASE_URI='postgresql://mattyyy:Happy123#@localhost/twoge_db'

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
EXPOSE 8000
CMD python app.py