# INF2217 - Logic and Specification

## Dependencies

* [Vampire](https://github.com/vprover/vampire) 4.7 (compiled with Z3 4.9.1.0)

### Compiling Vampire from source

1. Make sure you have `git`, `cmake` and `g++`
2. Clone the Vampire repository from GitHub
3. Recursively initialize and update any submodules

```sh
git submodule update --init --recursive
```

4. Compile the Z3 library

```sh
cmake -B z3/build && make -C z3/build -j `nproc`
```

5. Compile Vampire

```sh
cmake -B build && make -C build -j `nproc`
```

6. Ta-da! You have Vampire on `build/bin`.

### Obtaining Vampire binaries

See the [releases](https://github.com/vprover/vampire/releases) page on the official Vampire repository.
