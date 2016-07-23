
#!/bin/bash

path='/home/pi/oprint/lib/python2.7/site-packages/' #path where octoprint's data files live (this is for octopi)
#path='/home/pi/octoprint/venv/lib/python2.7/site-packages/' #path where octoprint's data files live (this is for a manual install as per the wiki)

cp ./navbartemp.css ${path}octoprint_navbartemp/static/css/
