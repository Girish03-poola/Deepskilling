# Task 08 – Counter App (State Management with Events)

## What is This Task About?

This task gives you hands-on practice with **state updates and event handling** in class components. You'll build something interactive — a people counter that tracks how many people are currently inside a building.

## What You Will Build

A people entry/exit counter with two buttons. Each button click updates the count and the display updates live.

## Concepts You Will Learn

- Using `this.setState()` to update state
- Handling button click events in class components
- Computing derived values from state (people inside = entry - exit)
- Understanding how React re-renders when state changes

## How It Works

```
[Entry Button Clicked] → entrycount + 1 → UI Updates
[Exit Button Clicked]  → exitcount  + 1 → UI Updates
People Inside = entrycount - exitcount
```

## How to Run

```bash
npm install
npm run dev
```

Open `http://localhost:5173` in your browser.

## Expected Output

A counter dashboard showing:
- Total entries and exits
- Current number of people inside (live update on every click)
- Two buttons: **Entry** and **Exit**

> **Key Concept:** Never modify state directly (`this.state.count = 5` ❌). Always use `this.setState({ count: 5 })` ✅ so React knows to re-render.
