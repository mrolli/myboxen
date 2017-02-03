class people::mrolli::ruby {
  # See hiera/common.yaml for:
  # ruby-build version
  # rbenv version
  # rbenv plugins

  # Rubies to install
  ruby::version { '2.2.6': }
  ruby::version { '2.3.3': }

  # ensure a gem is installed for all ruby versions
  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.0',
    ruby_version => '*',
  }
}

