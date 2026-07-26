# Task 03 – Score Calculator App (Props)

## What is This Task About?

This task teaches you how to pass data between components using **Props**. Props are like function parameters — you send data from a parent component to a child component.

## What You Will Build

A score card app that takes student details (name, school, marks) as props and calculates their percentage and grade automatically.

## Concepts You Will Learn

- Passing props from parent to child component
- Using props inside a component to display dynamic data
- Simple calculations and conditional logic inside JSX

## How It Works

```
App.jsx
  └── <CalculateScore name="Alice" school="ABC" total={100} goal={85} />
  └── <CalculateScore name="Bob"   school="XYZ" total={100} goal={62} />
```

Each `CalculateScore` card receives different data through props and displays results accordingly.

## How to Run

```bash
npm install
npm run dev
```

Open `http://localhost:5173` in your browser.

## Expected Output

Student score cards showing:
- Student name and school
- Total marks and marks obtained
- Calculated percentage
- Grade (color-coded: green for high, red for low)

> **Key Concept:** Props make components **reusable**. One component definition, infinite uses with different data!
