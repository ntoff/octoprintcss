#!/bin/bash


css='./octoprint.css' #css file to copy
path='/home/pi/oprint/lib/python2.7/site-packages/' #path where octoprint's data files live (this is for octopi)
#path='/home/pi/octoprint/venv/lib/python2.7/site-packages/' #path where octoprint's data files live (this is for a manual install as per the wiki)

function help {
  echo "To use the script, first get your octoprint version from the bottom of the octoprint page."
  echo "Then add execute this script with that version. i.e. ./octoverride.sh 1.2.11.dev35+ge79703b"
}

if [ $# -eq 0 ]
  then
    help
  else
    ver=`echo ${1} | sed s/+/_/`
    cp ${css} ${path}OctoPrint-${ver}-py2.7.egg/octoprint/static/css/
    echo 'Copied' ${css} 'to '${path}'OctoPrint-'${ver}'-py2.7.egg/octoprint/static/css/'
fi
