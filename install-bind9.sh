#Install bind9
yes | $sh_c "apt remove bind9 bind* && apt install bind9"

if command_exists bind; then
    echo "Bind is installed"
else
    echo "Bind not installed"
fi