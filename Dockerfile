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
# Run with:
#
# 	docker run -i -t -v /Users/<user>/chefpoc:/repo/chefpoc <id>
#
#	example:
#
#	docker run -i -t -v /Users/arttu/chefpoc:/repo/chefpoc fe474bf70842



#####
# Commands for setting up the neat chef directory structure for a clean repo
# 
# 	cd ~/chefpoc
#	wget http://github.com/opscode/chef-repo/tarball/master
#	tar -zxf master
#	mv chef-chef-repo* chef-repo
#	rm master
#	mkdir chef-repo/.chef
#	
# we assume that symbolic link to ~/chef-repo will exist
#	echo "cookbook_path [ '/root/chef-repo/cookbooks' ]" > chef-repo/.chef/knife.rb 


