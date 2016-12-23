import XMonad
import Control.Exception
import XMonad.Layout.Spacing
import XMonad.Layout.Gaps
import XMonad.Prompt
import XMonad.Prompt.RunOrRaise (runOrRaisePrompt)
import XMonad.Prompt.AppendFile (appendFilePrompt)
import XMonad.Operations
import System.IO
import System.Exit
import System.Posix.Types
import XMonad.Util.Run
import XMonad.Actions.CycleWS
import XMonad.Config
import XMonad.Config.Desktop
import XMonad.Util.EZConfig
import XMonad.Config.Kde
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.SetWMName
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.UrgencyHook
import XMonad.Hooks.FadeInactive
import XMonad.Hooks.EwmhDesktops
import qualified XMonad.StackSet as W
import qualified Data.Map as M

{-
 - The folowing programs used in this config:
 -  dzen2
 -  stalonetray
 -  conky
 -  termite
 -  TelegramDesktop
 -  vivaldi
 -  dmenu
 -  compton
 -  touchegg
 -  dunst
 -  systemdgenie
 -  amixer
 -  kvkbd
 -}

myModMask = mod4Mask
myTerminal = "termite"
myMessenger = "Telegram"
myBrowser = "vivaldi-stable"
setupKeyboardLayout = "setxkbmap -option '' -option grp:switch,grp:alt_shift_toggle us,ru -variant qwerty"
dzenBarOptions = " -fg '#FFFFFF' -bg '#1c8e5f' -fn 'Droid Sans Mono, Awesome' "
              ++ "-h '18' -y '2080' "
              {-
              ++ "-e 'key_Super_L=hide;key_Super_L=unhide;"
              ++ "key_Super_R=hide;key_Super_R=unhide' "
              -}
dzen1Width = 400
dzen2Width = 210
myBarName = "dzen2 "
myBattery = "~/.xmonad/scripts/battery"
myXmonadBar = myBarName ++ " -w '" ++ show (dzen1Width) ++ "' -ta 'l'" ++ dzenBarOptions
myBatteryBar = myBattery ++ " | " ++ myBarName ++ " -w '" ++ show dzen2Width
                                  ++ "' -x '" ++ show dzen1Width
                                  ++ "' -ta 'c' " ++ dzenBarOptions
myStatusBar = "conky -c ~/.xmonad/bar/conky_dzen.conf | " ++ myBarName ++
                            "-x '" ++ show (dzen1Width + dzen2Width) ++
                            "' -w '" ++ show (1920 - dzen1Width - dzen2Width) ++
                            "' -ta 'l' " ++ dzenBarOptions
sleepDuration = 3
sleepCom = "sleep " ++ show sleepDuration ++ " && "
myBitmapsDir = "~/.xmonad/bar/images"
focusedWindowBorder = "#1c8e5f"
normalWindowBorder = "#000000"

myLogHook :: Handle -> X ()
myLogHook h = dynamicLogWithPP $ defaultPP {
    ppCurrent           = dzenColor "#453a62" "#21bb61" . pad
    , ppVisible         = dzenColor "white" "#1c8e5f" . pad
    , ppHidden          = dzenColor "white" "#1c8e5f" . pad
    , ppHiddenNoWindows = \a -> "" -- dzenColor "#afafaf" "#1c8e5f" . pad
    , ppUrgent          = dzenColor "#ff0000" "#1c8e5f" . pad
    , ppWsSep           = ""
    , ppSep             = "|"
    , ppLayout          = \a -> ""
    {-
      dzenColor "#ffffff" "#1c8e5f" .  (\x -> case x of
            "ResizableTall"             ->      "^i(" ++ myBitmapsDir ++ "/tall.xpm)"
            "Mirror ResizableTall"      ->      "^i(" ++ myBitmapsDir ++ "/mtall.xpm)"
            "Full"                      ->      "^i(" ++ myBitmapsDir ++ "/full.xpm)"
            "Simple Float"              ->      "~"
            _                           ->      x
        )
    -}
    , ppTitle             =   (" " ++) . dzenColor "white" "#1c8e5f" . dzenEscape
    , ppOutput            =   hPutStrLn h
}

{-
myExtraWorkspaces = [(xK_0, "10")]

myWorkspaces = ["1","2","3","4","5","6","7","8","9"] ++ (map snd myExtraWorkspaces)

workspaceKeys = concat [
          [ ((myModMask, key), (windows $ W.greedyView ws)) | (key,ws) <- myExtraWorkspaces
          ],
          [ ((myModMask .|. shiftMask, key), (windows $ W.shift ws)) | (key,ws) <- myExtraWorkspaces
          ]
      ]
-}

