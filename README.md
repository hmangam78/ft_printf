# ft_printf
ft_printf is a small reimplementation of the standard C library function printf, developed as part of the curriculum at School 42. The goal of this project is to reproduce a subset of printf functionality while following 42's coding standards and learning about variadic functions, formatting, and low-level string/number handling in C.

Project status
This repository contains a working ft_printf implementation intended to be compiled as a static library (libftprintf.a). Object files are produced in an obj/ directory and sources live under SRCS/ with headers in includes/.

Features implemented
The implementation covers a typical 42-style subset of printf (expected features):

Characters: %c

Strings: %s

Pointers: %p

Signed integers: %d, %i

Unsigned integers: %u, %x, %X

Percent sign: %%

(Exact supported specifiers may vary slightly depending on your local copy in SRCS/ — check source files for details.)

Repository layout
Makefile — build rules. Produces libftprintf.a and places object files in obj/.

includes/ft_printf.h — public headers for the library.

SRCS/ — implementation .c files:

ft_pr_hex.c

ft_pr_unsigned.c

ft_putnbr.c

ft_putstr.c

ft_printf.c

ft_putchar.c

ft_putptr.c

obj/ — compiled .o files (created by make).

Build
From the project root (/home/hector/42/Portfolio/ft_printf/ft_printf) run:

make
This will:

create the obj/ directory if it does not exist,

compile each source in SRCS/ into obj/*.o, and

archive them into libftprintf.a.

Useful make targets:

make            # build libftprintf.a (default)
make clean      # remove object files in obj/
make fclean     # remove object files and libftprintf.a
make re         # fclean then make
Usage
To use the library from another C file, compile your program and link with libftprintf.a. Example minimal test:

// test_printf.c
#include "ft_printf.h"
​
int main(void)
{
    ft_printf("Hello %s, number: %d\n", "42", 123);
    return 0;
}
Compile and link:

# assuming your current directory is the project root
gcc -Iincludes -L. -lftprintf test_printf.c -o test_printf
# or explicitly linking the archive
gcc -Iincludes test_printf.c libftprintf.a -o test_printf
Then run:

./test_printf
Coding style and constraints
This project is typically developed under the constraints and checks used in School 42:

No external libraries other than the standard C library.

Strict compiler flags (e.g. -Wall -Werror -Wextra).

Function and file-level coding standards enforced by reviewers.

Use of variadic functions (stdarg.h) to process the format string.

Testing and verification
There are no automated tests included in this repository by default. To verify behaviour:

Build the library with make.

Compile small test programs that call ft_printf and compare their output to the system printf.

Edge cases to test manually:

NULL strings passed to %s.

Large integer values for %d, %i, %u.

Pointer formatting for NULL pointers.

Mixing many different specifiers in a single format string.

License & Authors
This project is part of the School 42 curriculum. Use and redistribution may be subject to your local course rules and the original author's permissions.

Author: Hector Gamiz (hgamiz-g)
