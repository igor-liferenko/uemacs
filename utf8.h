/*1:*/
#line 1 "utf8.w"

#ifndef UTF8_H
#define UTF8_H

typedef unsigned int unicode_t;

/*:1*//*3:*/
#line 19 "utf8.w"

unsigned utf8_to_unicode(char*line,unsigned index,unsigned len,unicode_t*res);
/*:3*//*5:*/
#line 83 "utf8.w"

unsigned unicode_to_utf8(unsigned int c,char*utf8);
/*:5*//*7:*/
#line 106 "utf8.w"

static inline int is_beginning_utf8(unsigned char c)
{
return(c&0xc0)!=0x80;
}

#endif
/*:7*/
