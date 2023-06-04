#!/bin/bash

image_converter(){
    local image_path=$1
    local no_extension_image=$(ls $image_path | awk -F. '{ print $1 }')
    convert $no_extension_image.jpg $no_extension_image.png
}

scan_directory(){
    cd $1
    for archive in *
    do
        local archive_path=$(find ~/studies/linux/shell_script/new-images -name $archive)
        if [ -d $archive_path ]
        then
            scan_directory $archive_path 
        else
            image_converter $archive_path
        fi
    done
}

scan_directory ~/studies/linux/shell_script/new-images
if [ $? -eq 0 ]
then
    echo "Conversão realizada com sucesso!"
else
    echo "Houve uma falha na conversão"
fi