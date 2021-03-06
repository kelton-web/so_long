/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_toupper.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ksemedo- <marvin@42lausanne.ch>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/27 09:58:56 by ksemedo-          #+#    #+#             */
/*   Updated: 2021/11/18 10:35:32 by ksemedo-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_toupper(int lettre)
{
	if (lettre >= 97 && lettre <= 122)
		lettre -= 32;
	return (lettre);
}
