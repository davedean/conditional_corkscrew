conditional_corkscrew
=====================

Ever needed to use a proxy sometimes, and sometimes not? You're no doubt using corkscrew, why not wrap it in a script so you let the script decide if you should use the proxy or not?


Usage
======================
Put this script somewhere you won't lose it - make sure the conditional in the code block works for you. On OSX and using Locations to switch proxies etc it should be fine for most cases.

Also check the path to corkscrew, I tend to compile it and drop it in ~/.ssh/ .. YMMV.

Then in your .ssh/config where you have a host entry, put this as the ProxyCommand where you'd normally put corkscrew itself. 

i.e.:

Host hostname
  IdentityFile ~/.ssh/id_rsa
  User ubuntu
  Port 22
  ProxyCommand $HOME/.ssh/corkscrew.sh proxy.bigcorp 8080 %h %p
  
And corkscrew.sh should figure it out from there. 
