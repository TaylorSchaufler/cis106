# Table of Contents
[Changing and listing directories](#changing-and-listing-directories)
[Cat, paste, and sort](#cat-paste-and-sort)
[mkdir, touch, mv, man, and wildcards](#mkdir-touch-mv-man-and-wildcards)
[Command line text editors](#command-line-text-editors)
[Managing Data (archives and file compression)](#managing-data)

# Changing and listing directories

Linux can run multiple processes at the same time, rather than doing instructions 1 by 1

Professor recommends Nemo file manager

FUCK ADHD, WORK ADDERALL DAMN YOU

Linux uses tree like structure, root being the "source", and everything else being branching paths from there

Root is represented by / I think

pwd displays current directory
cd changes directory 
	to change to a folder in the directory you're in, you can just do "cd foldername".
	to change to a specific folder, you can also just type out the specific directory
	cd ../ lets you go back a directory, cd ../../ lets you move back 2, etc
	clear clears the screen, as a reminder
	using no argument in cd automatically takes you to your home directory (not /home, but /home/username)
	cd ~ also does that, I think?
	cd $HOME also does it
	cd - takes you to your previous working directory
	man ls displays how it works, verious commands I think, etc
	ls -lh shows file sizes in directory

lsls lists the files in the current directory

# Cat, paste, and sort

the cat command is used to display the content of a file
cat -n lets you number the lines
cat -b numbers lines, without counting lines that are empty other than newlines in that numbering
cat -s suppresses empty lines

tac is the opposite of cat, in that it lists lines in reverse order, from bottom to top instead of top to bottom

more is a pager program. Unlike cat, allows one to move their (in-terminal) cursor up and down. Not an editor, just a viewer. Can navigate using the arrow keys. Using the space bar brings you to the bottom and quits.
more -10 shows them 10 entries at a time
less is another pager program that displays the content of a file one page at a time. It's generally preferable, due to being faster, as more loads all pages at once, taking up more RAM.

The head command displays the top N numbers of lines of a given file. 
example: head -15 todo.md lists the first 15 lines

cut [option] [file] cuts out characterse from a list while displaying I think, had to step out a moment
robertalberto.com/linuxcommands/commands/cut.html is useful for looking up commands

cut -d ':' -f1 /etc/passwd lists all the users on your system
Jesus christ, these are going by fast
cut -d ':' -f1,7 --output-delimiter=' = ' /etc/passwd does something involving a delimeter

The paste command does... a thing, fuck.asdkfljasssssssssscm mn
It basically concatonates 2 files, kinda.
paste -d = ip.txt users.txt
outputted for me in the home directory
192.168.1.100=jdoe
192.168.1.101=mmary
192.168.1.102=katyx
=

sort -o sorteduser users.txt
asdofiklnadeswlnaeswf/;

wc -l /etc/passwd tells you the amount of entries in that file/directory
wc -l /etc/passwd | cut -b 1,2 sends the output of the first wc command to the second cut command, removing the characters "/etc/passwd/" from the output.

If my notes seem sparse, I apologize, but I usually don't take notes for a reason. It's an unnecessary amount of extra stress that I can usually just look up later if I have questions, and it makes it harder for me to focus in class on what they're actually doing.

# mkdir, touch, mv, man, and wildcards

mkdir = make directory (folder, basically)
mkdir animals = makes a folder called "animals"
mkdir animals food water = makes 3 folders named animals, food, and water
mkdir "animal crossing" = makes a folder called "animal crossing" 

escaping a character: Makes it so that a computer doesn't treat something as a value, but rather as a string.
mkdir animal\ crossing = also makes a folder called "animal crossing", by escaping a single character (specifically, the space character)
\n creates a newline, just like in c strings and python
mkdir can also be used by typing out full directories, like "mkdir /home/zeyo/Documents/games"

touch fileName makes a file
rm fileName removes a file
rm can delete empty directories, but not ones that have stuff in them
rm -r fps/ would remove the fps/ directory even if it has stuff in it, by recursively deleting the contents of the directory, and then the directory itself.

"mv source/ destination/" lets you move directories

cp source/ destination/ lets you copy directories
In order to copy a folder, you have to instead do "cp -r source/ destination/"

shortcuts in windows are equivalent to links in linux

Inode: A data structure that contains all the information about a file except the file name and its content

"stat filename" lets you find the inode, amount of links, and other info

Hard links: Files that point to data on the hard drive; uses the same inode, and does not create a copy of the data

"ln file hardlink" lets you create a hard link for one of those files, but I forget which one is the hard link

Soft links: Can be used among different file systems without problems. Known as shortcuts in windows. Symbolic links or soft links are a special type of file that point to other files instead of data in the hard drive. Does not share the same inode number. Not supported by FAT32

"ln -s file softlink" lets you create a symbolic link.

To check the manual of a command, use man + command
example: man ls

man -k 'searchterm' lets you search for manuals for whatever you look up

touch file{1..5}.txt creates file1.txt, file2.txt, file3.txt, etc

Wildcards:
The main wildcard is *

For example, ls *.txt would list all  files that end in .txt
ls f*g lists all files starting with f and ending in g
ls f* lists all files starting with f
ls *g lists all files starting with g

ls file?.txt will list all files with that name, replacing the question mark with whatever character would be there
So for our previous example with creating multiple files at once, it would list file1.txt, file2.txt, etc through file5.txt

# Command line text editors

## nano
A simple text editor that's built in to ubuntu. To do things with the file other than type, hit control and then one of the commands on the bottom. That's what the ^ means next to the letter.

To start nano, just type "nano" in the terminal.

## vim
Improved version of the vi command line. It's a cool text editor with a lot more options than nano.
To start, just type vim in the terinal

                                     VIM - Vi IMproved                                       
                                                                                             
                                      version 8.2.716                                        
                                  by Bram Moolenaar et al.                                   
                          Modified by team+vim@tracker.debian.org                            
                        Vim is open source and freely distributable                          
                                                                                             
                               Help poor children in Uganda!                                 
                       type  :help iccf<Enter>       for information                         
                                                                                             
                       type  :q<Enter>               to exit                                 
                       type  :help<Enter>  or  <F1>  for on-line help                        
                       type  :help version8<Enter>   for version info                        

To exit, hit escape to enter the command mode, and type ":q"

: -> prefix for entering command line mode
q -> shortcut for quit
a -> short for all buffers

While in normal mode, press i to go into insert mode
Press esc to return to normal mode

After having typed something, if you try to escape without saving, you'll get a message saying E37: No write since last change (add ! to override)

To escape anyway, just press ! after the ':q' to override that message and quit anyway.

The command to save is ':w filename' if it doesn't have one yet, or ':w' otherwise. If it has a space in the name, be sure to use quotations like so: :w "file name"

To open a file with vim, type 'vim filename'

You can use the command mode to change the file you're editing. To do this, do ':e newfile'

'cat food.txt > food2.txt' lists the data in food.txt to food2.txt, as a reminder. > is i/o stuff.

w and e allows one to move word by word in normal mode.
Typing a number before hand lets you determine the number of words or characters you wanna move ahead (in normal mode).
Parentheses lets you move to the next or previous sentance. A number before hand lets you skip entire paragraphs.

G moves to end of file (in normal mode)
gg moves to the beginning of a file
CTRL + f moves a page forward at a time
CTRL + b moves a page backward at a time.
To move multiple pages at a time, simple provide a number before the command.

':set nu' lists line numbers (VERI IMPORTANT FOR CODING!!!)

When opening the file, "vim filename +2" will allow you to open the file at line 2. (Also, VERI IMPORTANT FOR CODING!!!)

To delete a word quickly, in normal mode, type d and w
q is undo in normal mode
copy is y and w
paste is p and w, though it pastes after the insertion point
To do it before the insertion point, do capital p\
yy to copy an entire line
x and w cuts the word
xx cuts the line
you get the point, I think, but the particular letters can be confusing understandably

d and then /recently deletes everything till the word recently.

(sorry for poor formatting at this point, I'm typing as fast as I can. Bad notetaker)
Also, I'm writing this in vim now, so I'm doing my best to follow it. Though I think I might have broken something once or twice.


To open two windows side by side, do ctrl + w then press v
To open a third at the bottom, ctrl + w then s

To switch between them, you need the directional buttons, but I didn't manage to write those fast enough.

shift o enters a new empty line
:r file name = insert the text of the file given into the file being edited

Taylor

I didn't type that, I just typed ':r MyName.txt'

:!+command lets you run a command and output it to a file.

# MANAGING DATA

Note: If there are any issues with my note taking, it's probably partially cause I'm using Vim and not entirely used to it yet. And just a bad notetaker in general. Then again, my Vim notes have been pretty helpful so far, even though I missed the directional movement instructions. 


Backup: Copies files and directories to an archive
system backup: Use to restore data in case of a system failure or data loss and corruption
Archive: File containing many other files, each of which is still identified by its filename, owner, permissions, and timestamp
Important directories to include in system backups:
- /etc contains core config files, security files, network config files, user and group info, etc
- /home each user has a /home directory
- /opt software and packages added after the default installation
- /root root user's home directory
- /var system-specific information that changes while the system is running normally


## Archiving utilities
- Tar (tape archive): creates archives by combining files and directories into a single file
- CPIO: Creates an archive, restores files from an archive, or copies a directory hierarchy. The cpio utility has 3 modes of operation:
	1. Create (copy-out) mode places multiple files into a single archive
	2. Extract (copy-in) mode restores files from an archive
	3. Pass-through (copy-pass) mode copies a directory hierarchy

## The tar program:
Usage:
- To create an archive:
	Tar + options + archive name + files to add to archive
- To extract an archive:
	tar + options + file to extract

-c or --create; Creates an archive file
-t or --list; Lists an archive's contents
-x or --extract; Extracts an archive's contents
-f or --file; Specifies the archive file's name and location (ALWAYS REQUIRED)
-v or --verbose; Displays details about copying files to and extracting files from archives
-z or --gzip, --ungzip; Filters an archive through gzip

'tar -cf files.tar file1 file2' - creates an archive called files.tar, and archives file1 and file2 within it.

'tar -cf myfiles.tar ~/Downloads/* ~/Pictures/*' - archives everything in Downloads and everything in Pictures directories. To archive the folders themselves, simply remove the asterisks. To only archive pdf files in that, instead write '~/Downloads/*.pdf'. For multiple specific extensions, '~/Downloads/*.{jpeg, png, gif}' or whatever extensions you're looking for.

A file in an archive is called a 'member'.

Desperately had to take a bathroom break, so hopefully I didn't miss much. Apparently we're talking about curl? Sorry if that's a problem, but I'd rather my room didn't smell like an amazon warehouse.

J option that wasn't mentioned before: decompresses.

-r adds files to an existing archive

## The CPIO program
CPIO requires a list of files to archive. The option to create an archive is -o
- ls | cpio -ov > archive.cpio
To extract an a archive to cpio use the -i option with <
- cpio -iv < archive.cpio
Archive specific files
- find . -iname *.sh | cpio -ov > scriptsArchive.cpio
Create a tar archive with cpio
- cpio -idv -F sample.tar
View the content of *tar Archive File
- cpio -it -F sampl-r adds files to an existing archive

## The CPIO program
CPIO requires a list of files to archive. The option to create an archive is -o
- ls | cpio -ov > archive.cpio
To extract an a archive to cpio use the -i option with <
- cpio -iv < archive.cpio
Archive specific files
- find . -iname *.sh | cpio -ov > scriptsArchive.cpio
	- the . can be ANY PATH (I think, losing track of what's going on cause I'm spending more focus on typing so I have good notes)
Create a tar archive with cpio
- cpio -idv -F sample.tar
View the content of *tar Archive File
- cpio -it -F sample.tar
Extract *.tar Archive File using cpio
- cpio -idv -F sample.tar
View the content of *.tar Archive File
- cpio -it -F sample.tar

## The tar utility
The GNU ar program creates, modifies, and extracts form archives.
It's similar to tar, and I don't think this slide will be up for long.
Yep, it wasn't.

## File compression
VERY important to keep costs down on storage
The first 3 seasons of silicon valley were apparently about it. Might wanna make a point of watching that show when I'm not desperately backed up on work.

Some patent troll copyrighted the word "compress". I really hate copyright law...

- Compress was originally the name of a utility for file compression.
- Gzip (GNU Zip) has better compression ratios than compress does and can uncompress files that were compressed using the compress command FUCK
Slide changed

- Gzip, bzip2, and xz compress files in place meaning the original file is deleted after compression.
= bzip2 offers better compression ratios in compariosn to gzip
- xz produces better compression ratios than both
- 7zip is apparently the best, though xz is similar.

DO NOT confuse gzip with zip. Zip is used to pack and unpack zip archives containing several files compressed into a single file that has been imported from or is being exported to a Windows system.

gunzip == gzip -d
bunzip == bzip2 -d
unxz == xz-d

terminal's blocking the rest, including what that means.

- Zip is an archiving and compression utility. As is 7zip and rar.
- rar is proprietary, so we can't make them in linux. We can extract them though.
- To use zip: zip + archiveName.zip + files to include in archive.
- To use the fucka;lsdfkvj'awle I needed that. I was gonna write down what the 7zip package was on linux so I could install it. Guess I'll have to go to github for that.


File compression 7zip stuff I missed cause of technical difficulties (computer froze not long after I entered the call)

## Linux File Permissions

### File Ownership
- A file can be owned only by one user and one group
- ls -l shows you the file user owner and group owner
- The /etc/passwd file contains a list of all the users in Linux
- The /etc/group file contains a list of all the groups in Linux
- The chown command is used for changing group owner.
Syntax: chown user:group file
Example:
chown john file.txt
chown :marketinGroup file.txt
chown john:marketingroup file.txt

I wish I comprehended what I just typed, but I just mindlessly typed ;-;

### Files vs Directories

R (read) gives permission to open a file
W (write) gives permission to open a file and edit
X (execute) allows user to run the file (as long as it's a program or a script)
It's different with directories, but NO TIME

rw-r--r-- 1 martin users 0 2012-04-11 09:20 file1
The hyphen represents a permission that hasn't been granted
In this example, it means the user doesn't have execute permission
The group category is set to r--, meaning the group only has read permission
Similarly, the other category is set to r--, meaning every user on the system (other than file owner and group) has read permission but not write or execute

###The chmod command

The chmod (change mode) command is used to change permissions on files and directories and has the syntax: chmod permissions file/directory

## Symbolic notation

u (user)
g (group)
o (other)
a (all)

chmod u+x script.sh
chmod o-x script.sh
chmod 


### Example of all of this

zeyo@pop-os:~/Downloads$ touch file1
zeyo@pop-os:~/Downloads$ ls -l
total 98808
-rwxrwxrwx 1 zeyo zeyo      922 Jan 24 22:27 ChaosBolt.py
-rw-rw-r-- 1 zeyo zeyo        0 Apr 21 18:04 file1
-rw-rw-r-- 1 zeyo zeyo 95117944 Apr 18 01:45 Gender-and-Age-Detection-master.zip
-rw-rw-r-- 1 zeyo zeyo  6052517 Apr 16 00:22 redditsave.com_neko_janai_desu-vq7rsj0fvvs61.mp4
zeyo@pop-os:~/Downloads$ chmod u+x file1
zeyo@pop-os:~/Downloads$ ls -l
total 98808
-rwxrwxrwx 1 zeyo zeyo      922 Jan 24 22:27 ChaosBolt.py
-rwxrw-r-- 1 zeyo zeyo        0 Apr 21 18:04 file1
-rw-rw-r-- 1 zeyo zeyo 95117944 Apr 18 01:45 Gender-and-Age-Detection-master.zip
-rw-rw-r-- 1 zeyo zeyo  6052517 Apr 16 00:22 redditsave.com_neko_janai_desu-vq7rsj0fvvs61.mp4
zeyo@pop-os:~/Downloads$ chmod g-w file1
zeyo@pop-os:~/Downloads$ ls -l
total 98808
-rwxrwxrwx 1 zeyo zeyo      922 Jan 24 22:27 ChaosBolt.py
-rwxr--r-- 1 zeyo zeyo        0 Apr 21 18:04 file1
-rw-rw-r-- 1 zeyo zeyo 95117944 Apr 18 01:45 Gender-and-Age-Detection-master.zip
-rw-rw-r-- 1 zeyo zeyo  6052517 Apr 16 00:22 redditsave.com_neko_janai_desu-vq7rsj0fvvs61.mp4

chmod u=---, g-w, o-r
would leave a freshly made empty file with no user permissions, only write group permissions, and only read other permissions. This is assuming that beforehand, it starts with all 3 having read and write permissions, but not execute.

numeric notation:
0 = ---
1 = --x
This sucks to write them all out, but the syntax would be 'chmod 042 filename'
					 			(ugo)



