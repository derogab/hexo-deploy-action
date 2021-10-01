# Container image that runs your code
FROM node:lts

LABEL "com.github.actions.name"="Hexo Deploy"
LABEL "com.github.actions.description"="This GitHub action will handle the building and deploying process of hexo project."
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/derogab/hexo-deploy-action"
LABEL "homepage"="https://github.com/derogab/hexo-deploy-action"
LABEL "maintainer"="derogab"

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
