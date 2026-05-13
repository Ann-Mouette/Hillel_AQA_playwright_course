# Base Image
FROM mcr.microsoft.com/playwright:v1.60.0-noble

# Set the working directory
WORKDIR /playwright-tests

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy files
COPY . .

# Run tests
CMD ["npx", "playwright", "test", "--project=e2e"]
