# Lua Unhandled nil Argument Bug

This repository demonstrates a common error in Lua:  failing to handle the case where a function receives a `nil` argument.

The `bug.lua` file contains the problematic code. The `bugSolution.lua` shows the corrected version.

## Bug Description

The function `foo` doesn't explicitly handle the scenario where the argument `a` is `nil`.  When `foo()` is called without an argument, Lua passes `nil`, and the function implicitly returns `nil`. However, when the function is called with a numerical argument, it returns the expected result. This inconsistency can lead to unexpected behavior or runtime errors if the function's output is not properly checked.

## Solution

The solution is to explicitly handle `nil` in the function to ensure consistent behavior.  You can return a default value (e.g., 0), raise an error, or perform a different action based on the value of `a`.