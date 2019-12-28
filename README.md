# Linux port of Softporn Adventure (1981) by Charles Benton

I met "Chuck" Benton when I was a kid, maybe 10 years old, and he was showing me this, his new creation,
on his Apple II. He had just begun selling it. I remember being amazed at how intelligent the AI seemed, 
not to mention it was funny! It had adult themes that were very different from the other generic space 
games and arcade ports I was used to seeing on my Apple II. 

I still remember this 39 years later, but at one point, I innocently typed "TKAE" instead of "TAKE" and 
it scolded me by saying: "Learn to spell, idiot!!!". I was mesmerized that it even knew about my
spelling errors to give it a chance to insult me. I was in awe.

I'm thrilled to have access to the source and delighted it's in a high-level language. It's actually quite
readable even to this day. At the time, I had assumed it was written in AppleSoft BASIC, but it was too 
fast and too complex for that. 

I don't believe that this Pascal source code was the original that was compiled on the Apple II because
there is a comment at the start of the first source file that says, "24 for CP/M, 25 for IBM PC", referring
to the terminal console line height. This source must be a bit later in the history of this game, after
it was ported a bit. I would like to try to compile this under USCD Pascal for the Apple II.

Surprisingly little was needed to adapt this to a modern Pascal compiler. I chose Free Pascal because it 
is no cost, multi-platform, and it is easy to use.

## The Conversion

It took just an evening to get it to compile under Free Pascal and work. 

* There were some unused variables that the compiler was complaining about, so they were removed 
* The direction_name_string array was too short and resulting in an overflow situation
* The ReadKey() function call needed to be added to use the standard keyboard input versus using a global variable for input
* Instead of hard-coding the height of the terminal, it now adapts to your terminal height
* And that's really it

## Compiling

### Ubuntu / Debian

```
$ sudo apt install fp-compiler  # install the Free Pascal compiler (fpc)

$ fpc softpack.pas              # ignore linker "link.res contains output sections" warnings in Free Pascal's 3.0.x version
$ fpc softporn_adventure.pas    # ignore linker "link.res contains output sections" warnings in Free Pascal's 3.0.x version

$ ./softpack                    # one-time step; converts softporn.txt to softporn.msg message file
```

## Running

This game is of course entirely text-based, so you have to run it from a terminal. 

```
$ ./softporn_adventure          # runs the game
```

At any point, type "quit" to end.

## To do

* Need to test the save game functionality. 
* Need to figure out why the close() function doesn't want to compile?? It's commented out now.
