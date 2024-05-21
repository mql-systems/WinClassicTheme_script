//+------------------------------------------------------------------+
//|                                              WinClassicTheme.mq5 |
//|                                           Diamoind Systems Corp. |
//|                                   https://github.com/mql-systems |
//+------------------------------------------------------------------+
#property copyright "Diamoind Systems Corp."
#property link      "https://github.com/mql-systems"
#property version   "1.00"

//--- includes
#include <WinAPI/winuser.mqh>
#include "Defines.mqh"

//--- enums
enum ENUM_THEMES
{
   THEME_CUSTOM, // Custom
   THEME_LIGHT,  // Light
   THEME_DARK,   // Dark
};

//--- input parameters
input group       "Theme";
input ENUM_THEMES i_Theme = THEME_DARK;
input group       "Custom Theme colors";
input color       i_CustomThemeColor_Scrollbar = C'200,200,200';              // Scrollbar
input color       i_CustomThemeColor_Background = C'0,0,0';                   // Background
input color       i_CustomThemeColor_ActiveTitle = C'153,180,209';            // ActiveTitle
input color       i_CustomThemeColor_InactiveTitle = C'191,205,219';          // InactiveTitle
input color       i_CustomThemeColor_Menu = C'240,240,240';                   // Menu
input color       i_CustomThemeColor_Window = C'255,255,255';                 // Window
input color       i_CustomThemeColor_WindowFrame = C'100,100,100';            // WindowFame
input color       i_CustomThemeColor_MenuText = C'0,0,0';                     // MenuText
input color       i_CustomThemeColor_WindowText = C'0,0,0';                   // WindowText
input color       i_CustomThemeColor_TitleText = C'0,0,0';                    // TitleText
input color       i_CustomThemeColor_ActiveBorder = C'180,180,180';           // ActiveBorder
input color       i_CustomThemeColor_InactiveBorder = C'244,247,252';         // InactiveBorder
input color       i_CustomThemeColor_AppWorkspace = C'171,171,171';           // AppWorkspace
input color       i_CustomThemeColor_Hilight = C'0,120,215';                  // Hilight
input color       i_CustomThemeColor_HilightText = C'255,255,255';            // HilightText
input color       i_CustomThemeColor_ButtonFace = C'240,240,240';             // ButtonFace
input color       i_CustomThemeColor_ButtonShadow = C'160,160,160';           // ButtonShadow
input color       i_CustomThemeColor_GrayText = C'109,109,109';               // GrayText
input color       i_CustomThemeColor_ButtonText = C'0,0,0';                   // ButtonText
input color       i_CustomThemeColor_InactiveTitleText = C'0,0,0';            // InactiveTitleText
input color       i_CustomThemeColor_ButtonHilight = C'255,255,255';          // ButtonHilight
input color       i_CustomThemeColor_ButtonDkShadow = C'105,105,105';         // ButtonDkShadow
input color       i_CustomThemeColor_ButtonLight = C'227,227,227';            // ButtonLight
input color       i_CustomThemeColor_InfoText = C'0,0,0';                     // InfoText
input color       i_CustomThemeColor_InfoWindow = C'255,255,225';             // InfoWindow
input color       i_CustomThemeColor_ButtonAlternateFace = C'0,0,0';          // ButtonAlternateFace
input color       i_CustomThemeColor_HotTrackingColor = C'0,102,204';         // HotTrackingColor
input color       i_CustomThemeColor_GradientActiveTitle = C'185,209,234';    // GradientActiveTitle
input color       i_CustomThemeColor_GradientInactiveTitle = C'215,228,242';  // GradientInactiveTitle
input color       i_CustomThemeColor_MenuHilight = C'0,120,215';              // MenuHilight
input color       i_CustomThemeColor_MenuBar = C'240,240,240';                // MenuBar

//+------------------------------------------------------------------+
//| Service program start function                                   |
//+------------------------------------------------------------------+
void OnStart()
{
   int setWinColors;
   
   int aElements[31];
   for (int i = 0; i < 31; i++)
      aElements[i] = i;
   
   switch (i_Theme)
   {
      case THEME_LIGHT:
      {
         uint aElementColors[31] = WIN_THEME_LIGHT;
         setWinColors = SetSysColors(31, aElements, aElementColors);
         break;
      }
      case THEME_DARK:
      {
         uint aElementColors[31] = WIN_THEME_DARK;
         setWinColors = SetSysColors(31, aElements, aElementColors);
         break;
      }
      case THEME_CUSTOM:
      {
         uint aElementColors[31] = {
            i_CustomThemeColor_Scrollbar,
            i_CustomThemeColor_Background,
            i_CustomThemeColor_ActiveTitle,
            i_CustomThemeColor_InactiveTitle,
            i_CustomThemeColor_Menu,
            i_CustomThemeColor_Window,
            i_CustomThemeColor_WindowFrame,
            i_CustomThemeColor_MenuText,
            i_CustomThemeColor_WindowText,
            i_CustomThemeColor_TitleText,
            i_CustomThemeColor_ActiveBorder,
            i_CustomThemeColor_InactiveBorder,
            i_CustomThemeColor_AppWorkspace,
            i_CustomThemeColor_Hilight,
            i_CustomThemeColor_HilightText,
            i_CustomThemeColor_ButtonFace,
            i_CustomThemeColor_ButtonShadow,
            i_CustomThemeColor_GrayText,
            i_CustomThemeColor_ButtonText,
            i_CustomThemeColor_InactiveTitleText,
            i_CustomThemeColor_ButtonHilight,
            i_CustomThemeColor_ButtonDkShadow,
            i_CustomThemeColor_ButtonLight,
            i_CustomThemeColor_InfoText,
            i_CustomThemeColor_InfoWindow,
            i_CustomThemeColor_ButtonAlternateFace,
            i_CustomThemeColor_HotTrackingColor,
            i_CustomThemeColor_GradientActiveTitle,
            i_CustomThemeColor_GradientInactiveTitle,
            i_CustomThemeColor_MenuHilight,
            i_CustomThemeColor_MenuBar,
         };
         setWinColors = SetSysColors(31, aElements, aElementColors);
         break;
      }
      default: return;
   }

   Print("SetSysColors: ", setWinColors);
}

//+------------------------------------------------------------------+
