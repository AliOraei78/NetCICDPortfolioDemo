# Build stage (Multi-stage)
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

# Copy the solution and project files first for caching
COPY ["NetCICDPortfolioDemo.slnx", "./"]
COPY ["NetCICDPortfolioDemo/NetCICDPortfolioDemo.csproj", "NetCICDPortfolioDemo/"]
COPY ["NetCICDPortfolioDemo.Tests/NetCICDPortfolioDemo.Tests.csproj", "NetCICDPortfolioDemo.Tests/"]

# Restore dependencies using the correct .slnx file
RUN dotnet restore "NetCICDPortfolioDemo.slnx"

COPY . .
WORKDIR "/src/NetCICDPortfolioDemo"
RUN dotnet build --no-restore -c Release

# Publish stage
RUN dotnet publish --no-build -c Release -o /app/publish

# Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS runtime
WORKDIR /app
COPY --from=build /app/publish .

EXPOSE 8080
ENV ASPNETCORE_URLS=http://+:8080

ENTRYPOINT ["dotnet", "NetCICDPortfolioDemo.dll"]