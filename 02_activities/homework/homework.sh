#!/bin/bash

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir dir1 dir2 dir3 dir4 dir5
# 2. How would you verify the creation of all 5 directories?
ls
# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
cd dir1
touch file1.txt
echo “I love data” >> file1.txt
cd ../
cd dir2
touch file2.txt
echo “I love data” >> file2.txt
cd ../
cd dir3
touch file3.txt
echo “I love data” >> file3.txt
cd ../
cd dir4
touch file4.txt
echo “I love data” >> file4.txt
cd ../
cd dir5
touch file5.txt
echo “I love data” >> file5.txt
# 4. How would you verify the presence of all 5 files?
cd ../
ls -r
# 5. How would you append to one of the existing files " and machine learning!"?
cd dir1
echo “ and machine learning!” >> file1.txt
# 6. How would you verify that the text was indeed appended to the existing file?
cat file1.txt
# 7. How would you delete all files except for the one with the appended text?
target_file=$(grep -rl "I love data and ml")
find . -type f ! -path "./$target_file" -exec rm {} +
# 8. How would you navigate back to the parent directory containing all the directories?
pwd
cd ../
# 9. How would you remove each directory along with its contents?
rm -r dir1 dir2 dir3 dir4 dir5
# 10. How would you verify that all directories and files have been deleted?
pwd
ls