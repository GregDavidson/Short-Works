# Add a component to $PATH
# in the right place
# if it's not already in $PATH

it=$HOME/.guix-profile 
if ! [ -d "$it" ]; then
	>&2 echo Warning: No directory "$it"
else
   export GUIX_PROFILE="$it"
   #  . "$GUIX_PROFILE/etc/profile"
   #  Put $GUIX_PROFILE/bin in my $PATH
   #  before any of the directories under /usr/
   #  and only if it's not in my path already
   case ":$PATH:" in
	   "*:$GUIX_PROFILE:*") ;;
	   *) export PATH="${PATH/:\/usr\//:$GUIX_PROFILE/bin:/usr/}" ;;
   esac
fi
