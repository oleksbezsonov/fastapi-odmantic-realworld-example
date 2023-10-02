FROM python:3.10
WORKDIR /app
COPY . /app
RUN pip install poetry
RUN poetry install
EXPOSE 8000
CMD ["poetry", "run", "python", "src/api.py"]