FROM python:latest

WORKDIR /app

COPY . .

ENV FLASK_APP=main.py

RUN  pip3 install -r requirements.txt

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]