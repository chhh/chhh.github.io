+++
date = 2019-09-29
draft = true
tags = ["algorithms", "permutations", "combinations"]
title = "Algorithms for generating permutations and combinations"
math = false
summary = ""

[header]
image = ""
caption = ""

+++

## Permutations

- **Heap's algorithm**  
https://en.wikipedia.org/wiki/Heap%27s_algorithm  
Uses swaps of 2 elements at each iteration.
- **Steinhaus–Johnson–Trotter algorithm**  
https://en.wikipedia.org/wiki/Steinhaus%E2%80%93Johnson%E2%80%93Trotter_algorithm  
- QuickPerm http://www.quickperm.org  
Uses swapping of 2 elements, so I'm guessing it's some version of Johnson-Trotter or Heap's.
- Base-N-Odometer  
Uses counting array, each `p[i]` counts in base-`i`. `p[0]` is zero, `p[1]` is base-2, `p[2]` counts in base-3, etc.

My implementation uses radix-N digits. So like a normal odometer, where each register is base-N.


## Combinations

My implementation uses a counting array, where `c[i]` is the i-th class of the input set.
Each `c[i]` has an allowed upper limit. When computing combinations with repeats, then
the upper limit is the length or requested permutations. When sans repeats, then each
`c[i]` is limited by the user input.
