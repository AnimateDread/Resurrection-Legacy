#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
setuid( 0 );
system( "/var/mobile/Library/resurrection/bin/Configurator 2> /var/mobile/Library/resurrection/logs/Configurator.log" );

return 0;

}