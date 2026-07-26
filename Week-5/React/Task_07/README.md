# Task 07 – Shopping App (State in Class Components)

## What is This Task About?

This task teaches you about **State** in React class components. State is data that belongs to a component and when it changes, the component automatically re-renders to show the updated UI.

## What You Will Build

An online shopping cart that displays 5 items with their prices and calculates the total automatically.

## Concepts You Will Learn

- Defining state in a class component using `constructor()`
- Storing an array of objects in state
- Rendering a list with `.map()`
- Calculating totals dynamically from state data

## How State Works

```javascript
class OnlineShopping extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      items: [
        { itemname: "Laptop", price: 50000 },
        // ...more items
      ]
    };
  }
}
```

## How to Run

```bash
npm install
npm run dev
```

Open `http://localhost:5173` in your browser.

## Expected Output

A shopping cart table displaying:
- Item name and price for each of the 5 items
- A total price calculated at the bottom

> **Key Concept:** State is the component's own internal data. When `this.state` changes (via `setState()`), React automatically updates the UI.
