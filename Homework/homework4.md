# Homework: 4  The Linux Filesystem

Watch the video [“Linux Filesystem Explained”](https://www.youtube.com/watch?v=HbgzrKJvDRw) and read the presentation [“How to navigate the filesystem”](http://bit.ly/3t30rMQ) then answer the questions below.

1. **Explain the difference between absolute path and relative path:**

Absolute path is the path to a file or directory from the root. Relative path, on the other hand, typically refers to the path relative to the current working directory. I say typically, cause ~/Documents would be an example of a path relative to the home directory, and as such is considered relative path even if that's not your current working directory.

2. **Why Linux uses / instead of \ for its directory paths?**

Considering they're the black sheep in this regard, the better question would be why Windows uses `\` instead of `/`. In DOS, the `/` character was used as a "switch" character, similar to the `-` character in Unix. When they introduced support for directories with DOS 2.0, IBM wanted to keep backwards compatibility with older DOS applications, so they used `\` to represent directories instead.

3. **In Windows, these files are all the same: File FILE file and FiLE. But in Linux this is not the case, Why?**

Linux is case sensitive, while Windows isn't. F and f are different characters by ASCII and unicode standards. Linux is being more accurate in that regard.

4. **What is the Filesystem Hierarchy Standard (FHS) and who maintains it?**

It's a standard that dictates directory structure and contents in linux distributions. As for who maintains it, that would be the Linux Foundation.

5. **Explain what type of files are stored in the following directories:**

Directory | What is it used for?
--------- | --------------------
/bin    | Stores binaries for basic programs such as cat or ls
/dev    | Stores files representing devices
/etc    | Stands for "etcetera", stores configurations
/home   | Stores the home directories for the human users
/lib    | Stores libraries     
/opt    | Stores manually installed software from vendors
/tmp    | temporary directory. Programs store files here temporarily.
/var    | Contains files and directories that are expected to grow in size
/proc   | Stores pseudo-files containing information about system processes and resources
/usr    | A confusing mess of a directory that stores applications the user installs 

6. **How does a period at the beginning of a file name means (example .bashrc)?**

I'm guessing you mean "What does a period at the beginning of a file name mean"? It means the file's hidden. You won't be able to see it with ls without the -a option, and in a file manager, you might have to tweak some settings to make them visible.

7. **Which command would you use to list all the files inside the /usr/share/ directory?**

`ls -a /usr/share`

8. **If you are working in the /usr/share/icons directory and want to move to your home directory, which command would you use?**

`cd`, just on its own

9. **Explain what these commands do:**

`cd .config/.htop; cd ../; ls -lX`

You're navigating to the `.config/.htop` folder with relative path, navigating back one directory (so, to `.config`), and long listing the files alphabetically by entry extension.

10. **John has a lot of files in the directory /var/www/html/webapp. He wants to long list all the files, including hidden files, by modification time (newest first), and with human-readable file sizes. Which command should he use conjuring that his current working directory is:** 
    
`/home/john/.git/`

ls -lath /var/html/webapp