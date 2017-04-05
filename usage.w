\noinx
@* Usage.

@(usage.h@>=
#ifndef USAGE_H_
#define USAGE_H_

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

@ @c
@(usage.h@>
static void report(const char* prefix, const char *err, va_list params)
{
	char msg[4096];
	vsnprintf(msg, sizeof(msg), err, params);
	fprintf(stderr, "%s%s\n", prefix, msg);
}

@ @(usage.h@>=
void die(const char* err, ...);
@ @c
void die(const char* err, ...)
{
	va_list params;

	va_start(params, err);
	report("fatal: ", err, params);
	va_end(params);
	exit(128);
}

@ @(usage.h@>=
#endif  /* USAGE_H_ */
