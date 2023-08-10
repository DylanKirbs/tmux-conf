# Kirby TMUX Configuration

## Overview

This repository contains a simplified TMUX configuration file, which is designed to be easy to understand and well-commented. It's a great starting point for anyone who wants to customize their TMUX environment.

## What is a .tmux.conf?

A TMUX configuration file is a plain text file that contains instructions for customizing your TMUX environment. It's often referred to as a "TMUX configuration" or "TMUX config" for short. The file name is `.tmux.conf` and it's typically stored in your home directory.

## Getting Started

Setting up your Tmux environment with this simplified tmux is straightforward:

This Repository contains the configuration file:
- `.tmux.conf` - The configuration file.

As well as an installation script:
- `install.sh` - The installation script.

```bash
$ ./install.sh
```

It is recommended to use the installer as it will source the configuration for you.

That's it! Your TMUX environment is now equipped with the enhanced settings and optimizations provided by the .tmux.conf file.
The script is designed to automatically perform some setup and install some plugins, all of this can be modified and all of the sections are labeled with comments.

From withing tmux, run `prefix + I` to install the plugins.

## Features

The script will automatically install the following plugins:

- [tpm](https://github.com/tmux-plugins/tpm) - Tmux Plugin Manager
- [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible) - Basic tmux settings everyone can agree on, inspired by [vim-sensible](https://github.com/tpope/vim-sensible)
- [tmux-powerline](https://github.com/erikw/tmux-powerline) - A set of scripts for making a nice and dynamic tmux statusbar consisting of segments, like vim-powerline does for vim.

## Customization

The .tmux.conf file is well-commented and easy to understand. You can easily customize it to suit your needs. Here are some of the most common customizations:

- Changing the default prefix key from `Ctrl + b` to something else.
- Changing additional key bindings.

## Automatic Session Persistence over SSH

This section will detail how to set up a very simple automatic session persistence over SSH. This is useful for when you are working on a remote machine and you want to be able to disconnect and reconnect to your session without losing your work.

It only requires client-side configuration, and it will work with any server-side configuration.

### Client-side Configuration

Add the following to your `~/.ssh/config` file:
- `RemoteCommand tmux -u new -A -s ${USER}_SSH` - This will automatically start a tmux session named `${USER}_SSH` when you connect to the host.

The breakdown of the command is as follows:
- `tmux` - Start a tmux session.
- `-u` - Use UTF-8 encoding.
- `new` - Create a new session.
- `-A` - Attach to the session if it already exists.
- `-s ${USER}_SSH` - Name the session `${USER}_SSH`.

It should look something like this:
```
Host host
  HostName hostname
  User username
  RemoteCommand tmux -u new -A -s ${USER}_SSH
```

I recommend that you duplicate an existing host entry and modify it to suit your needs, so that `scp` and `ssh` will work as expected.
This can easily be achieved by duplicating the host entry and changing the `Host` to something else, like `Host host_tmux`, and adding the remote command.

In order to connect to the host, you can now simply run `ssh -t host_tmux` and you will be automatically connected to your tmux session.


## Contributions

If you'd like to contribute to this project by suggesting improvements, fixing issues, or sharing your own customizations, you're welcome to do so. Simply fork this repository, make your changes, and submit a pull request.

## Feedback and Support

If you encounter any problems or have questions about using this tmux configuration, feel free to reach out by creating an issue in this repository. We're here to help you make the most of your tmux editing experience!

## License

This project is released under the [MIT License](LICENSE), which means you're free to use, modify, and distribute the tmux configuration. Refer to the license file for more details.

Happy tmuxing!

---
