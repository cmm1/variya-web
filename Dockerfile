# build stage

FROM node:14 as build-stage
LABEL maintainer="qq1036641205@163.com"
WORKDIR /app
COPY . .
RUN yarn install --registry=https://registry.npm.taobao.org
RUN npm run build:dev

# production stage

FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 8095
CMD ["nginx", "-g", "daemon off;"]