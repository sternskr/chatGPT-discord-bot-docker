FROM python:3.9.10-alpine

# Install git and clone the repository
RUN apk add --no-cache git
WORKDIR /app
RUN git clone 
FROM python:3.9.10-alpine

RUN apk add --no-cache git

WORKDIR /app

RUN git clone https://github.com/Zero6992/chatGPT-discord-bot.git .

COPY requirements.txt .
COPY src/ ./src/

RUN pip install -r requirements.txt

CMD ["python", "main.py"]