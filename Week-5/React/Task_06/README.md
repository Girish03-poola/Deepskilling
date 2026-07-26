# Task 06 – Trainers App (React Router)

## What is This Task About?

This task introduces **React Router** — the standard way to add navigation and multiple pages to a React app. Without a router, React apps are single-page and can't navigate between different views.

## What You Will Build

A Trainers directory app with three pages: a Home page, a Trainers list page, and a Trainer detail page. Clicking a trainer name takes you to their individual profile.

## Concepts You Will Learn

- Setting up `react-router-dom` in a React app
- Defining routes with `<Routes>` and `<Route>`
- Using `<Link>` for navigation (instead of `<a>` tags)
- Reading URL parameters with `useParams()` hook
- Passing data through routes

## App Routes

| URL | Page | Description |
|-----|------|-------------|
| `/` | Home | Welcome page |
| `/trainers` | TrainersList | List of all trainers |
| `/trainer/:id` | TrainerDetail | Individual trainer profile |

## How to Run

```bash
npm install
npm run dev
```

Open `http://localhost:5173` in your browser.

## Expected Output

- Home page with a "View Trainers" link
- Trainers page listing 5 trainer names as clickable links
- Clicking a trainer name → opens their detail page with all info

> **Key Concept:** The `:id` in the route is a **URL parameter**. It can be any value, and you read it with `useParams()` inside the component.
