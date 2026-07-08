#FROM <repository>/<image>:<tag>
FROM node:24-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install --omit=dev

COPY . .

CMD ["node", "--require", "src/tracing.js", "src/index.js"]
EXPOSE 3000
