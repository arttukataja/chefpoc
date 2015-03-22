# chefpoc


Overview
========

PoC tools:
- Docker & Dockerfile
- Chef.io: ChefDK, chef-solo & Docker Supermarket

PoC contents:
1. create new Docker image for Ubuntu 14.04 + chef-solo
2. install Oracle JDK 7 using chef-solo

Host requirements for running: Docker installed

Host requirements for creating the similar experiment: Docker + ChefDK installed


Running
=======

1. Build your own Docker image:

  `docker build .`

2. Run your image, note that you need to map host chefpoc to /repo/chefpoc. For an example:

  `docker run -i -t -v /Users/arttu/chefpoc:/repo/chefpoc fe474bf70842`

3. Run chef-solo inside the docker and verify installed Java version
  
  ```
  cd ~/chef-repo
  chef-solo -c solo.rb -j pocapp.json
  java -version
  ```



Creating Chef scripts
=====================

Install ChefDK http://downloads.chef.io/chef-dk/ and apply :)

Use existing cookbooks: https://supermarket.chef.io/

(You might want to check this outdated getting started too: http://gettingstartedwithchef.com/first-steps-with-chef.html)

Things to consider: How to use roles, environments, data_bags 