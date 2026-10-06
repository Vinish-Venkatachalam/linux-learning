#!/bin/bash

# ============================================================
# LINUX COMMANDS - HANDS-ON PRACTICE
# ============================================================
# Purpose:
# Practice commonly used Linux commands relevant to
# Data Engineering.
#
# Environment:
# WSL2 / Ubuntu
#
# Note:
# This file contains Linux command practice only.
# Shell scripting concepts and Airflow are excluded.
# ============================================================


# ============================================================
# 1. PWD - PRINT WORKING DIRECTORY
# ============================================================

pwd


# ============================================================
# 2. UNAME - SYSTEM INFORMATION
# ============================================================

uname -a


# ============================================================
# 3. WHOAMI - CURRENT USER
# ============================================================

whoami
id


# ============================================================
# 4. CLEAR - CLEAR TERMINAL
# ============================================================

clear


# ============================================================
# 5. HISTORY - COMMAND HISTORY
# ============================================================

history
history 10
history | grep docker


# ============================================================
# 6. MKDIR - CREATE DIRECTORY
# ============================================================

mkdir linux-practice

mkdir -p project/data/raw
mkdir -p project/data/processed


# ============================================================
# 7. CD - CHANGE DIRECTORY
# ============================================================

cd project
cd ..
cd ~
cd /
cd -


# ============================================================
# 8. LS - LIST FILES AND DIRECTORIES
# ============================================================

ls
ls -l
ls -a
ls -la
ls -ltr
ls -lstr


# ============================================================
# 9. TOUCH - CREATE FILE
# ============================================================

touch file1.txt
touch file2.txt file3.txt

touch project/data/raw/sales.csv


# ============================================================
# 10. CAT - DISPLAY FILE CONTENT
# ============================================================

echo "Hello Linux" > file1.txt

cat file1.txt

cat -n file1.txt

cat file1.txt file2.txt


# ============================================================
# 11. ECHO - DISPLAY TEXT / VALUES
# ============================================================

echo "Hello World"
echo "Data Engineering"

echo $HOME
echo $USER
echo $SHELL
echo $PATH


# ============================================================
# 12. OUTPUT REDIRECTION - >
# ============================================================

echo "First line" > output.txt
echo "New content" > output.txt


# ============================================================
# 13. OUTPUT REDIRECTION - >>
# ============================================================

echo "First line" > log.txt
echo "Second line" >> log.txt
echo "Third line" >> log.txt

cat log.txt


# ============================================================
# 14. WILDCARD - *
# ============================================================

