# chefpoc


Overview
========

PoC tools:
- Docker & Dockerfile
- Chef.io: ChefDK, chef-solo & Docker Supermarket

Host requirements for running: Docker installed

Host requirements for creating the similar experiment: Docker + ChefDK installed


Running
=======

1. Build a new Docker image

  `docker build .`

2. Run your image. Note that you need to map host chefpoc to /repo/chefpoc. For an example:

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