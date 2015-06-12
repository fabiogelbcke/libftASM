#ifndef LIBFTASM_H
# define LIBFTASM_H

#include <unistd.h>

int	ft_isascii(int c);
int	ft_isupper(int c);
int	ft_islower(int c);
int	ft_isalnum(int c);
int	ft_isalpha(int c);
int	ft_isdigit(int c);
int	ft_isprint(int c);
int	ft_tolower(int c);
int	ft_toupper(int c);
int	ft_puts(const char *s);
void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *restrict s1, const char *restrict s2);
size_t  ft_strlen(const char *s);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *restrict dst, const void *restrict src, size_t n);
char	*ft_strdup(const char *s1);
void	ft_cat(int fd);
char	*ft_strcpy(const char *s1, const char *s2);
void	ft_putchar(char c);
void	ft_putsub(const char *s, int index, int len);

#endif
