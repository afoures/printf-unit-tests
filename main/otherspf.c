#include <limits.h>
#include <stdint.h>

#include <stdio.h>
#include "ft_printf.h"

int				main(int argc, char *argv[])
{
	char	*str;
    int     c = 0xd800;

    str = "bla";
	printf(" - %d - [test %%s %%C] - l.%d\n", printf("[test %s %C]", str, c), __LINE__);
    printf(" - %d - [test %%C] - l.%d\n", printf("[test %C]", c), __LINE__);
    printf(" - %d - [test %%s %%d %%C] - l.%d\n", printf("[test %s %d %C]", str, c, c), __LINE__);
    printf(" - %d - [test %%y %%C] - l.%d\n", printf("[test %y %C]", c), __LINE__);
    printf(" - %d - [test] - l.%d\n", printf("[test]"), __LINE__);
    printf(" - %d - [test2] - l.%d\n", printf("[test2]"), __LINE__);
    printf(" - %d - [test5] - l.%d\n", printf("[test5]"), __LINE__);
    printf(" - %d - [test0123456789] - l.%d\n", printf("[test0123456789]"), __LINE__);
}