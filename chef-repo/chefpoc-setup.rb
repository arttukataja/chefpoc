#
# Cookbook Name:: chefpoc
# Recipe:: setup
#

# Updates apt cache
include_recipe "apt"

# Installs git
package 'git'

# Installs package to define new services
package 'daemon'

# Installs package to unzip 
package 'unzip'

# Installs java
node.set["java"]["install_flavor"] = "oracle"
node.set["java"]["oracle"]["accept_oracle_download_terms"] = "true"
node.set["java"]["jdk_version"] = "7"
include_recipe "java"
