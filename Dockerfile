FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# create a folder where app.py will write
RUN mkdir -p /app/data

CMD ["python", "app.py"]
