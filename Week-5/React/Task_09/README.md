# Task 09 – Cricket App (ES6 Features in React)

## What is This Task About?

This task is all about using modern **ES6+ JavaScript features** inside React. These are coding shortcuts and techniques that make your code cleaner and more readable — and they're used everywhere in real React projects.

## What You Will Build

A cricket players app that uses ES6 features to filter, merge, and display player lists — with a toggle to switch between two views.

## ES6 Features You Will Practice

| Feature | What it Does | Example |
|---------|-------------|---------|
| `.map()` | Loop through an array and transform items | `players.map(p => <li>{p.name}</li>)` |
| `.filter()` | Keep only items matching a condition | `players.filter(p => p.score >= 70)` |
| Destructuring | Extract values from objects/arrays | `const { name, score } = player` |
| Spread Operator | Merge or copy arrays | `[...t20Team, ...ranjiTeam]` |
| Arrow Functions | Shorter function syntax | `const greet = () => "Hello"` |

## App Features

- **ListofPlayers** → Shows 11 players, filters out those with score < 70
- **IndianPlayers** → Uses destructuring for odd/even teams, spreads T20 + Ranji arrays together
- A toggle button to switch between the two views

## How to Run

```bash
npm install
npm run dev
```

Open `http://localhost:5173` in your browser.

## Expected Output

- Toggle between player list (with low scorer filtered out) and Indian players (merged squad)

> **Key Concept:** ES6 features are not React-specific — they're modern JavaScript. Mastering them makes you a better developer overall!
