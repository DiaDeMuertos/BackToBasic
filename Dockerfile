FROM python:3.5-alpine

ENV FLASK_APP main.py;
ENV FLASK_ENV development
ENV FLASK_PORT 3000

WORKDIR /app
COPY /src /app

RUN apk add --update
RUN apk add curl

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]
CMD ["main.py"]