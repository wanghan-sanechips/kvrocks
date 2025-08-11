set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR riscv64)
set(CMAKE_CROSSCOMPILING TRUE)

set(CMAKE_C_COMPILER "riscv64-unknown-linux-gnu-gcc")
set(CMAKE_CXX_COMPILER "riscv64-unknown-linux-gnu-g++")

add_compile_options("-march=rv64gc")

set(JEMALLOC_CROSS_FLAGS
    "--host=riscv64-unknown-linux-gnu"
    "--build=${CMAKE_HOST_SYSTEM_PROCESSOR}-pc-linux-gnu"
    "--with-lg-vaddr=48"
    CACHE STRING "jemalloc flags for RISC-V cross-compilation"
)
set(ENABLE_LUAJIT OFF CACHE BOOL "Disable LuaJIT on RISC-V" FORCE)
