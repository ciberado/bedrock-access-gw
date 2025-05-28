FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

COPY src/api /app/api
COPY src/requirements.txt /app

WORKDIR /app

RUN pip3 install -r requirements.txt -U --no-cache-dir

ENTRYPOINT ["uvicorn", "api.app:app", "--host", "0.0.0.0", "--port", "8000"]
