default['babushka'].tap do |n|
  n['git']['clone_path'] = '/opt/babushka'
  n['git']['repo_path'] = 'https://github.com/benhoskings/babushka.git'
  n['git']['update_strategy'] = :sync
  n['git']['revision'] = '0.19.1'
end
