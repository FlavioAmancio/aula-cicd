FROM python:3.12.1-bullseye
WORKDIR /app/
ADD requirements.txt .
ADD wrapped .
RUN pip install -r requirements.txt


CMD  [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]
EXPOSE 8000