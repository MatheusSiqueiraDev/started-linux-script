#Install netplan
variables=(IP_COMPUTER MASK IP_NETWORK WIFI_NAME PASSWORD INTERFACE);
template_file=$PWD/templates/1-network-manager-all.yaml;
destination_file=/etc/netplan/1-network-manager-all.yaml;

yes | $sh_c "apt remove netplan.io netplan* && apt-get -y install netplan.io";

if command_exists netplan; then
    #Copy template
    $sh_c "cp '$template_file' '$destination_file'";

    #Override Template
    for var in "${variables[@]}"; do
        $sh_c "sed -i 's/\$$var/${!var}/g' $destination_file";
    done

    echo "netplan is installed";
else
    echo "netplan not installed";
fi
