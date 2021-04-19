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

