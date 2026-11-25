#!/bin/bash

# Simple Interest Calculator

echo "===== Simple Interest Calculator ====="

# Get input from user
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest: " rate
read -p "Enter Time Period (in years): " time

# Calculate Simple Interest
si=$(awk "BEGIN {printf \"%.2f\", ($principal * $rate * $time) / 100}")

# Calculate Total Amount
total=$(awk "BEGIN {printf \"%.2f\", $principal + $si}")

# Display results
echo "--------------------------------"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $si"
echo "Total Amount: $total"
echo "--------------------------------"
