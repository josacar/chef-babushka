require 'serverspec'

set :backend, :exec

describe 'babushka' do
  it 'clones babushka repo to /opt' do
    expect(file('/opt/babushka/bin/babushka.rb')).to be_file
  end

  it 'installs babushka to /usr/local/bin' do
    expect(file('/usr/local/bin/babushka')).to be_linked_to('/opt/babushka/bin/babushka.rb')
  end
end
