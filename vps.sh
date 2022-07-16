openssh || pkg install openssh
clear
printf "\033[1;96m Welcome to vps login: \n\n"
y() {
printf "\033[1;93m"
}
w() {
printf "\033[0m"
}
us() {
y
printf %s "Enter username : "
w
read ab
if [ $ab ];then
y
printf %s "Enter IP address : "
w
printf "$ab@"
fi
read p
if [ $p ];then
echo
ssh $ab@$p
fi
}
us