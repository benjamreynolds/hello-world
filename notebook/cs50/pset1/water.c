#include <stdio.h>
#include <cs50.h>

int main(void)
{
    int n;
    
    // gets users input
    
    printf("minutes: ");
    n = GetInt();
    
    /* calculates number of 16 ounce bottles for a shower of n 
    minutes based on 1.5 gallons of water per minute of shower 
    and displays the result to the user */
    
    printf("bottles: %i\n", n * 12);
}