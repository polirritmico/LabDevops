# 🚀 LabDevOps

A sample project demostrating the usage of [git](https://git-scm.com/),
[Github](www.github.com), [Github Actions](https://github.com/features/actions)
and other best development practices.

## Demo project

The demo projects consists of a simple static page built with the following
technologies:

- Django
- pytest
- Docker
- Docker Compose

## Run & Build

1. Clone the repo

```bash
git clone git@github.com:polirritmico/LabDevops.git
```

2. use docker compose:

```bash
docker compose up -d web
```

3. Check the site: `http://localhost:8001`.

### Manual build & Run

```bash
docker build -t lab-devops:latest .
docker run lab-devops
```

### 🐳 Enter into the container env

```bash
docker run -it lab-devops bash
```

## Makefile

There is a convenient Makefile provided for common development tasks. Check
detailed instructions with:

```bash
make help
```

By default it executes **pytest** with **coverage**.

---

## Development workflow

The project adheres to the trunk-based workflow on the `develop` branch to
follow the most modern practices in CI/CD.

TODO: Add a list with the benefits of trunk--based over gitflow like encourage
frequent merges, reducing feedback delays, transparent code between developers,
detect early incompatibilities or design conflicts, etc.

## Project directory organization

The project has the following directories structure:

```
.
├── devopsdemo/
├── tests/
├── web/
├── CHANGELOG.md
├── CONTRIBUTING.md
├── docker-compose.yml
├── Dockerfile
├── LICENSE
├── Makefile
├── manage.py
├── README.md
├── requirements-dev.txt
└── requirements.txt
```
