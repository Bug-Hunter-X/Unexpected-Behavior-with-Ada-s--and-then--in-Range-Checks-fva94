# Ada Range Check Bug

This repository demonstrates a subtle bug that can occur in Ada code when using the `and then` operator for range checks.  The `Check_Range` function incorrectly handles range checks due to the short-circuiting nature of `and then`.  This can lead to unexpected results and potential errors.  The solution demonstrates how to correctly check ranges in Ada.

## Bug

The original `Check_Range` function uses `and then` to check if a number is within a specific range.  However, if the first condition (`Num >= 10`) is false, the second condition (`Num <= 20`) is not evaluated, even if it's necessary to determine the correct result. 

## Solution

The solution replaces the `and then` operator with a simpler `and` operator which evaluates both sides of the condition. This ensures both parts of the condition are evaluated correctly before the result is returned.