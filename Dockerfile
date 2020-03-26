FROM python:3.6.6-slim

WORKDIR /home/alex/covid-bot

COPY requirements.txt ./

# Install required libs
RUN pip install --upgrade pip -r requirements.txt; exit 0

RUN pip install gunicorn

COPY data data

# Копирование файлов проекта
COPY app.py faq.json reply_generator.py boot.sh  ./

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN chmod +x boot.sh

EXPOSE 5000
ENTRYPOINT ["./boot.sh"]
