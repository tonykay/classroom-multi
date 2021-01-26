echo Build a demo zip archive

_FULL_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P) && SELF_PATH=$SELF_PATH/$(basename -- "$0" | awk '{ print $NF }')
_CLASSROOM_HOME=$(echo $_FULL_PATH | awk '{ print $1 }') # weirdness with paths, should be able to combine with above

echo "$_FULL_PATH"
echo "$_CLASSROOM_HOME"

cd "$_CLASSROOM_HOME"/.. 

pwd

cleanup () 
{
  if [ -f ./builds/dojo-multitier.zip ]
  then
    echo "Removing old dojo build"
    rm ./builds/dojo.tar.gz 
  fi
}

new_dojo_build ()
{
  cleanup
  tar -chzvf ./builds/dojo.tar.gz ./classroom
}

new_dojo_build

