#!/usr/bin/env bats

load test_helpers

@test "able to leverage GITHUB_TOKEN" {
  run curl -H "Authorization: token $GITHUB_TOKEN" https://api.github.com/user

  assert_success
  assert_output --partial "\"login\": \"chef-ci\""
}

@test "can access secret" {
  run echo $VAULT_CONFIRM

  assert_success
  assert_output "true"
}
