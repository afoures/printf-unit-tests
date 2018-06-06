#include <limits.h>
#include <stdint.h>

#include <stdio.h>
#include "ft_printf.h"

int				main(int argc, char *argv[])
{
	char	*str;
    int     c = 0xd800;

    str = "bla";
	ft_printf(" - %d - [test %%s %%C] - l.%d\n", ft_printf("[test %s %C]", str, c), __LINE__);
    ft_printf(" - %d - [test %%C] - l.%d\n", ft_printf("[test %C]", c), __LINE__);
    ft_printf(" - %d - [test %%s %%d %%C] - l.%d\n", ft_printf("[test %s %d %C]", str, c, c), __LINE__);
    ft_printf(" - %d - [test %%y %%C] - l.%d\n", ft_printf("[test %y %C]", c), __LINE__);
    ft_printf(" - %d - [test] - l.%d\n", ft_printf("[test]"), __LINE__);
    ft_printf(" - %d - [test2] - l.%d\n", ft_printf("[test2]"), __LINE__);
    ft_printf(" - %d - [test5] - l.%d\n", ft_printf("[test5]"), __LINE__);
    ft_printf(" - %d - [test0123456789] - l.%d\n", ft_printf("[test0123456789]"), __LINE__);
}