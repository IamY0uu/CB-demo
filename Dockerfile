# Use the official Node.js base image
FROM public.ecr.aws/docker/library/node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the app code
COPY . .

# Expose the port your app listens on (adjust if different)
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
