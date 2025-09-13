# Contributions Guides

Here are instructions on how to set the environment and other contributions
guidelines.

## Base instructions

For first-time contributors:

1. Fork the repository.
2. Set your development environment
3. Create your working branch.
4. Run and pass the tests with `pytest`.
5. Sync and create a PR from your branch into the project's `development`
   branch.

> [!IMPORTANT]
>
> Each PR must include a minimum and reasonable test coverage relative to the
> scope of the changes/additions.
>
> As a rule of thumb, a coverage of >=70% is usually more than enough.

For core maintainers (contributors with granted permissions after accepted PRs),
push changes directly into the `development` branch are allowed for a more
trunk-based approach.

## Code standards

The project currently uses these tools:

- **Formatting:** [Black](https://github.com/psf/black).
- **Linter:** [ruff](https://github.com/astral-sh/ruff).
- **Testing:** [pytest](https://github.com/pytest-dev/pytest) with
  [Coverage](https://coverage.readthedocs.io).
- **LSP:** [pylsp](https://github.com/python-lsp/python-lsp-server) with
  [jedi](https://github.com/davidhalter/jedi).

> [!IMPORTANT]
>
> All static analysis checks must be validated before a PR can be merged.

## Pipeline

## Requirements

- Python >=3.13
- venv (or Conda)

## Repository workflow

Check the info on the README. If you have any doubt, feel free to open a new
issue.

---

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

Now the environment is ready!

> [!TIP]
>
> In the repository there's a Makefile that you could use to run pytest, build
> the Docker image, run pytest through coverage. Check `make help`.

> _Happy codding ☕!_
