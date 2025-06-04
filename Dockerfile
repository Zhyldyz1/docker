# The First Stage (deps) for Installing Dependencies
FROM node:20-alpine AS deps

WORKDIR /app

# What files do I need to run npm install command?
COPY package*.json . 
# Installing Dependencies
RUN npm install
# What file gets created after npm install command?
# node_modules 

# The Second Staga (build) for compiling the application
FROM node:20-alpine AS build

WORKDIR /app

COPY --from=deps /app/node_modules ./node_modules
COPY . .

RUN npm run build
# What file or folder gets created after npm build command
# .next

FROM node:20-alpine AS final

WORKDIR /app

COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/.next ./.next
COPY --from=build /app/public ./public
COPY --from=build /app/next.config.ts ./next.config.ts

EXPOSE 3000

USER node

# Starting the application, what files and folder do I need 
CMD [ "npm", "run", "start" ]