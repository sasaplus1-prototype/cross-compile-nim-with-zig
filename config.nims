# NimScript configuration file for cross-compilation

# Basic compiler settings
switch("app", "console")

# Cross-compilation targets
when defined(x86_64_windows_gnu):
  switch("define", "mingw")
  switch("define", "windows")
  switch("gcc.exe", "x86_64-w64-mingw32-gcc")
  switch("gcc.linkerexe", "x86_64-w64-mingw32-gcc")
  switch("gcc.cpp.exe", "x86_64-w64-mingw32-g++")
  switch("gcc.cpp.linkerexe", "x86_64-w64-mingw32-g++")
  switch("dynlibOverrideAll")
  switch("define", "useMalloc")
  switch("define", "noCppExceptions")
  switch("define", "noSignalHandler")
  switch("os", "windows")
  switch("cpu", "amd64")

when defined(aarch64_windows_gnu):
  # Note: MinGW for ARM64 Windows is not commonly available
  # This configuration may not work without special setup
  switch("define", "mingw")
  switch("define", "windows")
  switch("dynlibOverrideAll")
  switch("define", "useMalloc")
  switch("define", "noCppExceptions")
  switch("define", "noSignalHandler")
  switch("os", "windows")
  switch("cpu", "arm64")


when defined(x86_64_linux_gnu):
  # Native compilation on x86_64 Linux
  switch("os", "linux")
  switch("cpu", "amd64")

when defined(x86_64_linux_musl):
  switch("gcc.exe", "musl-gcc")
  switch("gcc.linkerexe", "musl-gcc")
  switch("passL", "-static")
  switch("os", "linux")
  switch("cpu", "amd64")

when defined(aarch64_linux_gnu):
  switch("gcc.exe", "aarch64-linux-gnu-gcc")
  switch("gcc.linkerexe", "aarch64-linux-gnu-gcc")
  switch("gcc.cpp.exe", "aarch64-linux-gnu-g++")
  switch("gcc.cpp.linkerexe", "aarch64-linux-gnu-g++")
  switch("os", "linux")
  switch("cpu", "arm64")

when defined(aarch64_linux_musl):
  # Note: aarch64 musl cross-compilation requires special setup
  switch("gcc.exe", "aarch64-linux-gnu-gcc")
  switch("gcc.linkerexe", "aarch64-linux-gnu-gcc")
  switch("passC", "-static")
  switch("passL", "-static")
  switch("os", "linux")
  switch("cpu", "arm64")