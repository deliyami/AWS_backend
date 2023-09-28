#!/bin/bash
REPOSITORY=/home/ubuntu/build

cd $REPOSITORY

sudo /usr/bin/pm2 kill
sudo yarn
# sudo /usr/bin/yarn db:pull # when use prisma
# sudo /usr/bin/yarn generate # when use prisma
sudo mv .env dist/src/
sudo /usr/bin/pm2 start dist/src/main.js