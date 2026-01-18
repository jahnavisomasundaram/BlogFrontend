# --------------------
# Build stage
# --------------------
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy solution and project files
COPY BlogApp.sln ./
COPY BlogApp/BlogApp.csproj ./BlogApp/

# Restore dependencies
RUN dotnet restore

# Copy everything else
COPY . .

# Publish the app
RUN dotnet publish BlogApp/BlogApp.csproj -c Release -o /app/build

# --------------------
# Runtime stage (NGINX)
# --------------------
FROM nginx:alpine AS runtime
WORKDIR /usr/share/nginx/html

# Remove default nginx files
RUN rm -rf ./*

# Copy published wwwroot files
COPY --from=build /app/build/wwwroot ./

# Copy nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
