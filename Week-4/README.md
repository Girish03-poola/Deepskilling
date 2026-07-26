# Week 4 – Microservices Architecture

Welcome to Week 4! This week is all about understanding how large applications are broken down into smaller, independent services — a concept called **Microservices Architecture**.

## What You Will Learn

- What microservices are and how they differ from monolithic apps
- How services talk to each other (REST, messaging queues)
- Patterns like API Gateway, Service Discovery, and Saga
- JWT-based authentication in a microservices setup
- Building and running small .NET Core microservice projects

## Folder Structure

```
Week-4/
└── Microservices/
    ├── Exercise_01_JWTAuthentication/   → JWT Auth implementation
    └── Exercise_02/                     → Extended microservice exercise
```

## Tools & Technologies

| Tool | Purpose |
|------|---------|
| .NET Core | Backend framework |
| JWT | Authentication tokens |
| Postman | API testing |
| Visual Studio / VS Code | Development |

## Getting Started

1. Open any exercise folder in Visual Studio or VS Code
2. Restore NuGet packages
3. Run the project with `dotnet run`
4. Test endpoints using Postman or a browser

> **Tip:** Always check `appsettings.json` for JWT secret keys and configuration before running.
