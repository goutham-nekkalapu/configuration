

### Navigating in vim:
```
e    : towards the end of the word 
w    : move forward to the beginning of next word 
b    : move back word to the beginning of the previous word
3w   : move forward 3 words 

$    : move to the end of the sentence 
^    : move the first non blank space 

10j  : jump forward 10 lines 
10K  : jump backward 10 lines 
G    : jump to the start of the line 
gg   : go to the start of the file 
```

### Spell checking in VIM 
```
:set spell          : enable spell checker 
:set nospell        : disbale spell checker 
]s                  : find the misspelled word after cursor (Forward search)
[s                  : find the misspelled word before cursor (Backward search)
z=                  : correct spelling suggestions. Navigate to the word 
                      misspelled and then type 'z=' for suggestions.
zg                  : add to exception list  
zug                 : to undo the addition to expection list. Navigate
                      to a word and enter 'zug' to remove form exception list 
zw                  : to mark a word as misspelled even though the
                      dictionary says its correct 
zuw                 : to undo the marking of a word as misspelling 
```

- We can add some words as exceptions, Eg: name, email etc. These words can be
  added to a file and in future these would be ignored as misspellings 
- For this first create a directory:     
    - mkdir -p ~/.vim/spell/
- Set spellfile using 
    - ':set spellfile=~/.vim/spell/en.utf-8.add'
- Setting US english 
    - ':set spell spelllang=en_us'
- These can be added to '.vimrc' file 


### To copy from one file to another
Assuming you are already inside a file where you have to paste text.

```
1. :w (first save the current content) 
2. :e file2
3. goto location and yank (say yy)
4. :b 1 (goto buffer 1, i.e. return back to original file)
5. goto location and paste (p)
```

### To copy, delete multiple lines without counting the number of lines 
In normal mode, go to the beginning of the section that you want to yank.

```
1. Type mk to mark this spot as k.
2. Go to the end of the section you want to yank using whatever movement commands you like.
3. Type: y'k (y-yank, <single quote-go to mark>, k) To yank from the mark to the current location.
4. You can paste those lines wherever you want with p
5. Similarly, d'k will cut/delete the lines from the current location to the mark.
```

### Replacing words 
``` 
:%s/foo/bar      : to replace the first occurrence of foo with bar
:%s/foo/bar/g    : to replace the foo with bar in all the lines of this file
```

### Indenting the code 
- type 'gg=G'


### Reformating already written documents
Lets say there are some documents already written, and we want to 
reformat them using current 'vimrc' settings
like text wrapping etc; we can use the following commands for the same 

``` 
1. gw or gq 
2. gqG : to reformat the entire file 
```

### Vimrc settings for wrapping text 
- If your goal, while typing in insert mode, is to automatically 
soft-wrap text (only visually) at the edge of the window

```
set number # (optional - will help to visually verify that it's working)
set textwidth=0
set wrapmargin=0
set wrap
set linebreak # (optional - breaks by word rather than character)
```

- If your goal, while typing insert mode, is to automatically hard-wrap
text (by inserting a new line into the actual text file) at 80 columns:

```
set number # (optional - will help to visually verify that it's working)
set textwidth=80
set wrapmargin=0
set formatoptions+=t
set linebreak # (optional - breaks by word rather than character)
```

- If your goal, while typing in insert mode, is to automatically 
soft-wrap text (only visually) at 80 columns:

```
set number # (optional - will help to visually verify that it's working)
set textwidth=0
set wrapmargin=0
set wrap
set linebreak # (optional - breaks by word rather than character)
set columns=80 # <<< THIS IS THE IMPORTANT PART
```
