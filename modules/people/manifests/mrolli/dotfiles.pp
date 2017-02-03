class people::mrolli::dotfiles {

  $home = "/Users/${::boxen_user}"
  $dotfiles_dir = "${home}/.dotfiles"

  repository { $dotfiles_dir:
    source => "${::github_login}/dotfiles"
  }

  exec { "install personal dotfiles":
    cwd      => $dotfiles_dir,
    command  => "./install.sh",
    provider => shell,
    creates  => "${home}/.bashrc",
    require  => Repository[$dotfiles_dir]
  }

}
