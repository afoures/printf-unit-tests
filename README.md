# Unit-tests for ft_printf - 42
I took [real_printf](https://github.com/MrJe/real_printf) created by [MrJe](https://github.com/MrJe), and I added some other tests.

## Getting Started

### Installation

In your ft_printf repo
```sh
git clone https://github.com/afoures/printf-unit-tests
```
**DO NOT CHANGE THE NAME OF THE REPO OR THE SCRIPT MAY NOT WORK FOR ALL THE TESTS**

### Running script

Run the script directly in your ft_printf repo
```sh
sh printf-unit-tests/printf-unit-tests.sh (option)
```

You should know that :
+ Some test are based on my personal implementation, so some test will maybe not works for you (I'm talking about %b, %r, color).
+ There is a lot of undefined behavior in this script.

### Options available
| Option | Description |
| --- | --- |
| `all` | Test for dDiuUxXoOcCsSp%fFeEgGaAn |
| `bonus` | Test for b r ' * dprintf sprintf color |
| `all+bonus` | Test for all and bonus options together |
| `%` | Test for %% |
| `d` `i` & `D` | Test for %d, %i and %D |
| `u` & `U` | Test for %u and %U |
| `o` & `O` | Test for %o and %O |
| `x` & `X` | Test for %x and %X |
| `c` & `C` | Test for %c and %C |
| `s` & `S` | Test for %s and %S |
| `p` | Test for %p |
| `f` & `F` | Test for %f and %F |
| `e` & `E` | Test for %e and %E |
| `g` & `G` | Test for %g and %G |
| `a` & `A` | Test for %a and %A |
| `n` | Test for %n |
| `fd` | Test for dprintf |
| `string` | Test for sprintf |
| `apostrophe` | Test for ' flag |
| `*` | Test for * flag |
| `b` | Test for %b |
| `r` | Test for %r |
| `color` | Test for color implementation |
| `clean_color` | Remove the previous configuration of the color test |
| `clean` | Remove all .diff, .out, *ft.txt and fclean your lib |

### Results
For every failed test, a test_name.diff will be created in ./ftprintf-unit-tests/results/

You can see there your errors.


## Credits

A big thanks to [MrJe](https://github.com/MrJe) for letting me use his [real_printf](https://github.com/MrJe/real_printf) as a starting point.

## Suggestions or bugs reporting ?

You can contact me here : afoures@student.42.fr
