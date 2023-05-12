This is the flow- and usage-chain graph of the original Applesoft-based game. It kicks 
off with INTRO.bas:

```
INTRO.bas [1]
	⮡ SOFTPORN ADVENTURE.bas [2]
		⮡ _____.bas [3]
			⮡ CHAIN.asm [4]
				⮡ __.bas [5]
					____.txt [6]
					\\\\.txt [7]
					\\\.bas [8]
```

1. boot loader
2. contains one-line Applesoft program to call an embedded machine language program
3. initialize Applesoft variables and/or load saved game
4. preserves Applesoft variables and links into next program
5. 👈 game logic 👀 here
6. 120 description records
7. 169 location records ("I'm in a...")
8. save game logic

## Trickery

You may be confused to see "SIN" and "LOG" within `_____.bas`. "SIN" in this case 
translates to an _ character and "LOG" means the \ character. They are used to make the 
file names hard to access, as the files used those characters. 
 
Here's my translation:

```
"OPEN SIN SIN SIN SIN ,L560" == "OPEN ____"
"OPEN LOG LOG LOG LOG ,L560" == "OPEN \\\\"
CALL 520" SIN SIN "          == "RUN __"
```

I believe it was a simple obfuscation technique because the Apple II+ keyboard did not 
have those characters and so a home user would be unable to type:

```
LOAD __
```

... and see the full Applsoft game logic that can be simply LIST'ed!

## About the files

All of the files in this directory were yanked from the original 5.25" floppy diskette.

The Applesoft and binary files were detokenized and disassembled using the excellent 
[Diskbrowser.jar](https://github.com/dmolony/DiskBrowser).

I added suffixes to the file names to make them easier for modern tools to understand.
