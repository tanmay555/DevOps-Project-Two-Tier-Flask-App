FROM python:3.9

WORKDIR /app

COPY . .

RUN pip install flask mysql-connector-python
RUN apt-get update && apt-get install -y default-mysql-client

CMD ["python", "app.py"]
