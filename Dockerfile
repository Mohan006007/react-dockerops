# Stage 1: Build the React application
FROM node:18-alpine AS build

# Set the working directory
WORKDIR /app

# Install bash (no need for sudo)
RUN apk add --no-cache bash

# Set the OpenSSL environment variable to allow legacy providers
ENV NODE_OPTIONS=--openssl-legacy-provider

# Check npm version (optional, to see current version)
RUN npm --version

# Copy package.json and package-lock.json (if available)
COPY package.json package-lock.json ./

# Install dependencies silently
RUN npm install --silent

# Copy the rest of the application code
COPY . .

# Build the React app
RUN npm run build

# Stage 2: Serve the React app with Nginx
FROM nginx:alpine

# Set working directory inside Nginx
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static files
RUN rm -rf ./*

# Copy the build output from the first stage
COPY --from=build /app/build .

# Expose port 80
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]

