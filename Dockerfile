FROM	ubuntu:14.04

RUN apt-get update && apt-get install -y git curl
RUN cd ~
RUN curl -L https://www.opscode.com/chef/install.sh | bash
