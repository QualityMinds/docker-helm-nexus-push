FROM linkyard/docker-helm

RUN apk add --no-cache bash
RUN helm init --client-only
RUN helm plugin install --version master https://github.com/sonatype-nexus-community/helm-nexus-push.git
