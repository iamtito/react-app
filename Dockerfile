FROM node:alpine as builder

WORKDIR '/app'

COPY package.json .

RUN npm install

COPY . .

RUN ["npm","run","build"]

# Builder the server to start the build
FROM nginx

COPY --from=builder /app/build /usr/share/nginx/html/