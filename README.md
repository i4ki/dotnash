# .nash

```sh
# go to $HOME
λ> cd 
λ> git clone https://github.com/tiago4orion/dotnash.git .nash
# Update your environment variables
λ> vim ./.nash/conf/env 
# Run nash to load the new customizations
λ> nash
» nashlib not installed
» Trying to download dependencies...
Cloning into 'nashlib'...
remote: Counting objects: 14, done.
remote: Compressing objects: 100% (11/11), done.
remote: Total 14 (delta 0), reused 14 (delta 0), pack-reused 0
Unpacking objects: 100% (14/14), done.
Checking connectivity... done.
λ> cd .nash
(master)λ> 
```

If you want this nash configuration then first fork this project and modify the file `conf/env` to export the required environment variables of your setup.
