namespace FiveColorApi.Classes.Enumerations
{
    public enum Locations
    {
        None = 0,
        BattleField = 1,
        GraveYard = 2,
        Hand = 3,
        Lands = 4,
        Exile = 5,
        Stack = 6
    }
    public enum LoseCondition
    {
        None,
        NocardsInLibrary,
    }
    public enum Phase
    {
        None,
        Beginning,
        Main1,
        Combat,
        Main2,
        Discard,
        Ending,
    }
    public enum SubPhase
    {
        None,
        Untap,
        Upkeep,
        Draw,
        AttackDeclaration,
        DefenseDeclaration,
        DamageResolution,
    }
}