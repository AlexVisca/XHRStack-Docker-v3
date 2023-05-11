# escape=\
FROM nginx:latest
# Create application frontend
COPY ./templates/default.conf.template /etc/nginx/templates/
WORKDIR /frontend
RUN curl https://raw.githubusercontent.com/timoguic/acit4640-py-mysql/master/frontend/index.html \
    -o /frontend/index.html