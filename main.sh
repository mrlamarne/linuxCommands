//Ajouter le serveur apt-cache local
//echo 'Acquire::http::proxy "/";' | sudo tee -a /etc/apt/apt.conf.d/70debconf
echo 'Acquire::http::proxy "http://172.25.254.21/";' | sudo tee -a /etc/apt/apt.conf.d/70debconf

//Ajouter le proxy http pour apt
//echo 'Acquire::http::proxy "http://10.1.2.5:8080/";' | sudo tee -a /etc/apt/apt.conf.d/proxy
//Désuet/!\

//Proxy http pour Ubuntu 18.04 > *
echo 'http_proxy="http://10.1.2.5:8080/";' | sudo tee -a /etc/environment
echo 'https_proxy="http://10.1.2.5:8080/";' | sudo tee -a /etc/environment
echo 'ftp_proxy="http://10.1.2.5:8080/";' | sudo tee -a /etc/environment

//infos sur les connexions
netstat -tap //Liste les connexion établies
netstat -l //port en écoute
netstat -lt //port tcp en écoute
netstat -lu //port udp en écoute
netstat -p //programme et port associé
netstat -o //affichage des processus associé à chaque connexion


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
