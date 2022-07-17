# CPP_Template
Template repository for C++ project using Conan

## Build

Windows:

```shell
mkdir -p build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. && cmake --build . --target a.out ; cd .. 
```

Unix and MacOS:

```shell
make
```

> Executables will be in the build folder.

## Tests

Windows:

```shell
mkdir -p build && cd build  && cmake -DCMAKE_BUILD_TYPE=Release .. && cmake --build . --target unit_tests ; cd ..
```

Unix and MacOS:

```shell
make tests_run
```

> Executables will be in the build folder.
