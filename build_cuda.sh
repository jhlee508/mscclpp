#!bin/bash

mkdir -p build && cd build

cmake -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_PYTHON_BINDINGS=OFF \
    -DCMAKE_CUDA_ARCHITECTURES=70 \
    ..

make -j
make -j unit_tests
make -j mp_unit_tests