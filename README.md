# CPP_Template
Template repository for C++ project using Conan

## Build

Windows:

```shell
mkdir -p build && cd build && conan install .. --build=missing && cmake -DCMAKE_BUILD_TYPE=Release -DNAME=a.out .. && cmake --build . --target a.out ; cd .. 
```

Unix and MacOS:

```shell
mkdir -p build && cd build && conan install .. --build=missing && cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DNAME=a.out .. && cmake --build . --target a.out ; cd ..
```


## Tests

```shell
mkdir -p build && cd build && conan install .. --build=missing && cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DNAME=unit_tests .. && cmake --build . --target unit_tests ; cd ..
```