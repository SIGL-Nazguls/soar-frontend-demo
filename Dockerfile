FROM node:14-alpine3.14 as build-deps
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i --silent
RUN npm install react-scripts@3.4.1 -g --silent
COPY . ./
RUN npm run build

# Stage 2 - the production environment
FROM nginx:1.20.2-alpine
COPY --from=build-deps /usr/src/app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]