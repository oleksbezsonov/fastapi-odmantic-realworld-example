FROM python:3.10
WORKDIR /app
COPY . /app
RUN pip install poetry
RUN poetry config virtualenvs.in-project true --local
RUN poetry install
COPY entrypoint.sh /app/
RUN chmod +x /app/entrypoint.sh
EXPOSE 8000
CMD ["/app/entrypoint.sh"]