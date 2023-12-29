#!/usr/bin/bash
#
# Travis Michette <tmichett@redhat.com>

set -e

container='quay.io/tmichett/ansible:aap2.4'
current_directory="$(pwd)"


echo "Command being run is: podman run -it --name ansible --rm -v $current_directory:/ansible:Z -v ~/.ssh:/ansible/.ssh:Z $container /bin/bash"

podman run -it --name ansible --rm -v $current_directory:/ansible:Z -v ~/.ssh:/ansible/.ssh:Z $container /bin/bash
