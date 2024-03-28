#! /bin/bash 

# Source of .env file if exists
if [ -f .env ]; then
    set -a;
    source .env;
fi

command_exists() {
	command -v "$@" > /dev/null 2>&1;
}

user="$(id -un 2>/dev/null || true)";

sh_c='sh -c';

if [ "$user" != 'root' ]; then
    if command_exists sudo; then
        sh_c='sudo -E sh -c';
    elif command_exists su; then
        sh_c='su -c';
    fi
fi

export sh_c;
export -f command_exists;

$sh_c "apt update";

./install-openssh.sh;
./install-anydesk.sh;
./install-docker.sh;
./install-bind9.sh;
./install-netplan.sh;
./notebook-cover.sh;

$sh_c "apt autoremove && reboot";