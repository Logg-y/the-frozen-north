#include "inc_loot"

void main()
{
    int nItems = d20(10);
    int i;
    for (i = 0; i < nItems; i++)
    {
        GenerateTierItem(9, OBJECT_SELF);
    }
}
