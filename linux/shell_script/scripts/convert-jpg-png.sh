#!/bin/bash

image_converter(){

cd ~/studies/linux/shell_script/images

if [ ! -d png ]
then 
	mkdir png
fi
 
for image in *.jpg 
do 
	local image_no_extension=$(ls $image | awk -F. '{ print $1 }')
	convert $image_no_extension.jpg png/$image_no_extension.png
done
}

image_converter 2>error_convert.txt
if [ $? -eq 0 ]
then
	echo "Conversão realizada com sucesso!"
else
	echo "Houve uma falha no processo!"
fi
