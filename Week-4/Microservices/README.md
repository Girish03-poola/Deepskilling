# Microservices – Exercises

This folder contains hands-on exercises for learning Microservices concepts using .NET Core and JWT Authentication.

## What is Microservices Architecture?

Instead of building one big application, microservices breaks it into small, independent services that each do one job. Think of it like a restaurant — the kitchen, billing, and waiters all work independently but together they make things happen.

## Topics Covered

| Topic | Description |
|-------|-------------|
| Microservices vs Monolithic | Why and when to use microservices |
| Service Decomposition | Breaking a big app into small services |
| Sync vs Async Communication | REST calls vs message queues |
| Message Queues & Event-Driven | Services talking via events |
| Service Discovery | How services find each other |
| API Gateway Pattern | Single entry point for all requests |
| Distributed Transactions & Saga | Managing transactions across services |
| JWT Authentication | Securing services with tokens |

## Exercises

### Exercise 01 – JWT Authentication
Build a secure ASP.NET Core API that uses JSON Web Tokens (JWT) to protect endpoints.

**What you will build:**
- A `/api/auth/login` endpoint that returns a JWT token
- A `/api/secure` endpoint that requires a valid token to access
- `AuthController` – handles login and token generation
- `SecureController` – protected routes

**Key files:**
```
Exercise_01_JWTAuthentication/
├── Controllers/
│   ├── AuthController.cs       → Login & token generation
│   └── SecureController.cs     → Protected endpoints
├── Models/
│   ├── LoginModel.cs           → Request model
│   └── User.cs                 → User entity
├── Program.cs                  → App setup & JWT config
└── appsettings.json            → JWT secret & settings
```

### Exercise 02 – Extended Microservice
Extended version of Exercise 01 with additional secure features and endpoints.

## How to Run

```bash
# Navigate to an exercise folder
cd Exercise_01_JWTAuthentication

# Run the application
dotnet run
```

Then open Postman and:
1. POST to `/api/auth/login` with username/password to get a token
2. Use the token as `Bearer <token>` in the Authorization header
3. Access `/api/secure` endpoints

> **Note:** Default credentials and JWT settings are in `appsettings.json`
