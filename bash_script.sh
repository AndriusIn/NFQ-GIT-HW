#!/bin/bash

touch README.md
echo -n "# ${PWD##*/}" >> README.md
echo -ne "\nClone an empty repository without README and run bash script." >> README.md
git add README.md
git commit -m "Created README.md file"
git push origin master

touch file1.txt
echo -n "He my polite be object oh change." >> file1.txt
git add file1.txt
git commit -m "Created first text file with 1 line"
git push origin master

echo -ne "\nHastily her totally conduct may." >> file1.txt
git commit -a -m "Added new line to end of first text file"
git push origin master

git branch branch1
git checkout branch1
touch file2.txt
echo -n "Hastily her totally conduct may." >> file2.txt
git add file2.txt
git commit -m "Created second text file with 1 line"
git push origin master

git checkout master
echo -ne "\nHumoured how advanced mrs elegance sir who." >> file1.txt
git commit -a -m "Added new line to end of first text file"
git push origin master

git merge --no-edit --no-ff branch1
git push origin master

echo -ne "\nHome sons when them dine do want to." >> file1.txt
git commit -a -m "Added new line to end of first text file"
git push origin master

git checkout branch1
git pull origin master
echo -ne "\nEstimating themselves unsatiable imprudence an he at an." >> file2.txt
git commit -a -m "Added new line to end of second text file"
git push origin master

git checkout master
git merge --no-edit --no-ff branch1
git push origin master

echo -ne "\nEstimating themselves unsatiable imprudence an he at an." >> file1.txt
git commit -a -m "Added new line to end of first text file"
git push origin master

git checkout branch1
git pull origin master
echo -ne "\nImproved carriage securing are desirous too." >> file2.txt
git commit -a -m "Added new line to end of second text file"
git push origin master

git checkout master
git branch branch2
git checkout branch2
touch file3.txt
echo -n "Estimating themselves unsatiable imprudence an he at an." >> file3.txt
git add file3.txt
git commit -m "Created third text file with 1 line"
git push origin master

git checkout master
echo -ne "\nInvitation friendship travelling eat everything the out two." >> file1.txt
git commit -a -m "Added new line to end of first text file"
git push origin master

git checkout branch2
echo -ne "\nShy you who scarcely expenses debating hastened resolved." >> file3.txt
git commit -a -m "Added new line to end of third text file"
git push origin master

echo -ne "\nAlways polite moment on is warmth spirit it to hearts." >> file3.txt
git commit -a -m "Added new line to end of third text file"
git push origin master

git checkout master
echo -ne "\nDowns those still witty an balls so chief so." >> file1.txt
git commit -a -m "Added new line to end of first text file"
git push origin master

git checkout branch1
echo -ne "\nMoment an little remain no up lively no." >> file2.txt
git commit -a -m "Added new line to end of second text file"
git push origin master

git checkout branch2
git merge --no-edit --no-ff master
git push origin master

git checkout master
git merge --no-edit --no-ff branch2
git push origin master

git checkout branch1
echo -ne "\nHad repulsive dashwoods suspicion sincerity but advantage now him." >> file2.txt
git commit -a -m "Added new line to end of second text file"
git push origin master

git merge --no-edit --no-ff master
git push origin master

git checkout master
echo -ne "\nCivil those mrs enjoy shy fat merry." >> file1.txt
git commit -a -m "Added new line to end of first text file"
git push origin master

git checkout branch1
git merge --no-edit --no-ff master
git push origin master

git checkout master
git merge --no-edit --no-ff branch1
git push origin master

echo -ne "\nYou greatest jointure saw horrible." >> file1.txt
git commit -a -m "Added new line to end of first text file"
git push origin master

git checkout branch2
git pull origin master
echo -ne "\nHe private he on be imagine suppose." >> file3.txt
git commit -a -m "Added new line to end of third text file"
git push origin master

git checkout master
echo -ne "\nFertile beloved evident through no service elderly is." >> file1.txt
git commit -a -m "Added new line to end of first text file"
git push origin master
commit_hash_1=`git rev-parse HEAD`

git checkout branch2
echo -ne "\nBlind there if every no so at." >> file3.txt
git commit -a -m "Added new line to end of third text file"
git push origin master

git checkout master
echo -ne "\nOwn neglected you preferred way sincerity delivered his attempted." >> file1.txt
git commit -a -m "Added new line to end of first text file"
git push origin master
commit_hash_2=`git rev-parse HEAD`

git checkout branch1
git pull origin $commit_hash_1
echo -ne "\nTo of message cottage windows do besides against uncivil." >> file2.txt
git commit -a -m "Added new line to end of second text file"
git push origin master

git checkout master
echo -ne "\nBarton did feebly change man she afford square add." >> file1.txt
git commit -a -m "Added new line to end of first text file"
git push origin master

git checkout branch2
git merge --no-edit --no-ff branch1
git push origin master

git checkout master
echo -ne "\nWant eyes by neat so just must." >> file1.txt
git commit -a -m "Added new line to end of first text file"
git push origin master

git checkout branch1
git merge --no-edit --no-ff $commit_hash_2
git push origin master

git checkout branch2
echo -ne "\nPast draw tall up face show rent oh mr." >> file3.txt
git commit -a -m "Added new line to end of third text file"
git push origin master

git checkout master
echo -ne "\nRequired is debating extended wondered as do." >> file1.txt
git commit -a -m "Added new line to end of first text file"
git push origin master

git checkout branch2
echo -ne "\nNew get described applauded incommode shameless out extremity but." >> file3.txt
git commit -a -m "Added new line to end of third text file"
git push origin master

git checkout master
git merge --no-edit --no-ff branch2
git push origin master

git merge --no-edit --no-ff branch1
git push origin master

git checkout master
cp "../$(basename $BASH_SOURCE)" $(basename $BASH_SOURCE)
git add $(basename $BASH_SOURCE)
git commit -m "Added bash script"
git push origin master