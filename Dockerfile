FROM python:3.8.10-slim
ADD . /app
WORKDIR /app
RUN apt-get update \
    && pip install -r requirements.txt

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]