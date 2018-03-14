# Thinger.io IoT server setup for Ubuntu 16.04
Thinger.io server setup script

Clone:

    git clone https://github.com/sumancvb/Thinger.io-setup.git

Enter directory:
    
    cd Thinger.io-setup

make script file executble 
    
    chmod +x thinger.sh
    
Then run the following command:
    
    sudo ./thinger.sh

Thanks to https://thinger.io/


Optinal:
Config file

When using the snap package, the default config files, buckets exports, and logs are stored in:

    /var/snap/thinger-maker-server/common/
    
Add following information
    
    "email" : {
    "domain" : "your_domain",
    "type" : "smtp",
    "smtp" : {
      "host" : "your_host",
      "port" : "465",
      "username" : "your_user",
      "password" : "your_password",
      "secure" : true
    }
    },

