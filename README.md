# string_calculator_dart

A Dart implementation of the [String Calculator Kata](https://osherove.com/tdd-kata-1) using Test-Driven Development (TDD).

## Overview

This project implements a simple string calculator that follows these rules:

- **Empty String:** Returns `0`.
- **Single Number:** Returns the number itself.
- **Comma Separated Numbers:** Sums multiple numbers separated by commas (e.g. `"1,2"` yields `3`).
- **Newline as Delimiter:** Supports newline characters as delimiters (e.g. `"1\n2,3"` yields `6`).
- **Custom Delimiters:** Allows custom single-character delimiters specified in the format:  
  `//[delimiter]\n[numbers...]` (e.g. `"//;\n1;2"` yields `3`).
- **Custom Delimiters of Any Length:** Supports custom delimiters with multiple characters enclosed in square brackets  
  (e.g. `"//[***]\n1***2***3"` yields `6`).
- **Multiple Custom Delimiters:** Allows multiple custom delimiters (e.g. `"//[*][%]\n1*2%3"` yields `6`, and  
  `"//[***][#][%]\n1***2#3%4"` yields `10`).
- **Negative Numbers:** If a negative number is passed, the calculator throws an exception listing all negative numbers.
- **Numbers Greater Than 1000:** Numbers larger than 1000 are ignored (e.g. `"2,1001"` yields `2`).

This implementation was developed incrementally using TDD and micro commits, ensuring that each new feature passes all tests before moving on.

## Getting Started

### Prerequisites

- [Dart SDK](https://dart.dev/get-dart) (version 3.6.2 or later)

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/githimank/string_calculator_dart.git
   cd string_calculator_dart
