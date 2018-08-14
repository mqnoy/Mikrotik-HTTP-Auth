#--------------------------------                                                                     
# -scripting
#--------------------------------
:local files [/file find where name~"certslist/"];
:foreach file in=$files do={
:set $fileName [/file get $file name];
:log info $fileName
:certificate import file-name=$fileName passphrase=no
}
