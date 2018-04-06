#!/usr/bin/env bash

curl https://nixos.org/nix/install | sh
. ~/.nix-profile/etc/profile.d/nix.sh
nix-channel --add https://nix.dapphub.com/pkgs/dapphub
nix-channel --update
nix-env -iA dapphub.seth