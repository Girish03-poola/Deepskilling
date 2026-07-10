Which algorithm is more suitable?

Linear Search is simple and works on both sorted and unsorted arrays, but becomes slow as the number of products increases.
Binary Search is much faster for large datasets because it repeatedly halves the search space. However, it requires the products to be sorted by productId.

Conclusion: For an e-commerce platform with a large catalog, Binary Search is more suitable because it provides much better performance (O(log n)) than Linear Search (O(n)), provided the product list is maintained in sorted order.
