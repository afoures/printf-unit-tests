#include <limits.h>
#include <stdint.h>

#include <stdio.h>
#include "ft_printf.h"

int				main(int argc, char *argv[])
{
	char	str[2];
	int		i = 0;

	for (i = 0; i < 32; i++)
	{
		str[0] = i;
		str[1] = '\0';
		ft_printf(" - %d - [%%r] - l.%d\n", ft_printf("[%r]", 1, str) - 2, __LINE__);
	}
}