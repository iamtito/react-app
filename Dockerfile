FROM node:alpine as builder

WORKDIR '/app'

COPY package.json .

RUN npm install

COPY . ./

RUN ["npm","run","build"]

# Builder the server to start the build
FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html/