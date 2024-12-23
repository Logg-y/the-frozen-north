#include "inc_quest"
#include "inc_xp"

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    int nTarget = StringToInt(GetScriptParam("target"));
    int nSkill = SKILL_BLUFF;
    int nDC = GetLocalInt(OBJECT_SELF, "quest" + IntToString(nTarget) + "_bluff_dc");

    AdjustAlignment(oPC, ALIGNMENT_CHAOTIC, BLUFF_CHAOS_SHIFT, FALSE);
    if(GetIsSkillSuccessful(oPC, nSkill, nDC))
    {
        GiveDialogueSkillXP(oPC, nDC, nSkill);
        IncrementPlayerStatistic(oPC, "bluff_succeeded");
        AdvanceQuest(OBJECT_SELF, oPC, nTarget, TRUE);
        return TRUE;
    }
    else
    {
        IncrementPlayerStatistic(oPC, "bluff_failed");
        return FALSE;
    }
}
