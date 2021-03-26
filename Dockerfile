FROM python:3.6-alpine

ADD ./requirements.txt /opt/webapp/

WORKDIR /opt/webapp

RUN pip install -r requirements.txt

ADD . /opt/webapp

EXPOSE 8080

ENTRYPOINT ["python", "app.py"]
