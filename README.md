# Antimerger

Antimerger is a set of git hooks to prevent the creation of non-linear Git history on the client side. It is intended to be used with the [pre-commit framework](https://pre-commit.com/), but can also be adapted to work as a standalone.

## Installation

1. Make sure `pre-commit` is installed.

2. Add the following lines to the repo list of the `pre-commit-config.yaml` file:

```
-   repo: https://github.com/wiltonloch/antimerger
    rev: 0.1.0
    hooks:
    -   id: antimerger-premerge
    -   id: antimerger-precommit
```

For information on how to create the configuration file for `pre-commit` check their [documentation](https://pre-commit.com/#quick-start)

3. Install the hooks:

```
pre-commit install -t pre-commit
pre-commit install -t pre-merge-commit
```

Alternatively, you can also add `default_install_hook_types: [pre-commit, pre-merge-commit]`  to `pre-commit-config.yaml` and then just run `pre-commit install`.
