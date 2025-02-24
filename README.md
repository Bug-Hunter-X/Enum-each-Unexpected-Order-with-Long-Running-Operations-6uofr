# Elixir Enum.each Concurrency Issue

This example demonstrates a potential issue with `Enum.each` in Elixir when a long-running operation is performed within the function.  Because `Enum.each` doesn't guarantee sequential execution, the output might not match the order of elements in the list if there are delays within the enumeration.

## Reproducing the Bug

Run `bug.exs`.  Notice that the output might not be `1 2 3 4 5`.

## Solution

The `bugSolution.exs` file provides a solution using `Enum.map` and `Enum.each`, showcasing alternative approaches to handle this situation.