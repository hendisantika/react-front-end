FROM node:20-alpine3.21 AS development
ENV NODE_ENV development
# Add a work directory
WORKDIR /app
# Cache and Install dependencies
COPY package.json .
COPY package-lock.json .
RUN pnpm install
# Copy app files
COPY . .
# Expose port
EXPOSE 3000
# Start the app
CMD [ "pnpm", "start" ]
