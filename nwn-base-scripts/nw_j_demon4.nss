//::///////////////////////////////////////////////
//:: Demon gives item
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Gives magic item to speaker.
*/
//:://////////////////////////////////////////////
//:: Created By:
//:: Created On:
//:://////////////////////////////////////////////

void main()
{
    CreateItemOnObject(GetLocalString(OBJECT_SELF,"NW_J_DEMON_REWARDITEM"),GetPCSpeaker());
}