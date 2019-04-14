[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] &&
echo "

Database access confirmed...
" &&

sleep 1 &&

echo "Access Granted!
_   _  ____      ____  ____  _  _  ____  ____    __    _  _ 
( )_( )(_  _)    (  _ \( ___)( \( )(_  _)(  _ \  /__\  ( \/ )
 ) _ (  _)(_ ()   )(_) ))__)  )  (   )(   )   / /(__)\  )  ( 
(_) (_)(____)/   (____/(____)(_)\_) (__) (_)\_)(__)(__)(_/\_)

" && 
date +%A%n%x | figlet &&
neofetch &&
sleep 1 &&
startx ~/.xinitrc i3

export PATH="$HOME/.cargo/bin:$PATH"
