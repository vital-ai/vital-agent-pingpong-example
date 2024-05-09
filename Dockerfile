FROM python:3.11-slim

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 6000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "6000"]
