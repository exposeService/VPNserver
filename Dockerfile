FROM python:3.9 

WORKDIR /app

COPY requirements.txt .

RUN python3 -m pip install -r /app/requirements.txt --no-cache-dir

COPY app/ /app

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8080"]
