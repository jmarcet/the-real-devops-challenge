FROM python:3-alpine

EXPOSE 8080

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py ./
COPY src/*.py ./src/
COPY tests/*.py ./tests/

CMD [ "python", "app.py" ]