baseConfig = desktopConfig {
		modMask = myModMask
		, focusedBorderColor = focusedWindowBorder
                , normalBorderColor  = normalWindowBorder
		, terminal = myTerminal
		, keys = \c -> mykeys c `M.union` keys defaultConfig c
	}
	where mykeys (XConfig {modMask = modm}) = M.fromList $
	            [ ((modm , xK_d), spawn "dmenu_run -dim 0.5 -h 20 -p whobscr$ -fn 'Droid Sans Mono 14' -sb '#1c8e5f' -nb '#166f5f' -nf '#969896' -i")
                    , ((modm .|. shiftMask, xK_q), kill)
                    , ((modm .|. shiftMask, xK_r), broadcastMessage ReleaseResources >> restart "xmonad" True)
                    ]

kdeBaseConfig = kdeConfig {
		modMask = myModMask
		, focusedBorderColor = focusedWindowBorder
                , normalBorderColor  = normalWindowBorder
		, terminal = myTerminal
		, keys = \c -> mykeys c `M.union` keys defaultConfig c
	}
        `additionalKeysP`
                [ ("<XF86AudioRaiseVolume>", spawn "amixer sset Master 5%+") 
                , ("<XF86AudioLowerVolume>", spawn "amixer sset Master 5%-") 
                , ("<XF86AudioMute>", spawn "amixer sset Master toggle") 
                , ("<Print>", spawn "november screen") 
                , ("S-<Print>", spawn "november selection") 
                ]
	where mykeys (XConfig {modMask = modm}) = M.fromList $
	            [ ((modm .|. shiftMask, xK_q), kill)
                    , ((modm .|. shiftMask, xK_r), broadcastMessage ReleaseResources >> restart "xmonad" True)
                    , ((modm .|. shiftMask, xK_x), spawn "qdbus org.kde.ksmserver /KSMServer logout 0 0 0")
                    -- , ((modm,               xK_d), spawn "dmenu_run -dim 0.5 -h 20 -p whobscr$ -fn 'Droid Sans Mono 14' -sb '#1c8e5f' -nb '#166f5f' -nf '#969896' -i")
                    , ((modm,               xK_s), spawn "systemsettings5")
                    , ((modm,               xK_g), spawn "systemdgenie")
                    , ((modm,               xK_f ), sendMessage NextLayout)
                    , ((modm,               xK_i), nextWS)
                    , ((modm,               xK_u), prevWS)
                    ]

tall = Tall 1 (3/100) (1/2)
{-
shutdownHook :: SomeException -> IO ()
shutdownHook e = do
           spawn $ "pkill " ++ myBarName
           spawn $ "pkill conky"
           spawn $ "pkill dunst"
           spawn $ "pkill i3status"
           throw e
-}


main = do
    spawn $ "pkill " ++ myBarName
    spawn $ "pkill conky"
    spawn $ "pkill i3status"
    spawn $ "pkill stalonetray"
    {-
    spawn $ "pkill touchegg"
    spawn $ "pkill dunst"
    spawn $ "dunst"
    spawn $ "kvkbd"
    spawn $ "compton -b"
    spawn $ "touchegg"
    -}
    spawn $ "sleep " ++ show (sleepDuration + 1) ++ "; stalonetray"
    spawn $ setupKeyboardLayout
    spawn $ sleepCom ++ myBatteryBar
    dzenLeftBar <- spawnPipe $ sleepCom ++ myXmonadBar
    spawn $ sleepCom ++ myStatusBar
    xmonad $ ewmh kdeBaseConfig
        { manageHook =      manageHook kdeConfig  <+> manageDocks <+> myManageHook
        , layoutHook =      gaps [(D,18)] . smartSpacing 2 $ tall ||| Full
        , logHook =         myLogHook dzenLeftBar -- >> fadeInactiveLogHook 0xdddddddd
        , handleEventHook = handleEventHook kdeConfig
                        <+> docksEventHook
                        <+> fullscreenEventHook
                        <+> ewmhDesktopsEventHook
    }
                   

myManageHook = composeAll . concat $
		[ [ className   =? c --> doFloat           | c <- floatsByClass ]
		, [ title       =? t --> doFloat           | t <- floatsByTitle]
		, [ className   =? c --> doF (W.shift "1") | c <- webApps]
		, [ className   =? c --> doF (W.shift "2") | c <- terminals]
		, [ className   =? c --> doF (W.shift "3") | c <- ides]
		, [ className   =? c --> doF (W.shift "4") | c <- ides2]
		, [ className   =? c --> doF (W.shift "9") | c <- messaging]
		]
	where floatsByClass = [ "yakuake"
                              , "Yakuake"
                              , "Kmix"
                              , "kmix"
                              , "krunner"
                              , "ksplashsimple"
                              , "ksplashqml"
                              , "ksplashx"
                              , "plasma-desktop"
                              , "Plasma-desktop"
                              , "plasma"
                              , "Plasma"
                              , "plasmashell"
                              , "systemsettings"
                              ]
              floatsByTitle = []
              webApps = [ "vivaldi-stable"
                        , "Vivaldi-stable"
                        ]
              ides = [ "QtCreator"
                     , "jetbrains-idea"
                     ]
              ides2 = ["jetbrains-phpstorm"
                      ]
              terminals = [ "Termite"
                          ]
              messaging = [ "TelegramDesktop"
                          ]
