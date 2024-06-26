# Use a base image with the necessary build tools
FROM node:20.5 AS build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the source code
COPY . .

# Build the application
RUN npm run build

# Use a lightweight Nginx image as the final base image
FROM nginx:alpine

# Copy the built files from the previous stage to the Nginx web root directory
COPY --from=build /app/dist /usr/share/nginx/html

# Expose port 80 and 443
EXPOSE 80
EXPOSE 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]