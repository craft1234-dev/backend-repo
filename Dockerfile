# Use the latest Node.js 23 official image
FROM node:23.0.0

# Set working directory inside the container
WORKDIR /src

# Copy package.json and package-lock.json
COPY package*.json ./

# Install only production dependencies
RUN npm install --only=production

# Copy the entire project to the container
COPY . .

# Expose the port
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
