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

- [tmp] - A plugin manager for tmux.
- [tmux-sensible] - A set of tmux options that should be acceptable to everyone.
- [tmux-powerline] - A set of scripts for making a nice and dynamic tmux statusbar consisting of segments, like vim-powerline does for vim.

## Customization

The .tmux.conf file is well-commented and easy to understand. You can easily customize it to suit your needs. Here are some of the most common customizations:

- Changing the default prefix key from `Ctrl + b` to something else.
- Changing additional key bindings.


## Contributions

If you'd like to contribute to this project by suggesting improvements, fixing issues, or sharing your own customizations, you're welcome to do so. Simply fork this repository, make your changes, and submit a pull request.

## Feedback and Support

If you encounter any problems or have questions about using this tmux configuration, feel free to reach out by creating an issue in this repository. We're here to help you make the most of your tmux editing experience!

## License

This project is released under the [MIT License](LICENSE), which means you're free to use, modify, and distribute the tmux configuration. Refer to the license file for more details.

Happy tmuxing!

---