FROM python:3.8

WORKDIR /app

COPY . /app

RUN apt-get update && \
    pip install --upgrade pip && \
    pip3 install --no-cache-dir -r requirements.txt

EXPOSE 8000

ENTRYPOINT [ "python3","manage.py" ]

CMD [ "runserver","0.0.0.0:8000"]
