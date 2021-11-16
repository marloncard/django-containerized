FROM python:3.9
# Ensure that Python output is sent to terminal (container log)
# without first being buffered allowing us to see output in realtime
ENV PYTHONUNBUFFERED=1
# Create working directory on container
WORKDIR /app

COPY requirements.txt /app

RUN pip install -r requirements.txt

COPY . /app
EXPOSE 8000