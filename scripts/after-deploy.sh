#!/bin/bash
REPOSITORY=/home/ubuntu/build

cd $REPOSITORY

/usr/bin/pm2 kill
yarn
# sudo /usr/bin/yarn db:pull # when use prisma
# sudo /usr/bin/yarn generate # when use prisma
/usr/bin/pm2 start dist