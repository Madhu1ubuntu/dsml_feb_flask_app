FROM python:3.8-slim-buster

WORKDIR /flask-loan-app


COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /flask-loan-app/

CMD ["python", "-m", "flask","--app", "app.py","run", "--host=0.0.0.0","--port=8000"]