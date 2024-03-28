# Install openssh
default="#PasswordAuthentication yes";
new_config="PasswordAuthentication no";
destination_file=/etc/ssh/sshd_config;

yes | $sh_c "apt install openssh-server"

$sh_c "
    sed -i 's/${default}/${new_config}/g' $destination_file &&
    service ssh restart
";