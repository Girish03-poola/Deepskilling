# Task 02 – Student Management Portal (Multiple Components)

## What is This Task About?

In this task, you will learn how to split a React app into **multiple components**. Instead of writing everything in one file, we create separate components for each page — just like how real-world apps are structured.

## What You Will Build

A simple Student Management Portal with three pages — Home, About, and Contact — with buttons to switch between them.

## Concepts You Will Learn

- Creating functional components in React
- Rendering different components based on user interaction
- Basic component composition (using one component inside another)

## Project Structure

```
Task_02/
├── src/
│   ├── App.jsx          → Main app with navigation buttons
│   ├── Home.jsx         → Home page component
│   ├── About.jsx        → About page component
│   └── Contact.jsx      → Contact page component
```

## How to Run

```bash
npm install
npm run dev
```

Open `http://localhost:5173` in your browser.

## Expected Output

- Clicking **Home** → shows "Welcome to the Home page of Student Management Portal"
- Clicking **About** → shows "Welcome to the About page of Student Management Portal"
- Clicking **Contact** → shows "Welcome to the Contact page of Student Management Portal"

> **Key Concept:** Each component is just a JavaScript function that returns JSX (HTML-like syntax). You can reuse them anywhere!
