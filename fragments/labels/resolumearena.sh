resolumearena)
    name="Resolume Arena"
    appName="Resolume Arena/Arena.app"
    type="pkgInDmg"
    pkgName="Resolume Arena Installer.pkg"
    blockingProcesses=( "Arena" "Alley" "Wire" )
    downloadURL=$(curl -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/536.28.10 (KHTML, like Gecko) Version/6.0.3 Safari/536.28.10" -fs "https://resolume.com/download/?file=latest_arena" | grep -i "//.*\..*\..*/Resolume_Arena.*\.dmg" | cut -d '"' -f2 | awk '{print "https:"$1}')
    appNewVersion=$( echo "${downloadURL}" | cut -d 'a' -f 2 | sed 's/rev.*//' | sed 's/_/./g; s/^\.//; s/\.$//' )
    expectedTeamID="Z9Y8N6Q4L8"
    ;;