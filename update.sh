#bin/bash
appname=botmirror$RANDOM
echo "Passing Fake Git UserName"
git config --global user.name Your Name
git config --global user.email you@example.com
random
echo "2. Type 2 for update bot"
echo -e -n "\nSelect >> "
read update 
if  ! [ "$update" == "2" ]
then 
random
echo "Hosting A New Bot"
if ! [ -f config.env ]
then 
    echo "Config Not Found" 
    exit
fi
random
echo -e "Making a New App\n"
#name="${name:=$appname}"
#appname=$name
#random
#echo -e "Choose The Server Region\n"
#random
#echo -e "Enter 1 For US\nEnter 2 For EU\n\nJust Press Enter For US Region(Default)"
region="${region:=1}"
if [ $region == 1 ]
then
region=us
elif [ $region == 2 ]
then
region=eu
else
echo -e "Wrong Input Detected"
echo -e "US Server Is Selected"
region=us
fi
#clear
echo "Using $appname As Name."
echo "Using $region As Region For The Bot."
heroku create --region $region $appname
heroku git:remote -a $appname
heroku stack:set container -a $appname
echo "Done"
echo "Pushing"
if ! [ -d accounts/ ]
then
    git add .
    git add -f token.pickle config.env drive_folder
    git commit -m "changes"
    git push heroku
    else
    echo "Pushing Accounts Folder Too"
    git add .
    git add -f token.pickle config.env drive_folder accounts accounts/*
    git commit -m "changes"
    git push heroku
fi
clear
echo "Avoiding suspension."
heroku apps:destroy --confirm $appname
heroku create --region $region $appname
heroku git:remote -a $appname
heroku stack:set container -a $appname
echo "Done"
echo "Pushing"
if ! [ -d accounts/ ]
then
    git add .
    git add -f token.pickle config.env drive_folder
    git commit -m "changes"
    git push heroku
    else
    echo "Pushing Accounts Folder Too"
    git add .
    git add -f token.pickle config.env drive_folder accounts accounts/*
    git commit -m "changes"
    git push heroku
fi
heroku ps:scale worker=0 -a $appname
heroku ps:scale worker=1 -a $appname
echo "Done"
echo "Enjoy"
else 
echo "Updating Bot."
chmod -R 700 .*
git add .
if [ -d accounts/ ]
then
git add -f token.pickle config.env drive_folder accounts accounts/*
git commit -m "changes"
git push heroku
else
git add -f token.pickle config.env drive_folder
git commit -m "changes"
git push heroku
fi
fi
echo "Done"
