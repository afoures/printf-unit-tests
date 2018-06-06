#include <limits.h>
#include <stdint.h>

#include <stdio.h>
#include "ft_printf.h"

int				main(int argc, char *argv[])
{
	char	*str;

	str = "{b}[42 is awsome]{n}";
	ft_printf(" - %d - [42 is awsome] - l.%d\n", ft_printf(str) - 2, __LINE__);
	str = "{b}[%d is awsome]{n}";
	ft_printf(" - %d - [%%d is awsome] - l.%d\n", ft_printf(str, 42) - 2, __LINE__);

	str = "{r}[42 is awsome]{n}";
	ft_printf(" - %d - [42 is awsome] - l.%d\n", ft_printf(str) - 2, __LINE__);
	str = "{r}[%d is awsome]{n}";
	ft_printf(" - %d - [%%d is awsome] - l.%d\n", ft_printf(str, 42) - 2, __LINE__);

	str = "{gree}[42 is awsome]{n}";
	ft_printf(" - %d - [42 is awsome] - l.%d\n", ft_printf(str) - 2, __LINE__);
	str = "{gree}[%d is awsome]{n}";
	ft_printf(" - %d - [%%d is awsome] - l.%d\n", ft_printf(str, 42) - 2, __LINE__);

	str = "{d}[42 is awsome]{n}";
	ft_printf(" - %d - [42 is awsome] - l.%d\n", ft_printf(str) - 2, __LINE__);
	str = "{d}[%d is awsome]{n}";
	ft_printf(" - %d - [%%d is awsome] - l.%d\n", ft_printf(str, 42) - 2, __LINE__);

	str = "{c}[42 is awsome]{n}";
	ft_printf(" - %d - [42 is awsome] - l.%d\n", ft_printf(str) - 2, __LINE__);
	str = "{c}[%d is awsome]{n}";
	ft_printf(" - %d - [%%d is awsome] - l.%d\n", ft_printf(str, 42) - 2, __LINE__);

	str = "{p}[42 is awsome]{n}";
	ft_printf(" - %d - [42 is awsome] - l.%d\n", ft_printf(str) - 2, __LINE__);
	str = "{p}[%d is awsome]{n}";
	ft_printf(" - %d - [%%d is awsome] - l.%d\n", ft_printf(str, 42) - 2, __LINE__);

	str = "{y}[42 is awsome]{n}";
	ft_printf(" - %d - [42 is awsome] - l.%d\n", ft_printf(str) - 2, __LINE__);
	str = "{y}[%d is awsome]{n}";
	ft_printf(" - %d - [%%d is awsome] - l.%d\n", ft_printf(str, 42) - 2, __LINE__);

	str = "{o}[42 is awsome]{n}";
	ft_printf(" - %d - [42 is awsome] - l.%d\n", ft_printf(str) - 2, __LINE__);
	str = "{o}[%d is awsome]{n}";
	ft_printf(" - %d - [%%d is awsome] - l.%d\n", ft_printf(str, 42) - 2, __LINE__);

	str = "{w}[42 is awsome]{n}";
	ft_printf(" - %d - [42 is awsome] - l.%d\n", ft_printf(str) - 2, __LINE__);
	str = "{w}[%d is awsome]{n}";
	ft_printf(" - %d - [%%d is awsome] - l.%d\n", ft_printf(str, 42) - 2, __LINE__);

	str = "{h2g2}[42 is awsome]";
	ft_printf(" - %d - [42 is awsome] - l.%d\n", ft_printf(str) - 2, __LINE__);
	str = "{h2g2}[%d is awsome]";
	ft_printf(" - %d - [%%d is awsome] - l.%d\n", ft_printf(str, 42) - 2, __LINE__);

	return (0);
}
