/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hgamiz-g <hgamiz-g@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/02 10:19:08 by hgamiz-g          #+#    #+#             */
/*   Updated: 2025/05/13 16:04:23 by hgamiz-g         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdarg.h>
#include <unistd.h>
#include <stdint.h>
/**
 * @brief Prints a formatted strings. Works with chars, strings, 
 * pointers, hexadecimal values -lower and uppercase-, ints and unsigned ints. 
 */
int	ft_printf(char const *str, ...);
/**
 * @brief Prints a char in stdout
*/
int	ft_putchar(int c);
/**
 * @brief Prints a pointer adress in stdout	
*/
int	ft_putptr(unsigned long long ptr);
/**
 * @brief Prints a number in hexadecimal in stdout
*/
int	ft_pr_hex(unsigned int nb, const char *base);
/**
 * @brief Prints an unsigned int in stdout
*/
int	ft_pr_unsigned(unsigned int nb);
/**
 * @brief Prints a decimal number in stdout
*/
int	ft_putnbr(long long int nb);
/**
 * brief Prints a string in stdout
*/
int	ft_putstr(char *s);
