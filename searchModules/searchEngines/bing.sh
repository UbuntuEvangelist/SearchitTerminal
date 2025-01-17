# Bing Search Function

function bing() {
    dbCheck
    query=${tmpquery//\ /+}
    if [ "$opParam" == '-image' ]  || [ "$opParam" == '-img' ]
        then {
          query=${query/-img+}
          query=${query/-image+}
          option="images/search?q="
        }
    elif [ "$opParam" == '-video' ] || [ "$opParam" == '-vid' ]
        then {
          query=${query/-vid+}
          query=${query/-video+}
          option="videos/search?q="
    }
    elif [ "$opParam" == '-news' ] || [ "$opParam" == '-nws' ]
        then {
          query=${query/-nws+}
          query=${query/-news+}
          option="news/search?q="
    }
  elif [ "$opParam" == '-maps' ] || [ "$opParam" == '-map' ]
          then {
            query=${query/-map+}
            query=${query/-maps+}
            option="maps/search?q="
    }
  elif [ "$opParam" == '-help' ] || [ "$opParam" == '-h' ] || [ "$opParam" == '-?' ]
      then {
          echo "${aqua}${bold} Bing Search Filters: ${normal}
                For Images     -image       -img
                For Videos     -video       -vid
                For News       -news        -nws
                For Maps       -maps        -map
        "
        exit
  }
    else {
          option="search?q="
    }
  fi
    query=${query/-bng+}
    query=${query/-bing+}
    $browser www.bing.com/$option$query
}
