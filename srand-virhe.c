/* Esimerkki VIRHEELLISEST� srand-funktion k�yt�st�.  */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void)
{
        int i;

        for (i = 1; i < 50; ++i) {
                srand(time(0));
                printf("%i\n", rand());
        }
        return 0;
}
   
