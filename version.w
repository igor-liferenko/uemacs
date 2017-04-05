@* Version.

@(version.h@>=
#ifndef VERSION_H_
#define VERSION_H_

#define PROGRAM_NAME "em"
#define PROGRAM_NAME_LONG "uEmacs/Pk"

#define	VERSION	"4.0.15"

#include <stdio.h>

@ @c @(version.h@>

@ Print the version string.

@(version.h@>=
void version(void);
@ @c
void version(void)
{
	printf("%s version %s\n", PROGRAM_NAME_LONG, VERSION);
}

@ @(version.h@>=
#endif  /* VERSION_H_ */

