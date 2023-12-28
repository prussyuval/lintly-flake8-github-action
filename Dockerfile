FROM python:3.10-slim

LABEL "com.github.actions.name"="Lintly-Flake8"
LABEL "com.github.actions.description"="Automatic code reviewer for GitHub PRs."
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/grantmcconnaughey/lintly-flake8-github-actions.git"
LABEL "homepage"="https://github.com/grantmcconnaughey/lintly-flake8-github-actions"
LABEL "maintainer"="Grant McConnaughey <grantmcconnaughey@gmail.com>"

RUN apt-get update && apt-get install -y --no-install-recommends git && pip install --upgrade pip && pip install flake8 flake8-bugbear flake8-builtins flake8_simplify flake8-comprehensions git+https://github.com/prussyuval/lintly markupsafe==2.0.1

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
