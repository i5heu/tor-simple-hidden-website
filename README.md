# tor-simple-hidden-website

Steps:
0. install `sudo apt install docker docker.io docker-compose git`
1. clone repo `git clone https://github.com/i5heu/tor-simple-hidden-website.git`
2. go into repo `cd tor-simple-hidden-website`
3. start the service `docker-compose up -d`
4. get the new onion adress `cat ./tor-data/my_website/hostname`
5. Go to the new onion adress with your TOR-Browser and check if it has worked
6. The Files in ./web-public will be public and accasable by everyone
