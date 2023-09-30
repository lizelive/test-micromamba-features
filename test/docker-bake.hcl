group "default" {
  targets = ["envs"]
}


target "scratch" {
  dockerfile-inline = "FROM scratch"
  context           = null
}

target "base" {
  context    = "./base"
}




target "envs" {
  name = "env-${env}"
  dockerfile = "${env}.Dockerfile"
  envs       = ["env:${env}"]
  matrix = {
    env = ["foo", "bar"]
  }
  // inherits = ["base"]
  contexts = {
    base = "target:base"
    // base = "docker-image://debian:12-slim"
  }
  // target = env
}