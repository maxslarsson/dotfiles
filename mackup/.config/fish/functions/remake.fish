# Defined interactively
function remake
test -d $argv[(count $argv)] && return
touch $argv[(count $argv)]2
cat $argv[(count $argv)] > $argv[(count $argv)]2
trash $argv[(count $argv)]
mv $argv[(count $argv)]2 $argv[(count $argv)]
chmod +x $argv[(count $argv)]
end
