# Task 04 – Blog App (Class Components & Lifecycle Methods)

## What is This Task About?

This task introduces **Class Components** and **Lifecycle Methods** — a core concept in React. You will learn how to fetch data from an API when a component loads on the screen.

## What You Will Build

A blog posts viewer that automatically fetches posts from a public API when the page loads and displays them as cards.

## Concepts You Will Learn

- Creating a class-based React component
- Understanding `constructor()` to initialize state
- Using `componentDidMount()` to run code after the component appears
- Fetching data from a REST API
- Handling errors with `componentDidCatch()`

## Lifecycle Flow

```
Component Created (constructor)
      ↓
Component Added to Screen (componentDidMount)
      ↓
API Call → Data Saved to State
      ↓
Component Re-renders with Data
```

## API Used

```
https://jsonplaceholder.typicode.com/posts
```
This is a free fake REST API — great for practice!

## How to Run

```bash
npm install
npm run dev
```

Open `http://localhost:5173` in your browser.

## Expected Output

A list of blog post cards, each showing a **title** and **body** text fetched live from the API.

> **Key Concept:** `componentDidMount()` is the right place to make API calls in class components. It runs once after the component is rendered.
