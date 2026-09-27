FROM node:20-alpine AS runner
WORKDIR /app
COPY . .
RUN npm ci && npx prisma generate && npm run build
EXPOSE 3000
CMD ["npm","start"]
