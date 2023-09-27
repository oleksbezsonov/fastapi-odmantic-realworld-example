FROM python:3.8-slim-buster

WORKDIR /app

COPY . .

RUN python -m pip install --upgrade pip
RUN pip install fastapi uvicorn odmantic[motor]

EXPOSE 8000
CMD [ "uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000" ]