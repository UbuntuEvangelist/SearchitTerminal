#   Uninstaller function

function uninstaller(){
    echo -n "${red}${bold}Do You Really Want To Uninstall Seachit? (Y/y as Yes):${normal}"
    read decision;
    if [ "$decision" == "Y" ] || [ "$decision" == "y" ]
    then {
        if [ -d ~/.searchit ]
        then
          sudo rm ~/.searchit
        fi
        if [ -d /usr/share/applications/SearchitTerminal ]
        then
          sudo rm /usr/share/applications/SearchitTerminal
        fi
        cd /usr/bin
        sudo rm duckit googleit searchit
        sudo rm /usr/share/applications/SearchitTerminal.desktop
        sudo rm -r /usr/share/SearchitTerminal
        echo -n "${orange}Remove Default Configuration? (Y/y as Yes): ${normal}"
        read decision
        if [ "$decision" == "Y" ] || [ "$decision" == "y" ]
        then
            sudo rm -r ~/.config/SearchitTerminal
        else :
        fi
        uninstallCheck
    }
    else {
            echo "${lightgreen}Good Decision :) ${normal}"
    }
    fi
}
