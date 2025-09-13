# Contributing

Here are instructions on how to set the environment and other contributions
guidelines.

## Requirements

- Python >=3.13
- venv (or Conda)

## Repository workflow

Check the instructions on the README. If you have any doubt, feel free to open a
new issue.

## Setting up the development environment

1. Create the virtual environment.

```bash
python -m venv .venv
```

2. Activate the environment

```bash
source .venv/bin/activate
```

3. Install the libraries in your environment

```bash
python -m pip install -r requirements.txt
python -m pip install -r requirements-dev.txt
```

Now the environment is ready.

> [!TIP]
>
> In the repository there's a Makefile that you could use to run pytest, build
> the Docker image, run pytest through coverage. Check `make help`.
