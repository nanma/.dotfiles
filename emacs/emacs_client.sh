#!/bin/bash                                                                                                                                       
#filename: emacs_client.sh                                                                                                                        
if [ `ps axu | grep "/usr/local/Cellar/emacs/24.5" | grep daemon | wc -l` -eq 1 ]
then
    echo "Ready."
else
    echo "Starting server."
#    /usr/bin/emacs --daemon
    /usr/local/Cellar/emacs/24.5/bin/emacs --daemon
fi
emacsclient -c "$@"
