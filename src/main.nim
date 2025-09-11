import std/httpclient

when isMainModule:
  echo("Hello, cross-compile World!")
  var client = newHttpClient()
  echo client.getContent("http://example.com")
