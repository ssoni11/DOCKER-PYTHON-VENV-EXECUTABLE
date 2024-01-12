FROM python:alpine3.19
WORKDIR /app
COPY . .
RUN pip install -U pip
CMD ./deploy.sh