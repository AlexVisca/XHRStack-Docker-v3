# escape=\
FROM python:3
# Install image dependencies
RUN apt-get update && apt-get install -y \
    apt-utils \
    gettext-base \
    wait-for-it \
&& rm -rf /var/lib/apt/lists/*
# Create application backend
RUN useradd -m -d /app backend
COPY . /app
RUN chmod +x /app/entrypoint.sh
# Install application
WORKDIR /app
USER backend
RUN wget https://github.com/timoguic/acit4640-py-mysql/archive/refs/heads/master.zip -O /tmp/source.zip && \
    unzip /tmp/source.zip && \
    cp -r acit4640-py-mysql-master/backend /app/src && \
    rm -rf acit4640-py-mysql-master
# Install application dependencies
WORKDIR /app/src
RUN python3 -m pip install --user -r requirements.txt
# Expose application port
EXPOSE 8000
# Program executable
ENTRYPOINT [ "/app/entrypoint.sh" ]
CMD [ "/app/.local/bin/gunicorn", "wsgi:app", "-b", "0.0.0.0:8000" ]