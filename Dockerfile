# FROM node:18-alpine AS builder
# WORKDIR /app

# COPY package*.json ./
# RUN npm install

# COPY . .
# CMD [ "npm", "run", "dev" ]


FROM node:18-alpine AS builder
WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build


FROM node:18-alpine AS production
WORKDIR /app

# COPY package.json package-lock.json ./
# RUN npm install --only=production

# Copy build artifacts from the 'builder' stage
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/public ./public
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/node_modules ./node_modules


# COPY . .
CMD [ "npm", "start" ]