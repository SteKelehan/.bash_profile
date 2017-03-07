                                                                                                              

#       -------------------------------
#               Basic Terminal
#       -------------------------------

alias lsa='ls -A'                               # List all files in cd
alias lsal='ls -lA'                             # List all files in cd a list
alias cd..='cd ../'                             # Go back 1 directory level (for fast typers)
alias ..='cd ../'                               # Go back 1 directory level
alias ...='cd ../../'                           # Go back 2 directory levels
alias .3='cd ../../../'                         # Go back 3 directory levels
alias .4='cd ../../../../'                      # Go back 4 directory levels
alias .5='cd ../../../../../'                   # Go back 5 directory levels
alias .6='cd ../../../../../../'                # Go back 6 directory levels
alias bash_profile='nano .bash_profile'         # Calling bash porfile
alias cl='clear'                                # clear screen
alias save_bash='source .bash_profile'          # Saving changes made in bash profile
alias talk='say "Hello handsome, how are you"'  # Making the computer talk to me
alias programming='cd Desktop/Programming/'     # Getting to my programming folger quik

# Full Recursive Directory Listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'






#       -------------------------------
#               File Managment
#       -------------------------------

ASCII()
{

cd Desktop/Terminal/ASCII
cat ASCII.txt
cd

}

alias cp="cp -irv"                              # Copys but warns if there will be an override
alias mv="mv -irv"                              # Moves but warns if there will be an override
create () {                                     # Creates a file
    touch $1        ;
    chmod u+x $1    ;
}

#       ---------------------------
#               Programming
#       ---------------------------
coding(){

        cd                                              ;
        open Safari -a http://stackoverflow.com         ;
        programming                                     ;
        code                                            ;
}



#       -----------------------------
#               Git-Hub
#       -----------------------------

alias gcom="git commit -am"                             # commits all to git
alias gpush="git push origin"                           # pushes all to remote



gcp () {                                                # copies a folder to a new folder, and creates a new git/github repo for it, and pushes everything
    cp "$1" "$2"                                                ;
    cd $2                                                       ; 
    sudo rm -rv .git                                            ;
    # -new git repo, adds and commits all files to repo-
    git init                                                    ;
    git add .                                                   ;
    # -remote github repos, adds remote origin, verifys, pushs-
    curl -u 'Richard-Lynch' https://api.github.com/user/repos -d "{\"name\":\"$2\"}"   ;
    git remote add origin https://github.com/SteKelehan/$2.git                      ;
    git remote -v                   ;
    git push -u origin master       ;
    git commit -am "Copied $2 from $1"  ;
    git push origin master          ;
}





gbl () {                                                 #lists the branches
    git branch -l                     ;
}



gch () {                                                 #checks out the branch
    git checkout "$1"               ;
}



gadd () {                                               #creates a file in a git repo, adds it to the repo, commits to local and pushes to remote
    create "$1"                       ;
    git add "$1"                      ;
    git commit -am "Created $1"     ;
    git push origin master          ;
}




# --New Git Repo--

gnew () {
    # -new directory, empty readme, .vscode template-
    mkdir -p "$1" && cd "$1"        ;
    touch readme.txt                ;
    # mkdir -p .vscode && cd .vscode  ;
    cp -r ~/GoogleDrive/Programs/VS_Templates/"$2"/.vscode .vscode ;
    cp -r ~/GoogleDrive/Programs/VS_Templates/"$2"/main."$2" main."$2" ;
    # -new git repo, adds and commits all files to repo-
    git init                        ;
    git add .                       ;
    git commit -am "First commit"   ;
    # -remote github repos, adds remote origin, verifys, pushs-
        curl -u 'SteKelehan' https://api.github.com/user/repos -d "{\"name\":\"$1\"}"   ;
    git remote add origin "https://github.com/Richard-Lynch/$1.git"                      ;
    git remote -v                   ;
    git push -u origin master       ;
    }





#       ---------------------------
#               Internet
#       ---------------------------


alias network_test='ping -c 10 www.apple.com'                   # Test your internet speed
alias public_IP='curl ipecho.net/plain; echo'                   # Gets your public IP adress (non local)
alias personal_IP='ipconfig getifaddr en0'                      # Gets your private IP adress (local)

Weather()                                                       # Gets weather info from nyor
{

        cd Desktop/Terminal/Weather/    ;
        python test.py  ;
        cd;

}

GlassRooms()
{

        cd Desktop/Terminal/GlassRooms/         ;
        python Glassrooms.py                    ;
        cd                                      ;

}


#Opening my commen pages in Safari

alias blackboard='open -a Safari https://tcd.blackboard.com/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_53_1'
alias mytcd='open -a Safari https://my.tcd.ie/urd/sits.urd/run/siw_portal.url?C7F734DAFFA34A19QQuGYyIlAWRQi5hLAPQRjmCJ-uw0hBn-b5_lf9pEjgIMRGfzR5X9bm5Wwkdqx1F1lKMbPw4UH-F4BDsTBrY2Ikhpg-m4gfENNFJYeND5uyc'
alias facebook='open -a Safari https://www.facebook.com'
alias google='open -a Safari https://www.google.com'

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH




