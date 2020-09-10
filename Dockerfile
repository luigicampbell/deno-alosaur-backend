FROM luca2020/deno-alosaur-backend:latest

# Create app directory
WORKDIR /app

ADD . /app

EXPOSE 8000

CMD [ "deno", "run", "-r", "-A", "--config", "./tsconfig.server.json", "./server.ts" ]
