scp ../index.ts eventbot@ubuntudevserv:~/eventBot/

scp -r ../src eventbot@ubuntudevserv:~/eventBot/
scp -r ../scripts eventbot@ubuntudevserv:~/eventBot/

scp ../package.json eventbot@ubuntudevserv:~/eventBot/
scp ../yarn.lock eventbot@ubuntudevserv:~/eventBot/

scp ../tsconfig.json eventbot@ubuntudevserv:~/eventBot/
scp ../.eslintrc.json eventbot@ubuntudevserv:~/eventBot/
scp ../.eslintignore eventbot@ubuntudevserv:~/eventBot/