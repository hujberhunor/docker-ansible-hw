#!/bin/bash

if [ ! -f "docker/id_ed.pub" ]; then 
	    ssh-keygen -t ed25519 -f "docker/id_ed" -N "" 
    else
	        echo "SSH key is already there"
fi 



