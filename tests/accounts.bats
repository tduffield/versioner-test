#!/usr/bin/env bats

load test_helpers

teardown() {
  rm -rf expeditor
}

@test "can connect to AWS" {
  run aws --profile chef-cd sts get-caller-identity

  assert_success
  assert_output --partial "arn:aws:sts::712624343120:federated-user/vault"
}

@test "can connect to GitHub" {
  run git clone https://github.com/chef/expeditor.git

  assert_success
  assert_output --partial "Cloning into 'expeditor'"
}

@test "can connect to Azure" {
  run az account list

  assert_success
  assert_output --partial "\"name\": \"Inspec\""
}
