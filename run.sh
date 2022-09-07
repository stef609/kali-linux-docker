#!/bin/bash

# ##########################################################################
# Variables (can be adapted)
# ##########################################################################
# set the default values for Ports, Desktop Environment," " Remote Access and Kali packages
# You can adapt these ports to your needs
# ##########################################################################

XRDP_PORT=13389
XVNC_DISPLAY=8
XVNC_PORT=590${XVNC_DISPLAY}
XSSH_PORT=22

# ##########################################
# create the container
# ##########################################
# Now we call docker create and pass on all
# the choices for network and ports that the
# user has made in the menu
# ##########################################
mkdir -p ~/kaliuser-home

docker run   --name $1\
                -p $XRDP_PORT:$XRDP_PORT \
                -p $XVNC_PORT:$XVNC_PORT \
                -p $XSSH_PORT:$XSSH_PORT \
                -t -d \
                -v ~/kaliuser-home:/home/kaliuser \
                stef609/$1
