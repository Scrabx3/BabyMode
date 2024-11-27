Scriptname BabyModeScr extends ReferenceAlias  

Sound Property BabyModeSound Auto
Sound Property BigBoyModeSound Auto

Event OnInit()
  OnPlayerLoadGame()
EndEvent

Event OnPlayerLoadGame()
  ConsoleUtil.RegisterForConsoleCommand_Alias(Self, "tgm", false, none)
  ConsoleUtil.RegisterForConsoleCommand_Alias(Self, "ToggleGodMode", false, none)
EndEvent

Event OnConsoleCommand(String asCommand, ObjectReference akTargetReference)
  bool tgm = PO3_SKSEFunctions.GetGodMode()
  If (tgm)
    BabyModeSound.Play(GetReference())
  Else
    BigBoyModeSound.Play(GetReference())
  EndIf
EndEvent
