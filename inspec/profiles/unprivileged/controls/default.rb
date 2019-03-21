title 'Unprivileged Buildkite Queue'

describe command('sudo -l -U buildkite-agent') do
  its('stdout') { should_not match /\(root\) NOPASSWD: ALL/ }
end
