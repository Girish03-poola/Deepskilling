# Task 05 – Cohort Styling App (CSS Modules)

## What is This Task About?

This task teaches you how to style React components using **CSS Modules** — a way to write CSS that only applies to one specific component. No more style conflicts between components!

## What You Will Build

A cohort details viewer where each cohort is displayed in a styled card. Ongoing cohorts are highlighted in green and completed ones in blue.

## Concepts You Will Learn

- What CSS Modules are and why they're useful
- Creating a `.module.css` file for a component
- Importing and using CSS classes with `styles.className`
- Conditional styling based on data values

## CSS Modules vs Regular CSS

| Regular CSS | CSS Modules |
|-------------|-------------|
| Global — affects everything | Scoped — only affects one component |
| Risk of naming conflicts | No conflicts, unique class names |
| `className="box"` | `className={styles.box}` |

## How to Run

```bash
npm install
npm run dev
```

Open `http://localhost:5173` in your browser.

## Expected Output

Cohort cards displayed in a clean layout:
- **Green heading** → Ongoing cohort
- **Blue heading** → Completed cohort
- Each card has a border, padding, and rounded corners

> **Key Concept:** CSS Modules give you the power of CSS with the safety of scoped styles. It's widely used in professional React projects.
