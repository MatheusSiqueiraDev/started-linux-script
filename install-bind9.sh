#Install bind9
yes | $sh_c "apt install bind9 bind"

if command_exists bind; then
    echo "Bind is installed"
else
    echo "Bind not installed"
fi
