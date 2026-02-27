FROM rasa/rasa:3.6.20

WORKDIR /app

COPY . /app

USER root
RUN chown -R 1001:1001 /app
USER 1001

EXPOSE 10000

CMD ["run", "--enable-api", "--cors", "*", "--port", "10000"]
