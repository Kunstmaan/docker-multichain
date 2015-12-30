#!/bin/bash -x

for dir in ./*/
do
    dir=${dir%*/}
    version=${dir##*/}

    docker build -t "kunstmaan/multichain:$version" $version
    docker push "kunstmaan/multichain:$version"
done
