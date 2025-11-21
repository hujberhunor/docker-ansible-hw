#!/bin/bash

if [ ! -f ~/.ssh/id_ed.pub ]; then 
	    ssh-keygen -t ed25519 -f ~/.ssh/id_ed -N "" 
    else
	        echo "SSH key is already there"
fi 

echo "Copying ssh key to build dir"
cp ~/.ssh/id_ed.pub ./id_ed.pub
cp ~/.ssh/id_ed ./id_ed



