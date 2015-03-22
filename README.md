# chefpoc


Overview
========
This PoC creates a new Ubuntu 14.04 with chef-solo support (done with a Dockerfile) and installs Oracle JDK 7 to it (done with chef-solo scripts) 

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