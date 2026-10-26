# Stage 1: Build the React application
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve with Nginx on Port 3000
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
# Configure Nginx to listen on port 3000 instead of default 80
RUN sed -i 's/listen       80;/listen       3000;/g' /etc/nginx/conf.d/default.conf
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]
