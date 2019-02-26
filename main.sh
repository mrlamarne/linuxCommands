//Ajouter le proxy apt-cach
echo 'Acquire:http::proxy "http://10.1.0.10:9999/";' | sudo tee -a /etc/apt/apt.conf.d/70debconf
