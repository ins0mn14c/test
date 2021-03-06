FROM python:3.6-alpine
RUN mkdir /app
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app

EXPOSE 5001
CMD [ "python", "./app.py" ]
