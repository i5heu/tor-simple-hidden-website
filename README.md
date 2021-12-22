# tor-simple-hidden-website

Steps:
1. install `sudo apt install docker docker.io docker-compose git`
2. clone repo `git clone https://github.com/i5heu/tor-simple-hidden-website.git`
3. go into repo `cd tor-simple-hidden-website`
4. start the service `docker-compose up -d`
5. get the new onion adress `cat ./tor-data/my_website/hostname`
6. Go to the new onion adress with your TOR-Browser and check if it has worked
7. The Files in ./web-public will be public and accasable by everyone
8. enjoy the gift of serving a hidden service 
