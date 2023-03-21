echo "Compiling code..."
echo "Compiling C..."
gcc jacobi.c -o jacobi_c
echo "Compiling Clang..."
clang jacobi.c -o jacobi_clang
echo "Compiling LLVM..."
clang -emit-llvm jacobi.c -c -o jacobi.bc
llc jacobi.bc -o jacobi.s
gcc jacobi.s -o jacobi_llvm


echo "Compiling optimized code..."
echo "Compiling C..."
gcc -O3 jacobi.c -o jacobi_c_opt
echo "Compiling Clang..."
clang -O3 jacobi.c -o jacobi_clang_opt
echo "Compiling LLVM..."
clang -emit-llvm jacobi.c -c -o jacobi_opt.bc
llc -O3 jacobi_opt.bc -o jacobi_opt.s
gcc -O3 jacobi_opt.s -o jacobi_llvm_opt

echo "-------------------------Timing execution gcc..." && \
time ./jacobi_c < input.txt > /dev/null && \
time ./jacobi_c_opt < input.txt > /dev/null
echo "-------------------------Timing execution clang..." && \
time ./jacobi_clang < input.txt > /dev/null && \
time ./jacobi_clang_opt < input.txt > /dev/null
echo "-------------------------Timing execution llvm..." && \
time ./jacobi_llvm < input.txt > /dev/null && \
time ./jacobi_llvm_opt < input.txt > /dev/null
