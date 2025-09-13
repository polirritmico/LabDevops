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

The project follows a trunk-based workflow on the `develop` branch, aligning
with modern CI/CD practices.

This decision attempt to encourage the following practices:

TODO: Add a list with the benefits of trunk--based over gitflow like encourage
frequent merges, reducing feedback delays, transparent code between developers,
detect early incompatibilities or design conflicts, etc.

- Faster feedback loop: The code we made as developers is our intentions on what
  we think at that moment would be the right approach based on the concerns. But
  this is just an hipotesis, to check if that code work, we need to pass some
  kind of testing suites. If it does, then we are confident that our new code
  doesn't break anything. Every time we write code, as developers we want to
  know in the least amount of time if that code works or not. Since in that
  moment we have a high knowledge on the codebase, we are in a better possition
  to fix any issue faster. If the error takes up to two months on raise, then we
  mostly have forgot the little details on the code, and to fix-it we have to
  backtrack and study the code again.
- **Frequent merges:** The time that the code is outside the trunk branch
  (develop) is time at which the possibility of conflicts in design and
  implementation grows up.
- Less design conflicts.
- More eyes auditoring the code.

As we see, all those reasons helps forward to improve the code quality.

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
