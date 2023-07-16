from python:3.8-slim-buster

workdir /app

copy api/requirements.txt .

run pip install -U pip && pip install -r requirements.txt

copy api/ ./api

copy model/model.pkl ./model/model.pkl

copy initializer.sh .

run chmod +x inizializer.sh

expose 8000

entrypoint ["./inizializer.sh"]
