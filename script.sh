name=$(buildkite-agent meta-data get "name")

buildkite-agent artifact download "hello/hello" .
chmod +x hello/hello
./hello/hello $name
