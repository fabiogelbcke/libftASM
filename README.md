# libftASM
Small library built using 64bit assembly, Intel syntax.
compiling using 'nasm -f macho64'
No syscalls unless explicitly said otherwise

Required functions (declaration and behaviour exactly as per manual pages):
• bzero

• strcat

• isalpha

• isdigit

• isalnum

• isascii

• isprint

• toupper

• tolower

• puts (write allowed)

• strlen

• memset

• memcpy

• strdup (malloc allowed)

And recreate the command cat from unix shell.

Extra functions:

-isupper

-islower

-isnum (is number)

-strcpy

-putchar

-putsub (pring substring, parameters: the string, beginning index and substring length)


