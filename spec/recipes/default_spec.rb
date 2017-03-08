require_relative '../spec_helper'

describe 'babushka::default' do
  subject { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it { is_expected.to include_recipe('git::default') }

  it 'clones babushka repo to /opt' do
    git = subject.find_resource('git', '/opt/babushka')
    expect(git).to be
    expect(git.repository).to eq('https://github.com/benhoskings/babushka.git')
    expect(git.action).to eq([:sync])
    expect(git.revision).to eq('0.19.1')
  end

  it 'links babushka binary to /usr/local/bin' do
    is_expected.to create_link('/usr/local/bin/babushka').
      with(to: '/opt/babushka/bin/babushka.rb')
  end
end
