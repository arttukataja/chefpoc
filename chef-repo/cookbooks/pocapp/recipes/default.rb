#
# Cookbook Name:: pocapp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
default_attributes( 
	"java" => 
	{ "install_flavor" => "oracle", "jdk_version" => "7", 
	"oracle" => { "accept_oracle_download_terms" => true } 
	} ) 

run_list( "recipe[java]" )
