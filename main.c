#include "libfts.h"
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include <fcntl.h>
#include <unistd.h>

int main(void)
{
	printf("isupper('A') = %d\n", ft_isupper('A'));
	printf("isupper('Z') = %d\n", ft_isupper('Z'));
	printf("isupper('z') = %d\n", ft_isupper('z'));
	printf("isupper('1') = %d\n", ft_isupper('1'));
	printf("isupper('Z' + 1) = %d\n", ft_isupper('Z' + 1));
	printf("isupper('A' - 1) = %d\n", ft_isupper('A' - 1));
	printf("islower('a') = %d\n", ft_islower('a'));
	printf("islower('z') = %d\n", ft_islower('z'));
	printf("islower('Z') = %d\n", ft_islower('Z'));
	printf("islower('5') = %d\n", ft_islower('5'));
	printf("islower('a' - 1) = %d\n", ft_islower('a' - 1));
	printf("islower('z' + 1) = %d\n", ft_islower('z' + 1));
	printf("isascii('a') = %d\n", ft_isascii('a'));
	printf("isascii(' ') = %d\n", ft_isascii(' '));
	printf("isascii(-1) = %d\n", ft_isascii(-1));
	printf("isascii(127) = %d\n", ft_isascii(127));
	printf("isascii(0) = %d\n", ft_isascii(0));
	printf("isascii(128) = %d\n", ft_isascii(128));
	printf("isascii(1) = %d\n", ft_isascii(1));
	printf("isascii('\\t') = %d\n", ft_isascii('\t'));
	printf("isalnum('a') = %d\n", ft_isalnum('a'));
	printf("isalnum('z') = %d\n", ft_isalnum('z'));
	printf("isalnum('A') = %d\n", ft_isalnum('A'));
	printf("isalnum('Z') = %d\n", ft_isalnum('Z'));
	printf("isalnum('0') = %d\n", ft_isalnum('0'));
	printf("isalnum('9') = %d\n", ft_isalnum('9'));
	printf("isalnum(' ') = %d\n", ft_isalnum(' '));
	printf("isalnum('a' - 1) = %d\n", ft_isalnum('a' - 1));
	printf("isalnum('z' + 1) = %d\n", ft_isalnum('z' + 1));
	printf("isalnum('A' - 1) = %d\n", ft_isalnum('A' - 1));
	printf("isalnum('Z' + 1) = %d\n", ft_isalnum('Z' + 1));
	printf("isalnum('0' - 1) = %d\n", ft_isalnum('0' - 1));
	printf("isalnum('9' + 1) = %d\n", ft_isalnum('9' + 1));
	printf("isalpha('a') = %d\n", ft_isalpha('a'));
	printf("isalpha('z') = %d\n", ft_isalpha('z'));
	printf("isalpha('A') = %d\n", ft_isalpha('A'));
	printf("isalpha('Z') = %d\n", ft_isalpha('Z'));
	printf("isalpha('0') = %d\n", ft_isalpha('0'));
	printf("isalpha('9') = %d\n", ft_isalpha('9'));
	printf("isalpha(' ') = %d\n", ft_isalpha(' '));
	printf("isalpha('a' - 1) = %d\n", ft_isalpha('a' - 1));
	printf("isalpha('z' + 1) = %d\n", ft_isalpha('z' + 1));
	printf("isalpha('A' - 1) = %d\n", ft_isalpha('A' - 1));
	printf("isalpha('Z' + 1) = %d\n", ft_isalpha('Z' + 1));
	printf("isdigit('0') = %d\n", ft_isdigit('0'));
	printf("isdigit('9') = %d\n", ft_isdigit('9'));
	printf("isdigit('0' - 1) = %d\n", ft_isdigit('0' - 1));
	printf("isdigit('9' + 1) = %d\n", ft_isdigit('9' + 1));
	printf("isdigit('a') = %d\n", ft_isdigit('a'));
	printf("isprint(' ') = %d\n", ft_isprint(' '));
	printf("isprint('a') = %d\n", ft_isprint('a'));
	printf("isprint('~') = %d\n", ft_isprint('~'));
	printf("isprint(31) = %d\n", ft_isprint(31));
	printf("isprint(127) = %d\n", ft_isprint(127));
	printf("isnum('0') = %d\n", ft_isnum('0'));
	printf("isnum('9') = %d\n", ft_isnum('9'));
	printf("isnum(0) = %d\n", ft_isnum(0));
	printf("isnum(9) = %d\n", ft_isnum(9));
	printf("isnum('a') = %d\n", ft_isnum('a'));
	printf("isnum('0' - 1) = %d\n", ft_isnum('0' - 1));
	printf("tolower('A') = %c\n", ft_tolower('A'));
	printf("tolower('Z') = %c\n", ft_tolower('Z'));
	printf("tolower('a') = %c\n", ft_tolower('a'));
	printf("tolower('z') = %c\n", ft_tolower('z'));
	printf("tolower('A' - 1) = %c\n", ft_tolower('A' - 1));
	printf("tolower('Z' + 1) = %c\n", ft_tolower('Z' + 1));
	printf("tolower('3') = %c\n", ft_tolower('3'));
	printf("toupper('A') = %c\n", ft_toupper('A'));
	printf("toupper('Z') = %c\n", ft_toupper('Z'));
	printf("toupper('a') = %c\n", ft_toupper('a'));
	printf("toupper('z') = %c\n", ft_toupper('z'));
	printf("toupper('a' - 1) = %c\n", ft_toupper('a' - 1));
	printf("toupper('z' + 1) = %c\n", ft_toupper('z' + 1));
	printf("toupper('3') = %c\n", ft_toupper('3'));
	ft_puts("I am using ft_puts to print this string");
	ft_puts("ft_puts(NULL) = ");
	ft_puts(NULL);
	ft_puts("ft_puts(\"0\") = ");
	ft_puts("0");
	char *str;
	printf("char *str = ft_strdup(\"Yippie kay yay, motherfucker!\") = %s\n", str = ft_strdup("Yippie kay yay, motherfucker!"));
	printf("previous string after using ft_bzero(str, 5) and while(*str == 0) {str++;}:\n");
	ft_bzero(str, 5);
	while(*str == 0)
		str++;
	ft_puts(str);
	char *str1 = malloc(sizeof(char) * (11));
	for (int i = 0; i < 5; i++)
		str1[i] = 'a';
	str1[5] = '\0';
	printf("str1 = %s\n", str1);
	char *str2 = malloc(sizeof(char) * 6);
	for (int i = 0; i < 5; i++)
		str2[i] = 'b';
	str2[5] = '\0';
	printf("str2 = %s\n", str2);
	str1 = ft_strcat(str1, str2);
	printf("ft_strcat(str1, str2): %s\n", str1);
	printf("ft_strlen(str1) = %zu\n", ft_strlen(str1));
	char *str3 = malloc(sizeof(char) * 11);
	str3[10] = '\0';
	str3 = ft_memset(str3, 37, 10);
	printf("str3 = ft_memset(str3, 37, 10); str3[10] = '\\0'\nstr3 = %s\n", str3);
	char *str4 = malloc(sizeof(char) * 11);
	str3[5] = '*';
	str4 = ft_memcpy(str4, str3, 11);
	printf("str3[5] = '*'; str4 = ft_memcpy(str4, str3, 11);\nstr4 = %s\n", str4);
	printf("ft_cat for test.txt:\n----------\n");
	int fd = open("test.txt", O_RDONLY);
	ft_cat(fd);
	ft_puts("----------\nft_putchar ('9'):"); ft_putchar('9');
	ft_putchar('\n');
	ft_puts("ft_putchar('o'):"); ft_putchar('o');
	ft_putchar('\n');
	ft_puts("ft_putsub(\"Ecole 42\", 1, 3):"); ft_putsub("Fabio", 1, 3);
	ft_putchar('\n');
	ft_puts("ft_putsub(\"Ecole 42\", 0, 30):"); ft_putsub("Fabio", 0, 30);
	ft_putchar('\n');
	ft_puts("ft_putsub(\"Ecole 42\", 1, 0):"); ft_putsub("Fabio", 1, 0);
	ft_putchar('\n');
	ft_puts("ft_putsub(\"Ecole 42\", 1, 5):"); ft_putsub("Fabio", 1, 5);
	ft_putchar('\n');
	ft_puts("ft_putsub(\"Ecole 42\", 3, 60):"); ft_putsub("Fabio", 3, 60);
	ft_putchar('\n');
	char *str5 = malloc(15);
	printf("str5 = malloc(sizeof(char) *15); ft_strcpy(str5, str4) = %s", ft_strcpy(str5, str4));
	return (0);
}
