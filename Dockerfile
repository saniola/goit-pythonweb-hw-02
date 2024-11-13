FROM python:3.10

ENV APP_HOME /app

WORKDIR $APP_HOME
COPY . .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
