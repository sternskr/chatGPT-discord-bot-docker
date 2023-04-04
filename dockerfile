FROM python:3

# Install git and clone the repository
RUN apt-get update && apt-get install -y git
WORKDIR /app

RUN git clone https://github.com/Zero6992/chatGPT-discord-bot.git .

RUN ls -l && echo "Finished listing files."

COPY . .

RUN pip install -r requirements.txt

CMD ["python", "main.py"]
