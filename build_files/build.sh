#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos

# Niri and Noctalia
dnf5 -y copr enable yalter/niri
dnf5 -y install niri
dnf5 -y copr disable yalter/niri
dnf5 -y --enable-repo=terra install noctalia-shell
# Ghostty
dnf5 -y --enable-repo=terra install ghostty
# Faugus Launcher
dnf5 -y copr enable faugus/faugus-launcher
dnf5 -y install faugus-launcher
dnf5 -y copr disable faugus/faugus-launcher
# Star Citizen
dnf5 -y copr enable jackgreiner/lug-helper
dnf5 -y install lug-helper
dnf5 -y copr enable jackgreiner/lug-helper
# Minecraft
dnf5 -y install openal-soft

#### Example for enabling a System Unit File

systemctl enable podman.socket
