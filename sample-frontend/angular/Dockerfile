FROM node:22.9.0-alpine as build

USER node
WORKDIR /app
COPY --chown=node:node package*.json ./
RUN npm i  
COPY --chown=node:node . .
RUN npx ng build --configuration=production

FROM nginx:stable-alpine3.20
COPY --from=build app/dist/angular /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]