title 'Privileged Buildkite Queue'

describe command('sudo -l -U buildkite-agent') do
  its('stdout') { should match /\(root\) NOPASSWD: ALL/ }
end
