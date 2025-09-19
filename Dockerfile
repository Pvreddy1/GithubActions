# Step 1: Use an official Node.js runtime as the base image
FROM node:18-alpine
 
# Step 2: Set working directory inside the container
WORKDIR /usr/src/app
 
# Step 3: Copy package.json and package-lock.json first (for caching)
COPY package*.json ./
 
# Step 4: Install dependencies
RUN npm install 
 
# Step 5: Copy application source code
COPY . .
 
# Step 6: Expose the port your app runs on
EXPOSE 3000
 
# Step 7: Start the Node.js application
CMD ["node", "server.js"]