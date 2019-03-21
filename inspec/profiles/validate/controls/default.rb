title 'Validate Buildkite Queue'

unprivileged =`buildkite-agent meta-data get single-use`
privileged = `buildkite-agent meta-data get single-use-privileged`

describe aws_ec2_instance(unprivileged) do
  it { should be_terminated }
end

describe aws_ec2_instance(privileged) do
  it { should be_terminated }
end
