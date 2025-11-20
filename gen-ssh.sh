#!/bin/bash

if [ ! -f ~/.ssh/id_ed.pub ]; then 
	    ssh-keygen -t ed25519 -f ~/.ssh/id_ed -N "" 
    else
	        echo "SSH key is already there"
fi 



