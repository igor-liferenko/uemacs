@* Wrapper.

@(wrapper.h@>=
#ifndef WRAPPER_H_
#define WRAPPER_H_

#include "usage.h"

#include <stdlib.h>

@ @c @(wrapper.h@>

@ @(wrapper.h@>=
int xmkstemp(char *template);
@ @c
int xmkstemp(char *template)
{
	int fd;

	fd = mkstemp(template);
	if (fd < 0)
		die("Unable to create temporary file");
	return fd;
}

@ @(wrapper.h@>=
void *xmalloc(size_t size);
@ @c
void *xmalloc(size_t size)
{
	void *ret = malloc(size);
	if (!ret)
		die("Out of memory");
	return ret;
}

@ @(wrapper.h@>=
#endif  /* WRAPPER_H_ */
