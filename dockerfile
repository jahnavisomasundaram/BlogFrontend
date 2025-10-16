# =========================
# Build Stage
# =========================
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copy everything and restore dependencies
COPY . .
RUN dotnet restore "BlogApp/BlogApp.csproj"

# Publish the Blazor WebAssembly app
RUN dotnet publish "BlogApp/BlogApp.csproj" -c Release -o /app/build

# =========================
# Runtime Stage (NGINX)
# =========================
FROM nginx:alpine AS runtime
WORKDIR /usr/share/nginx/html

# Remove default NGINX website
RUN rm -rf ./*

# Copy published Blazor output
COPY --from=build /app/build/wwwroot .

# Optional: SPA fallback routing (redirect 404s to index.html)
#COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
