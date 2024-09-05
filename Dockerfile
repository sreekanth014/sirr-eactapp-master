# Use a smaller base image
FROM node:18-alpine as builder

# Set the working directory
WORKDIR /app

# Copy only package files to leverage Docker's cache mechanism
COPY package*.json ./

# Install only production dependencies
RUN npm install --production

# Copy the source code
COPY . .

# Build the app
RUN npm run build

# Use a new, minimal image for production
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy the built files from the builder stage
COPY --from=builder /app/dist ./

# Expose the required port
EXPOSE 3000

# Use a more lightweight command to run the app
CMD ["node", "server.js"]
