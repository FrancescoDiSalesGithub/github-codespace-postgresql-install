echo "installing postgres database"

sudo apt update
sudo apt install -y postgres

echo "starting postgresql server"
sudo service postgres start


