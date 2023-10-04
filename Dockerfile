FROM python:3.10
WORKDIR /app
COPY . .
RUN pip install --upgrade pip
RUN pip install poetry
RUN poetry config virtualenvs.create false
COPY ./pyproject.toml ./pyproject.toml
RUN poetry install --no-dev
EXPOSE 8000
CMD ["uvicorn", "src.api:app", "--host", "0.0.0.0", "--port", "8000"]