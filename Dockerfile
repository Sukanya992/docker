FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install flask
WORKDIR /app
COPY app.py /app
EXPOSE 1000
CMD ["python3", "app.py"]


#ENTRYPOINT ["flask", "run", "--host=0.0.0.0", "--port=6000"]

#ENV FLASK_APP=app.py
