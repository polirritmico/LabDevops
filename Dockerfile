FROM python:3.13-slim AS base

LABEL maintainer="Eduardo Bray <ed.bray@duocuc.cl>"

WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
RUN useradd -ms /bin/bash devops \
    && install -d -o devops -g devops /app
USER devops
COPY --chown=devops:devops requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .


# -----------------------------------------------------------------------------
FROM base AS develop

ENV PATH="$HOME/.local/bin:$PATH"
RUN pip install --no-cache-dir -r requirements-dev.txt
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


# -----------------------------------------------------------------------------
FROM base AS production

ENV DJANGO_SETTINGS_MODULE=devopsdemo.settings
ENV ALLOWED_HOSTS=*
ENV PATH="$HOME/.local/bin:$PATH"
EXPOSE 8000
CMD ["gunicorn", "-b", "0.0.0.0:8000", "devopsdemo.wsgi:application", "--workers", "2"]
