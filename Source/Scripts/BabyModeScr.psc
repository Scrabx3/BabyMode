Scriptname BabyModeScr extends ReferenceAlias  

Sound Property BabyModeSound Auto
Sound Property BigBoyModeSound Auto

Event OnInit()
  OnPlayerLoadGame()
EndEvent

Event OnPlayerLoadGame()
  CustomConsole.RegisterForConsoleCommand_Alias(Self, "tgm", false, none)
  CustomConsole.RegisterForConsoleCommand_Alias(Self, "ToggleGodMode", false, none)
EndEvent

Event OnConsoleCommand(String asCommand, ObjectReference akTargetReference)
  bool tgm = PO3_SKSEFunctions.GetGodMode()
  If (tgm)
    BigBoyModeSound.Play(GetReference())
  Else
    BabyModeSound.Play(GetReference())
  EndIf
EndEvent
