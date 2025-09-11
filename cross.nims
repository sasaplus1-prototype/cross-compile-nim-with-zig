# NimScript configuration file for cross-compilation with Zig

# Basic compiler settings
switch("app", "console")
switch("cc", "clang")
switch("clang.exe", "zigcc")
switch("clang.linkerexe", "zigcc")

# Cross-compilation targets
when defined(x86_64_windows_gnu):
  switch("define", "mingw")
  switch("passC", "-target x86_64-windows-gnu")
  switch("passL", "-target x86_64-windows-gnu -lws2_32 -lwinmm")
  switch("os", "windows")
  switch("cpu", "amd64")

when defined(aarch64_windows_gnu):
  switch("define", "mingw")
  switch("passC", "-target aarch64-windows-gnu")
  switch("passL", "-target aarch64-windows-gnu -lws2_32 -lwinmm")
  switch("os", "windows")
  switch("cpu", "arm64")

when defined(x86_64_macos_none):
  switch("passC", "-target x86_64-macos-none -DnoSignalHandler")
  switch("passL", "-target x86_64-macos-none")
  switch("define", "noSignalHandler")
  switch("os", "macos")
  switch("cpu", "amd64")

when defined(aarch64_macos_none):
  switch("passC", "-target aarch64-macos-none -DnoSignalHandler")
  switch("passL", "-target aarch64-macos-none")
  switch("define", "noSignalHandler")
  switch("os", "macos")
  switch("cpu", "arm64")

when defined(x86_64_linux_gnu):
  switch("passC", "-target x86_64-linux-gnu")
  switch("passL", "-target x86_64-linux-gnu")
  switch("os", "linux")
  switch("cpu", "amd64")

when defined(x86_64_linux_musl):
  switch("passC", "-target x86_64-linux-musl")
  switch("passL", "-target x86_64-linux-musl")
  switch("os", "linux")
  switch("cpu", "amd64")

when defined(aarch64_linux_gnu):
  switch("passC", "-target aarch64-linux-gnu")
  switch("passL", "-target aarch64-linux-gnu")
  switch("os", "linux")
  switch("cpu", "arm64")

when defined(aarch64_linux_musl):
  switch("passC", "-target aarch64-linux-musl")
  switch("passL", "-target aarch64-linux-musl")
  switch("os", "linux")
  switch("cpu", "arm64")