FROM python:3.5-alpine

ENV FLASK_APP main.py;
ENV FLASK_ENV development
ENV FLASK_PORT 3000

WORKDIR /app
COPY /src /app

RUN pip install -r requirements.txt
ENTRYPOINT [ "python" ]
CMD ["main.py"]