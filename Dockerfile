FROM python:3.8-slim-buster
WORKDIR /app
COPY ./src /app
RUN pip install fastapi uvicorn 'pydantic<2.0' 'odmantic<2.0' python-jose passlib
EXPOSE 8000
ENV PYTHONPATH=/app
CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]