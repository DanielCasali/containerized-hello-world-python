FROM python:3.8-slim-buster

WORKDIR /deployment

COPY app.py /deployment
COPY templates/* /deployment/templates/
COPY requirements.txt /deployment

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]