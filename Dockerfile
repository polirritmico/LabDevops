FROM python:3.13-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV DJANGO_SETTINGS_MODULE=devopsdemo.settings \
    ALLOWED_HOSTS=*

EXPOSE 8000

CMD ["gunicorn", "-b", "0.0.0.0:8000", "devopsdemo.wsgi:application", "--workers", "2"]
