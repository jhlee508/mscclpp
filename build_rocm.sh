#!bin/bash

mkdir -p build && cd build

cmake -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_PYTHON_BINDINGS=OFF \
    -DBYPASS_GPU_CHECK=ON \
    -DUSE_ROCM=ON \
    -DCMAKE_HIP_ARCHITECTURES=gfx908 \
    ..

make -j
make -j unit_tests
make -j mp_unit_tests