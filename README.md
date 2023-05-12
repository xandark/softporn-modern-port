# Modern port of Paul Schlyter's Softporn Adventure, originally by Chuck Benton

The [basis](https://github.com/historicalsource/softporn) for this project is the unattributed 
Turbo Pascal/IBM PC port (1986) of the original game by Chuck Benton in Applesoft BASIC/Apple II (1981). 

This Pascal port has hints in the code for CP/M and IBM PC targets, which make it very easy to port to 
modern console-based systems, like our Unix derivatives. That's the purpose of this code base, 
to compile and run on modern systems.

## Is this particular "historical source tree" canonical?

Short answer, no.

This port appears to be a faithful translation from the BASIC source, with the most notable change 
that text is lower case instead of ALL CAPS and the textual descriptions are expanded to 80 columns, 
unlike 40 of the original Apple II version.

Within the Pascal source code, the author and purpose of this port is not clear, and so we have to 
look outward. The [game's Wikipedia article](https://en.wikipedia.org/wiki/Softporn_Adventure) mentions 
only the shareware Microsoft Quick-C port by Gary Thompson from the late 80's.

On the [getlamp.com website](http://www.getlamp.com/cast/20060526benton/index.html), there's a summary 
of a video interview with Chuck Benton regarding Softporn Adventure, where we learn the working title 
was "Super Stud Adventure" 🤔 yet there is no mention of other console-based ports.

The timestamps on these Pascal source files (17 May - 7 June 1986) do not align to any re-releases of 
the game for other platforms. At that time, the graphical 
[Leisure Suit Larry in the Land of the Lounge Lizards](https://en.wikipedia.org/wiki/Leisure_Suit_Larry_in_the_Land_of_the_Lounge_Lizards) 
spin-off was just about to be released the following year. 

Finally, going back to 26 Oct 2007 on [comp.sys.apple2](https://groups.google.com/g/comp.sys.apple2/c/sG9UEJCDmhE/m/V4m4UfXppjEJ),
we find a *direct quote* from Paul Schlyter where he says, 

> ... The most fun programming environment for the Apple 2 was IMO Turbo
> Pascal for CP/M. For fun (and also to learn Pascal thoroughly) I once
> rewrote the classic Apple II game "Softporn Adventure" in Turbo Pascal
> on an Apple II - and with almost no effort at all that program was
> ported to MS-DOS computers as well ...

But which version? Another quote from 29 Apr 1996 on [rec.arts.int-fiction](https://groups.google.com/g/rec.arts.int-fiction/c/UiBEBy8YRJM)
provides the code archive and says it was...

> rewritten by Paul Schlyter in Turbo Pascal 3.0 for CP/M and DOS

So this Turbo Pascal 3.0 source tree was a learning exercise for an independent developer, nothing more. 
Fortunately, such a faithful reproduction was possible because the original Applesoft BASIC code was 
right there on the 1981 game disc and could be extracted and printed out. I have included that code here. 

By the way, this is a wonderful advantage of interpreted languages such as BASIC, where the actual source 
code can be viewed by the consumer and take on new life many years after the product has been abandoned. 


## The Conversion

Surprisingly little was needed to adapt this to a modern Pascal compiler. I chose [Free Pascal](https://www.freepascal.org/) 
because it is no cost, multi-platform, and it is easy to use. The 3.2 version is preferred over the 3.0 
as the latter will spit out annoying link warnings, yet they can be ignored.

It took just an evening to get it to compile and work. 

* Changing the source names to end in .pas so that modern editors will automatically do proper syntax highlighting
* Added an explicit "uses Crt;" to reference this standard unit
* Change variables named "object" to "obj" as "object" is now a reserved keyword in modern Pascal
* There were some unused variables that the compiler was complaining about, so they were removed 
* Fixed a bug: the direction_name_string array was too small and has been resulting in an overflow situation
* Replaced read( kbd, ch ) with ReadKey(), as the former doesn't map to modern Pascal
* Instead of hard-coding the height of the terminal, it now adapts to your terminal height
* Added a `$define cheat` to give you $10,000 at the start and a `$define omit_extra_newlines` to not stick a blank newline everywhere
* And that's really it!

## Compiling

### Ubuntu / Debian from the terminal

```
$ sudo apt install fp-compiler  # install the Free Pascal compiler

$ fpc softpack.pas              # compile the tool
$ fpc softporn_adventure.pas    # compile the game

# ignore these messages if you see them, they're harmless: 
#   "link.res contains output sections"

$ ./softpack                    # perform one-time tooling step
```

The last step converts softporn.txt to obfuscated softporn.msg message file.

## Running

This game is of course entirely text-based, so it runs in a console/terminal.

### From the terminal

```
$ ./softporn_adventure          # runs the game
```

The game has been played through to its winning state, it is verified to work. 

As in the initial help screen, type "save" to save your progress, and "restore" to bring it back. 
At any point, type "quit" to end.

### From a graphical file explorer

Just click the "Softporn Adventure.desktop" file. No need to install the program in any special 
location; it will magically run from the folder you've compiled into. (Tested under Linux/KDE 
Plasma Desktop [5.25] launched from Dolphin file browser.) It will save games to the directory 
of the executable.

### Official game description

The object of SOFTPORN ADVENTURE is to find -- and seduce -- three different
girls.  They have very different personalities, so tricks that work on one
girl usually won't work on another girl.

The game has three different areas -- Disco, Casino and Bar.  You start off
in the Bar with $1000.  You'll need more money than that, so you'll have to
make more money during the game.

## Further Ports

This shouldn't be too difficult to do--just a matter of some possible ifdef's and testing. 
Pull requests accepted.

## Background

I met the author of Softport Adventure, "Chuck" Benton, when I was a kid, maybe 10 years old, 
and he was showing me this, his new creation, on his Apple II. He had just begun selling it under 
his own label, Blue Sky Software. I remember being amazed at how intelligent the AI seemed, not 
to mention it was funny! It had adult themes that were very different from the other generic space 
games and arcade ports I was used to seeing on my Apple II. 

I still remember this 39 years later, but at one point, I accidentally typed "TKAE" instead 
of "TAKE" and it scolded me by saying: "Learn to spell, idiot!!!". I was mesmerized that it even 
knew about my spelling errors to give it a chance to insult me. I was in awe of what seemed like magic.

## Links

[Paul Schlyter's personal website and contact](http://stjarnhimlen.se/english.php)
