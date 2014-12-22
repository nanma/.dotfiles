#!/bin/bash                                                                                                                                       
#filename: emacs_client.sh                                                                                                                        
if [ `ps axu | grep "/usr/bin/emacs" | grep daemon | wc -l` -eq 1 ]
then
    echo "Ready."
else
    echo "Starting server."
    /usr/bin/emacs --daemon
fi
emacsclient -c "$@"
