FROM docker.io/squidfunk/mkdocs-material AS builder

# Install plugins
#RUN pip install mkdocs-swagger-ui-tag

# Copy the documentation
ADD . /docs

WORKDIR /docs

# Generate the documentation
RUN mkdocs build

FROM docker.io/nginx

# Copy the documentation
COPY --from=builder /docs/site /usr/share/nginx/html