FROM python:3.8.6-buster

EXPOSE 8080

COPY requirements.txt app/requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /app
WORKDIR /app

ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]
