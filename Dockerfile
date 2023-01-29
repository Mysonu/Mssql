FROM python:3.8
WORKDIR /app
COPY . .
RUN pip3 install pyodbc

RUN apt-get update\
    && apt-get install unixodbc-dev  -y\
    && apt-get install gcc

RUN apt-get update
RUN apt-get install -y unixodbc unixodbc-dev
RUN apt-get install -y tdsodbc unixodbc-dev
RUN apt install unixodbc -y
RUN apt-get clean -y

CMD ["python3","test.py"]
                             