FROM python:3.11
WORKDIR /app/
COPY requirement.txt .
RUN apt-get update                                     
RUN apt-get install gcc default-libmysqlclient-dev -y  
RUN pip install -r requirement.txt
COPY . .
EXPOSE 8000
CMD ["sh", "start_django.sh"]
##CMD ["python", "manage.py","runserver" ,"0.0.0.0:8000"]