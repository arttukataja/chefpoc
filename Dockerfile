FROM	ubuntu:14.04

# base tools to run Chef scripts
RUN apt-get update && apt-get install -y curl wget nano

# install Chef-solo for running the scripts
RUN cd ~ && curl -L https://www.opscode.com/chef/install.sh | bash

# mark location for host share (how to force this?)
VOLUME /repo/chefpoc

# create symbolic link for cookbooks
RUN ln -s /repo/chefpoc/chef-repo /root/chef-repo



#####
# 
# Note when running: you must map chefpoc directory to guest /repo/chefpoc
#
# Run example: 
#
#	docker run -i -t -v /Users/arttu/chefpoc:/repo/chefpoc fe474bf70842

