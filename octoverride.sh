#!/bin/bash


css='/home/pi/css_overrides/octoprint.css'

function help {
  echo "To use the script, first get your octoprint version from the bottom of the octoprint page."
  echo "Then add execute this script with that version. i.e. ./octoverride.sh 1.2.11.dev35+ge79703b"
}

if [ $# -eq 0 ]
  then
    help
  else
    ver=`echo ${1} | sed s/+/_/`
    cp ${css} /home/pi/octoprint/venv/lib/python2.7/site-packages/OctoPrint-${ver}-py2.7.egg/octoprint/static/css/
    echo 'Copied' ${css} 'to /home/pi/octoprint/venv/lib/python2.7/site-packages/OctoPrint-'${ver}'-py2.7.egg/octoprint/static/css/'
fi
