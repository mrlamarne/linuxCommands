//Ajouter le proxy apt-cach
echo 'Acquire:http::proxy "http://10.1.0.10:9999/";' | sudo tee -a /etc/apt/apt.conf.d/70debconf

//Ajouter le proxy http pour apt
echo 'Acquire:http::proxy "http://10.1.2.5:8080/";' | sudo tee -a /etc/apt/apt.conf.d/proxy


//Trouver le processus qui vérouille le lock dpkg 
sudo lsof /var/lib/dpkg/lock/

//Redémarrer des services
//mysql
sudo service mysql restart
//carte réseau
sudo service networking restart


//BSD pfSense
//mettre le clavier en français
kbdcontrol -l /usr/share/syscons/keymaps/fr.iso.kbd
