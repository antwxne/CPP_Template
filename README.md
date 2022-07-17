# CPP_Template

Template repository for C++ project using Conan

## Build

Windows:

```shell
cmake -DCMAKE_BUILD_TYPE=Release -S . -B build && cmake --build build --target a.out
```

Unix and MacOS:

```shell
make
```

> Executables will be in the build folder.

## Tests

Windows:

```shell
cmake -DCMAKE_BUILD_TYPE=Release -S . -B build && cmake --build build --target unit_tests
```

Unix and MacOS:

```shell
make tests_run
```

> Executables will be in the build folder.
