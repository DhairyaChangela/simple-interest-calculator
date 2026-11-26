
#!/bin/bash

# Simple Interest Calculator

echo "Enter Principal Amount:"
read principal

echo "Enter Rate of Interest:"
read rate

echo "Enter Time Period (in years):"
read time

# Calculate Simple Interest
si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
amount=$(echo "scale=2; $principal + $si" | bc)

echo "Simple Interest: $si"
echo "Total Amount: $amount"
