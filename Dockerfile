FROM python:3.11-slim
RUN apt-get update && apt-get install -y make && apt-get clean

WORKDIR /app

COPY . .
COPY requirements.txt .
RUN make install
RUN make format
RUN make lint

EXPOSE 5000

CMD ["make", "run"]
