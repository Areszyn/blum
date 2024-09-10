FROM python:3.10.14-slim

RUN mkdir /blumbot

COPY bot.py /blumbot/
COPY config.json /blumbot/
COPY data.txt /blumbot/
COPY requirements.txt /blumbot/

WORKDIR /blumbot

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "/blumbot/bot.py"]
