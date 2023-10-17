FROM node:18-alpine AS builder
WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build


FROM node:18-alpine AS production
WORKDIR /app


# Copy build artifacts from the 'builder' stage
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/public ./public
COPY --from=builder /app/node_modules ./node_modules
# or run npm install instead of copying the last two things
# RUN npm install --only=production

EXPOSE 3000
CMD [ "npm", "start" ]