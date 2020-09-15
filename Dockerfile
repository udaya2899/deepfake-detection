FROM PYTHON:2.7-alpine

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

CMD ["python", "demo.py", "--input-dir=demo"]