FROM python:2

WORKDIR /usr/src/app

COPY . .

VOLUME /s3store 

CMD ["python", "mock_s3/main.py", "--hostname", "0.0.0.0", "--root", "/s3store"]

EXPOSE 10001
