FROM richxsl/rhel7

RUN apt-get update -y && apt-get install -y python3-pip python-dev curl unixodbc-dev unixodbc
#RUN mkdir /etc/yum.repos.d
# Add SQL Server ODBC Driver 13 for Ubuntu 18.04
# adding custom MS repository
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list


# install SQL Server drivers
RUN apt-get update
RUN ACCEPT_EULA=Y apt-get install msodbcsql=13.0.1.0-1

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["/usr/src/app/app.py"]
ENTRYPOINT ["python3"]