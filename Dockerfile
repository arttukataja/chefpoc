FROM	ubuntu:14.04

# base tools to run Chef scripts
RUN apt-get update && apt-get install -y curl wget

# install Chef-solo for running the scripts
RUN cd ~ && curl -L https://www.opscode.com/chef/install.sh | bash

##### clone git repository arttukataja/chefpoc.git 
#
# (feel free to change the repo and update this section accordingly)
#
#
# RUN cd ~ && git clone https://github.com/arttukataja/chefpoc.git
# RUN ln -s /root/chefpoc/chef-repo /root/chef-repo
#


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

