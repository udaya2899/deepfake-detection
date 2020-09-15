FROM python:2.7

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install cmake
RUN pip install -r requirements.txt -vvv

COPY . .

CMD ["python", "./demo.py", "--input_dir=demo"]