FROM python:3.10
WORKDIR /app
COPY . .
RUN pip install --upgrade pip
RUN pip install poetry
RUN poetry config virtualenvs.create false --local && poetry install
ENV PYTHONPATH=/app/src
CMD [ "python", "-m", "uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000" ]