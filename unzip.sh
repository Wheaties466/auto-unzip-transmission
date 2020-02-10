#!/bin/bash
find /home/tvshows/ -name '*.rar' -execdir unrar e -o- {} \;
find /home/movies/ -name '*.rar' -execdir unrar e -o- {} \;
#plex was having trouble finding some files and after troubleshooting I noticed that it kept the file permissions which prevented plex from seeing the file. the following fixes that and it shouldn't mess with seeding of zipped files.
find /home/movies/ -name '*.avi' -exec chmod 755 {} \;
find /home/tvshows/ -name '*.mkv' -exec chmod 755 {} \;
