# HPC

To run
```sh
docker compose up
```

Logs
```
hpc-compile-1  | Running default and optimized codes
hpc-compile-1  | -------------------------Timing execution gcc...
hpc-compile-1  | 
hpc-compile-1  | real	0m0.297s
hpc-compile-1  | user	0m0.297s
hpc-compile-1  | sys	0m0.000s
hpc-compile-1  | 
hpc-compile-1  | real	0m0.294s
hpc-compile-1  | user	0m0.293s
hpc-compile-1  | sys	0m0.000s
hpc-compile-1  | -------------------------Timing execution clang...
hpc-compile-1  | 
hpc-compile-1  | real	0m0.295s
hpc-compile-1  | user	0m0.295s
hpc-compile-1  | sys	0m0.000s
hpc-compile-1  | 
hpc-compile-1  | real	0m0.289s
hpc-compile-1  | user	0m0.289s
hpc-compile-1  | sys	0m0.000s
hpc-compile-1  | -------------------------Timing execution llvm...
hpc-compile-1  | 
hpc-compile-1  | real	0m0.297s
hpc-compile-1  | user	0m0.297s
hpc-compile-1  | sys	0m0.000s
hpc-compile-1  | 
hpc-compile-1  | real	0m0.295s
hpc-compile-1  | user	0m0.294s
hpc-compile-1  | sys	0m0.000s
```

As the running time was too low I added a loop for reruning the code

Best execution was clang optimized.
