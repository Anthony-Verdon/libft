/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: averdon <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/27 11:46:00 by averdon           #+#    #+#             */
/*   Updated: 2023/05/26 17:22:44 by averdon          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/libft.h"

void	*ft_calloc(size_t nmemb, size_t size)
{
	char	*array;
	int		i;
	int		length;

	i = 0;
	length = size * nmemb;
	if (size != 0 && length / size != nmemb)
		return (NULL);
	array = malloc(length);
	if (!array)
		return (NULL);
	while (i < length)
	{
		array[i] = 0;
		i++;
	}
	return (array);
}
