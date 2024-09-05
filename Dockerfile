# Build stage
FROM node:18-alpine as builder

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

# Run the build command
RUN npm run build

# Debug to check the output folder (optional)
# RUN ls -l /app

# Production stage
FROM node:18-alpine

WORKDIR /app

# Update the folder if it's 'build' instead of 'dist'
COPY --from=builder /app/build ./

EXPOSE 3000

CMD ["node", "server.js"]
