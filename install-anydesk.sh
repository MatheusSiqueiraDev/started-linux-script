#Install Anydesk
yes | $sh_c "
    wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add - &&
    echo 'deb http://deb.anydesk.com/ all main' > /etc/apt/sources.list.d/anydesk-stable.list &&
    apt update &&
    apt install anydesk
";

if command_exists anydesk; then
    anydesk -v;
    echo "Anydesk is installed";
else
    echo "Anydesk is not installed";
fi