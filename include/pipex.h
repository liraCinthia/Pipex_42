/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pipex.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: clira-ne <clira-ne@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/24 10:58:27 by clira-ne          #+#    #+#             */
/*   Updated: 2024/05/24 10:59:06 by clira-ne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PIPEX_H
# define PIPEX_H

# include <stdlib.h>
# include <unistd.h>
# include <string.h>
# include <stdio.h>
# include <sys/wait.h>
# include <fcntl.h>
# include "../librarie/libft/libft.h"

# define FILE_PERMISSIONS 0777

void	ft_error(void);
char	*ft_find_path(char *cmd, char **env);
void	ft_exec(char *argv, char **env);
void	ft_child_process(char **argv, char **env, int *fd);
void	ft_parent_process(char **argv, char **env, int *fd);

#endif
