#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
setuid( 0 );
system("/var/mobile/Library/resurrection/bin/ThemeConverterArguments 2> /var/mobile/Library/resurrection/logs/themeConverter.log");

return 0;

}