### Latest 64-Bit PicoLisp + Vim in a slim Alpine Linux container.

This builds the latest source code of the PicoLisp programming language.  Some have expressed a desire to have the latest source rather than specific versions bulit and here it is!  Much thanks to Alexander Williams, Alexander Burger, and the whole picoLisp community for helping me in the past!  For the smallest image possible I compile the source in an Alpine container and copy the compiled source into a fresh container without GCC, etc.  There you have it, a tiny container to run your PicoLisp programs with. Vim is included however (edit 'sym) does not work just yet.  I will likely build a few more versions with different tooling like the vip editor and more.  **This svelte image weighs in at a mere 39.5MB!**

Simply run:
``` code
docker pull progit/pil-alpine-minimal
```
Then...
``` code
docker run -it --rm progit/pil-alpine-minimal 
```
... and you'll be immediately dropped into the REPL.
___

To access to the shell:

``` code
docker run -it --rm progit/pil-alpine-minimal /bin/sh
```

and to share one of your local directories you can do:

``` code
docker run -it --rm -v /home/picolisp-rocks/src/my-cool-project:/home/pil/my-cool-project progit/pil-alpine-minimal /bin/sh
```

Now you have read/write access to the contents of the /home/picolisp-rocks/src/my-cool-project directory in your container.  There are more ways to get permanent storage in docker containers but that is beyond the scope of this appliance.  See data volumes and data persistence in containers.
___

Taken from **(PDF)** [PicoLisp: The Scalpel of Programming A Radical Approach to Software Development](picolisp.com/wiki/!pdf?-B1103):

If some programming languages claim to be the "Swiss Army Knife of Programming", then PicoLisp may well be called the "Scalpel of Programming": Sharp, accurate, small and lightweight, but also dangerous in the hand of the inexperienced. Less is more! - The maxim is: Keep it simple, and the programmer in control!

___

PicoLisp is one of the best kept secrets of development.  It includes a database, web application framework, and a Prolog engine all as part of the language. Now it's available in a container for OS agnostic development.  I chose Tinycore to keep in line with some of PicoLisp's values of small and simple.

**Happy hacking!**
