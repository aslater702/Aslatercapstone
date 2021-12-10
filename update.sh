cat <<\EOF>> ~/.bashrc

#function to add two floating nums
add() { n="$@"; bc <<< "${n// /+}"; }

#get most recent capstone version as a number
export VERSION=$(docker images | grep aslatercap)
#index version automatically 
export INDEX_UDPATE=$(add $VERSION 0.1)
#exports the update variable with the new version 
export UPDATE=$(printf "v%.1f\n" $INDEX_UDPATE)
EOF


