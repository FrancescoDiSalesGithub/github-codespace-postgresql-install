echo "installing postgres database"

sudo apt update
sudo apt install -y postgres

echo "starting postgresql server"
sudo service postgres start

if [ $1 == "remote" ]
then

    echo "remote installation process in progress..."

    echo "getting ngrok"
    wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz

    if [ $2 == ""]
    then
        echo "no access token passed, please after the argument remote add another argument as your ngrok access token"
    else
        ./ngrok config add-authtoken $2
    fi

else
    echo "if you want to expose your postgres database please pass the following arguments to the script"
    echo " - remote"
    echo " - NGROK_ACCESS_TOKEN (your ngrok access token)"
fi
