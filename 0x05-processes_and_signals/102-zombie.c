#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

/**
 * infinite_while - infinite loop
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - main entry point
 * Return: 0 (Success)
 */
int main(void)
{
	pid_t zombie;
	int i;

	for (i = 0; i < 5; i++)
	{
		zombie = fork();

		if (zombie == 0)
		{
			printf("Zombie process created, PID: %i\n", getpid());
			exit(EXIT_SUCCESS);
		}
		else if (zombie < 0)
			exit(EXIT_FAILURE);
		else
			wait(NULL);
	}

	infinite_while();
	return (0);
}