ls *
ls *.txt
ls *.csv
ls project/data/raw/*.csv


# ============================================================
# 15. WILDCARD - ?
# ============================================================

ls file?.txt


# ============================================================
# 16. CP - COPY FILES
# ============================================================

mkdir -p backup

cp file1.txt backup/

cp file1.txt copy_of_file1.txt

cp file1.txt file2.txt backup/

cp -r project backup/project_backup/


# ============================================================
# 17. MV - MOVE / RENAME
# ============================================================

mv copy_of_file1.txt renamed_file.txt

mv renamed_file.txt backup/

mv project/data/raw/sales.csv project/data/processed/


# ============================================================
# 18. RM - REMOVE FILES / DIRECTORIES
# ============================================================

rm file3.txt

rm -i file2.txt

rm -r backup/project_backup/


# ============================================================
# 19. RMDIR - REMOVE EMPTY DIRECTORY
# ============================================================

mkdir empty_directory

rmdir empty_directory


# ============================================================
# 20. HEAD - DISPLAY BEGINNING OF FILE
# ============================================================

head file1.txt

head -n 5 application.log


# ============================================================
# 21. TAIL - DISPLAY END OF FILE
# ============================================================

tail file1.txt

tail -n 5 application.log


# ============================================================
# 22. TAIL -F - MONITOR FILE IN REAL TIME
# ============================================================

tail -f application.log


# ============================================================
# 23. WC - COUNT LINES / WORDS / BYTES
# ============================================================

wc file1.txt

wc -l file1.txt
wc -w file1.txt
wc -c file1.txt
wc -m file1.txt


# ============================================================
# 24. SORT - SORT FILE CONTENT
# ============================================================

sort file1.txt
sort -r file1.txt
sort -u file1.txt


# ============================================================
# 25. SORT - NUMERIC SORTING
# ============================================================

sort -n numbers.txt
sort -nr numbers.txt


# ============================================================
# 26. GREP - SEARCH TEXT
# ============================================================

grep "ERROR" application.log

grep -i "error" application.log

grep -n "ERROR" application.log

grep -v "INFO" application.log

grep -c "ERROR" application.log


# ============================================================
# 27. GREP - SEARCH RECURSIVELY
# ============================================================

grep -r "ERROR" .


# ============================================================
# 28. GREP - SEARCH COMMAND OUTPUT
# ============================================================

history | grep docker

ps aux | grep python


# ============================================================
# 29. FIND - SEARCH FILES AND DIRECTORIES
# ============================================================

find . -name "sales.csv"

find . -type f -name "*.csv"

find . -type d -name "raw"

find . -iname "*.CSV"


# ============================================================
# 30. FIND - SEARCH BY SIZE
# ============================================================

find . -type f -size +100M


# ============================================================
# 31. FIND - SEARCH BY MODIFICATION TIME
# ============================================================

find . -type f -mtime -1


# ============================================================
# 32. FIND + GREP - SEARCH FILE CONTENT
# ============================================================

find . -type f -name "*.log" -exec grep -i "ERROR" {} \;


# ============================================================
# 33. AWK - SELECT COLUMNS
# ============================================================

awk '{print $1}' file1.txt

awk '{print $1, $2}' file1.txt


# ============================================================
# 34. AWK - CSV PROCESSING
# ============================================================

awk -F',' '{print $1, $2}' employees.csv

awk -F',' '{print $2, $4}' employees.csv


# ============================================================
# 35. AWK - CONDITIONS
# ============================================================

awk -F',' '$4 > 60000 {print $2, $4}' employees.csv


# ============================================================
# 36. AWK - NR AND NF
# ============================================================

awk '{print NR, $0}' file1.txt

awk '{print NF, $0}' file1.txt


# ============================================================
# 37. AWK - LAST FIELD
# ============================================================

awk '{print $NF}' file1.txt


# ============================================================
# 38. AWK - SUM
# ============================================================

awk '{sum += $2} END {print sum}' numbers.txt


# ============================================================
# 39. PIPE - |
# ============================================================

cat application.log | grep "ERROR"

ps aux | grep python

history | grep docker

sort file1.txt | uniq


# ============================================================
# 40. TEE - DISPLAY AND SAVE OUTPUT
# ============================================================

echo "Pipeline started" | tee pipeline.log

echo "Pipeline completed" | tee -a pipeline.log


# ============================================================
# 41. CHMOD - CHANGE PERMISSIONS
# ============================================================

chmod 755 script.sh

chmod 644 file1.txt

chmod 600 private.txt

chmod +x script.sh


# ============================================================
# 42. CHMOD - SYMBOLIC PERMISSIONS
# ============================================================

chmod u+x script.sh
chmod g+x script.sh
chmod o-w file1.txt


# ============================================================
# 43. CHMOD - VIEW PERMISSIONS
# ============================================================

ls -l


# ============================================================
# 44. HARD LINK - LN
# ============================================================

touch original.txt

ln original.txt hardlink.txt

ls -li original.txt hardlink.txt


# ============================================================
# 45. SOFT LINK - LN -S
# ============================================================

ln -s original.txt softlink.txt

ls -l softlink.txt


# ============================================================
# 46. ALIAS
# ============================================================

alias ll='ls -la'

alias

alias ll


# ============================================================
# 47. UNALIAS
# ============================================================

unalias ll


# ============================================================
# 48. BASHRC
# ============================================================

ls -la

cat ~/.bashrc

# Reload .bashrc after making changes:
# source ~/.bashrc


# ============================================================
# 49. PS - PROCESS STATUS
# ============================================================

ps

ps -ef

ps -ef | grep python


# ============================================================
# 50. PS AUX - PROCESS INFORMATION
# ============================================================

ps aux

ps aux | grep python


# ============================================================
# 51. TOP - REAL-TIME PROCESS MONITORING
# ============================================================

top

# Inside top:
# P  -> Sort by CPU usage
# M  -> Sort by memory usage
# k  -> Kill process
# q  -> Quit


# ============================================================
# 52. KILL - SEND SIGNAL TO PROCESS
# ============================================================

# Gracefully terminate:
# kill PID

# Explicit SIGTERM:
# kill -15 PID

# Forcefully terminate:
# kill -9 PID


# ============================================================
# 53. BACKGROUND PROCESS - &
# ============================================================

sleep 60 &


# ============================================================
# 54. JOBS - VIEW BACKGROUND JOBS
# ============================================================

jobs


# ============================================================
# 55. FG - BRING JOB TO FOREGROUND
# ============================================================

# Example:
# fg %1


# ============================================================
# 56. BG - RESUME JOB IN BACKGROUND
# ============================================================

# Example:
# bg %1


# ============================================================
# 57. NOHUP - RUN PROCESS AFTER TERMINAL CLOSE
# ============================================================

nohup python3 pipeline.py > pipeline.log 2>&1 &


# ============================================================
# 58. TAIL - MONITOR NOHUP LOG
# ============================================================

tail -f pipeline.log


# ============================================================
# 59. DF - DISK SPACE
# ============================================================

df

df -h

df -h ~/data


# ============================================================
# 60. DU - DIRECTORY / FILE DISK USAGE
# ============================================================

du -h ~/data

du -sh ~/data

du -sh ~/data/*


# ============================================================
# 61. FREE - MEMORY USAGE
# ============================================================

free -m

free -g

free -h


# ============================================================
# 62. DROP CACHES
# ============================================================

# Flush pending writes:
# sudo sync

# Drop page cache:
# sudo sh -c "sync; echo 1 > /proc/sys/vm/drop_caches"

# Drop dentries and inodes:
# sudo sh -c "sync; echo 2 > /proc/sys/vm/drop_caches"

# Drop page cache + dentries + inodes:
# sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"


# ============================================================
# 63. WGET - DOWNLOAD FILE
# ============================================================

wget https://example.com/file.csv

wget -O sales.csv https://example.com/file.csv

wget -P ~/data/raw https://example.com/file.csv

# Resume interrupted download:
# wget -c https://example.com/file.csv


# ============================================================
# 64. SSH - REMOTE SERVER CONNECTION
# ============================================================

# Basic SSH connection:
# ssh username@hostname

# Specify port:
# ssh -p 2222 username@hostname

# Specify private key:
# ssh -i private_key.pem username@hostname


# ============================================================
# 65. SCP - COPY FILE TO REMOTE SERVER
# ============================================================

# Local → Remote:
# scp data.csv username@hostname:/home/username/data/

# Remote → Local:
# scp username@hostname:/home/username/data/data.csv .

# Copy directory:
# scp -r data/ username@hostname:/home/username/

# Specify private key:
# scp -i private_key.pem data.csv username@hostname:/home/username/data/


# ============================================================
# 66. IFCONFIG - NETWORK INTERFACES
# ============================================================

ifconfig

# Modern alternative:
# ip addr


# ============================================================
# 67. ZIP - COMPRESS FILES
# ============================================================

zip data.zip file1.txt file2.txt

zip -r data.zip project/

zip -9 data.zip file1.txt

unzip -l data.zip

unzip data.zip

unzip data.zip -d output/


# ============================================================
# 68. TAR - CREATE TAR.GZ ARCHIVE
# ============================================================

tar -czvf data_backup.tar.gz project/


# ============================================================
# 69. TAR - EXTRACT TAR.GZ
# ============================================================

tar -zxvf data_backup.tar.gz


# ============================================================
# 70. TAR - LIST ARCHIVE CONTENT
# ============================================================

tar -tzvf data_backup.tar.gz


# ============================================================
# 71. TAR - EXTRACT TO SPECIFIC DIRECTORY
# ============================================================

# Example:
# tar -zxvf data_backup.tar.gz -C output/


# ============================================================
# 72. APT - UPDATE PACKAGE INDEX
# ============================================================

sudo apt update


# ============================================================
# 73. APT - UPGRADE PACKAGES
# ============================================================

sudo apt upgrade


# ============================================================
# 74. APT - INSTALL PACKAGE
# ============================================================

# Example:
# sudo apt install tree


# ============================================================
# 75. VIRTUALENV - CREATE PYTHON ENVIRONMENT
# ============================================================

# Install virtualenv:
# pip install virtualenv

# Create environment:
# virtualenv venv

# Create using Python 3:
# virtualenv -p python3 venv

# Activate:
# source venv/bin/activate

# Check installed packages:
# pip list

# Deactivate:
# deactivate


# ============================================================
# 76. PYTHON VENV - STANDARD PYTHON ENVIRONMENT
# ============================================================

# Create environment:
# python3 -m venv venv

# Activate:
# source venv/bin/activate

# Deactivate:
# deactivate


# ============================================================
# 77. PIP FREEZE - SAVE DEPENDENCIES
# ============================================================

# pip freeze > requirements.txt

# Install dependencies:
# pip install -r requirements.txt


# ============================================================
# 78. WHICH - LOCATE EXECUTABLE
# ============================================================

which python3
which pip
which java
which git
which docker


# ============================================================
# 79. COMMAND - V - FIND COMMAND
# ============================================================

command -v python3
command -v git
command -v docker


# ============================================================
# 80. FILE PATHS
# ============================================================

# Current directory:
# .

# Parent directory:
# ..

# Home directory:
# ~

# Root directory:
# /

# Examples:
# cd ..
# cd ~
# cd /
# cd ~/Documents


# ============================================================
# 81. ABSOLUTE PATH
# ============================================================

# Example:
# /home/vinish/project/data/raw/sales.csv


# ============================================================
# 82. RELATIVE PATH
# ============================================================

# Example:
# project/data/raw/sales.csv

# From current directory:
# ./project/data/raw/sales.csv


# ============================================================
# 83. CD - SPECIAL PATH OPERATIONS
# ============================================================

# Go to parent:
# cd ..

# Go two levels up:
# cd ../..

# Go home:
# cd ~

# Go previous directory:
# cd -

# Go root:
# cd /


# ============================================================
# 84. VI - TEXT EDITOR
# ============================================================

# Open file:
# vi file.txt

# Important vi commands:
# i       -> Insert mode
# a       -> Insert after cursor
# Esc     -> Normal mode
# :w      -> Save
# :q      -> Quit
# :wq     -> Save and quit
# :q!     -> Quit without saving
# dd      -> Delete line
# yy      -> Copy/yank line
# p       -> Paste
# u       -> Undo
# Ctrl+r  -> Redo
# /text   -> Search


# ============================================================
# 85. NANO - TEXT EDITOR
# ============================================================

# Open file:
# nano file.txt

# Important nano commands:
# Ctrl+O  -> Save
# Ctrl+X  -> Exit
# Ctrl+W  -> Search
# Ctrl+K  -> Cut line
# Ctrl+U  -> Paste
# Ctrl+G  -> Help
# Ctrl+C  -> Cursor position


# ============================================================
# 86. TAB AUTO-COMPLETION
# ============================================================

# Press TAB while typing:
#
# cd pro<TAB>
# ls proj<TAB>
# cat data/<TAB>
#
# TAB automatically completes commands,
# filenames, directories, and paths.


# ============================================================
# 87. PIPES + TEXT PROCESSING
# ============================================================

cat application.log | grep -i "error"

ps aux | grep python

df -h | awk '{print $1, $5}'

sort file1.txt | uniq -c


# ============================================================
# 88. DATA ENGINEERING - LOG ANALYSIS EXAMPLE
# ============================================================

# Example commands:
#
# grep -in "error" application.log
# grep -ic "error" application.log
# tail -f application.log | grep -i "error"
# grep -in "warning" application.log


# ============================================================
# 89. DATA ENGINEERING - FILE SIZE CHECK
# ============================================================

# Example commands:
#
# df -h
# du -sh ~/data
# du -sh ~/data/*


# ============================================================
# 90. DATA ENGINEERING - PROCESS MONITORING
# ============================================================

# Example commands:
#
# ps aux | grep python
# top
# free -h
# df -h


# ============================================================
# END OF LINUX COMMAND PRACTICE
# ============================================================