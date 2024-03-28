# Configuring Linux lid closure
default="#HandleLidSwitch=suspend";
new_config="HandleLidSwitch=ignore";
destination_file=/etc/systemd/logind.conf

$sh_c "
    sed -i 's/${default}/${new_config}/g' $destination_file &&
    service systemd-logind restart
";