//+------------------------------------------------------------------+
//|                                                      Defines.mqh |
//|                                            Diamond Systems Corp. |
//|                                   https://github.com/mql-systems |
//+------------------------------------------------------------------+
#property copyright "Diamond Systems Corp."
#property link      "https://github.com/mql-systems"

//+------------------------------------------------------------------------------------------+
//| Win Classic Theme - Dark                                                                 |
//+------------------------------------------------------------------------------------------+
#define WIN_THEME_DARK {\
   C'137,137,137',\   // COLOR_SCROLLBAR (Scrollbar)
   C'11,11,11',\      // COLOR_BACKGROUND (Background)
   C'11,11,11',\      // COLOR_ACTIVECAPTION (ActiveTitle)
   C'11,11,11',\      // COLOR_INACTIVECAPTION (InactiveTitle)
   C'18,18,18',\      // COLOR_MENU (Menu)
   C'11,11,11',\      // COLOR_WINDOW (Window)
   C'255,255,255',\   // COLOR_WINDOWFRAME (WindowFrame)
   C'128,128,128',\   // COLOR_MENUTEXT (MenuText)
   C'128,128,128',\   // COLOR_WINDOWTEXT (WindowText)
   C'192,192,192',\   // COLOR_CAPTIONTEXT (TitleText)
   C'18,18,18',\      // COLOR_ACTIVEBORDER (ActiveBorder)
   C'18,18,18',\      // COLOR_INACTIVEBORDER (InactiveBorder)
   C'11,11,11',\      // COLOR_APPWORKSPACE (AppWorkspace)
   C'128,128,255',\   // COLOR_HIGHLIGHT (Hilight)
   C'0,0,0',\         // COLOR_HIGHLIGHTTEXT (HilightText)
   C'18,18,18',\      // COLOR_BTNFACE (ButtonFace)
   C'11,11,11',\      // COLOR_BTNSHADOW (ButtonShadow)
   C'44,44,44',\      // COLOR_GRAYTEXT (GrayText)
   C'39,31,31',\      // COLOR_BTNTEXT (ButtonText)
   C'128,128,128',\   // COLOR_INACTIVECAPTIONTEXT (InactiveTitleText)
   C'65,65,65',\      // COLOR_BTNHILIGHT (ButtonHilight)
   C'65,65,65',\      // COLOR_3DDKSHADOW (ButtonDkShadow)
   C'18,18,18',\      // COLOR_3DLIGHT (ButtonLight)
   C'128,128,255',\   // COLOR_INFOTEXT (InfoText)
   C'0,0,0',\         // COLOR_INFOBK (InfoWindow)
   C'192,192,192',\   // COLOR_BTNALTERNATEFACE (ButtonAlternateFace)
   C'128,128,255',\   // COLOR_HOTLIGHT (HotTrackingColor)
   C'11,11,11',\      // COLOR_GRADIENTACTIVECAPTION (GradientActiveTitle)
   C'0,0,0',\         // COLOR_GRADIENTINACTIVECAPTION (GradientInactiveTitle)
   C'0,128,0',\       // COLOR_MENUHILIGHT (MenuHilight)
   C'0,0,0',\         // COLOR_MENUBAR (MenuBar)
}

//+------------------------------------------------------------------------------------------+
//| Win Classic Theme - Light                                                                |
//+------------------------------------------------------------------------------------------+
#define WIN_THEME_LIGHT {\
   C'200,200,200',\     // COLOR_SCROLLBAR (Scrollbar)
   C'0,0,0',\           // COLOR_BACKGROUND (Background)
   C'153,180,209',\     // COLOR_ACTIVECAPTION (ActiveTitle)
   C'191,205,219',\     // COLOR_INACTIVECAPTION (InactiveTitle)
   C'240,240,240',\     // COLOR_MENU (Menu)
   C'255,255,255',\     // COLOR_WINDOW (Window)
   C'100,100,100',\     // COLOR_WINDOWFRAME (WindowFrame)
   C'0,0,0',\           // COLOR_MENUTEXT (MenuText)
   C'0,0,0',\           // COLOR_WINDOWTEXT (WindowText)
   C'0,0,0',\           // COLOR_CAPTIONTEXT (TitleText)
   C'180,180,180',\     // COLOR_ACTIVEBORDER (ActiveBorder)
   C'244,247,252',\     // COLOR_INACTIVEBORDER (InactiveBorder)
   C'171,171,171',\     // COLOR_APPWORKSPACE (AppWorkspace)
   C'0,120,215',\       // COLOR_HIGHLIGHT (Hilight)
   C'255,255,255',\     // COLOR_HIGHLIGHTTEXT (HilightText)
   C'240,240,240',\     // COLOR_BTNFACE (ButtonFace)
   C'160,160,160',\     // COLOR_BTNSHADOW (ButtonShadow)
   C'109,109,109',\     // COLOR_GRAYTEXT (GrayText)
   C'0,0,0',\           // COLOR_BTNTEXT (ButtonText)
   C'0,0,0',\           // COLOR_INACTIVECAPTIONTEXT (InactiveTitleText)
   C'255,255,255',\     // COLOR_BTNHILIGHT (ButtonHilight)
   C'105,105,105',\     // COLOR_3DDKSHADOW (ButtonDkShadow)
   C'227,227,227',\     // COLOR_3DLIGHT (ButtonLight)
   C'0,0,0',\           // COLOR_INFOTEXT (InfoText)
   C'255,255,225',\     // COLOR_INFOBK (InfoWindow)
   C'0,0,0',\           // COLOR_BTNALTERNATEFACE (ButtonAlternateFace)
   C'0,102,204',\       // COLOR_HOTLIGHT (HotTrackingColor)
   C'185,209,234',\     // COLOR_GRADIENTACTIVECAPTION (GradientActiveTitle)
   C'215,228,242',\     // COLOR_GRADIENTINACTIVECAPTION (GradientInactiveTitle)
   C'0,120,215',\       // COLOR_MENUHILIGHT (MenuHilight)
   C'240,240,240',\     // COLOR_MENUBAR (MenuBar)
}

//+------------------------------------------------------------------------------------------+
//| Display color elements for win32 functions SetSysColors and GetSysColor                  |
//|                                                                                          |
//| @link https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-getsyscolor |
//+------------------------------------------------------------------------------------------+
enum ENUM_WIN_THEME_COLORS
{
   WIN_THEME_COLOR_SCROLLBAR = 0,                // Scroll bar gray area. Windows 10 or greater:This value is not supported.
   WIN_THEME_COLOR_BACKGROUND = 1,               // Desktop. Windows 10 or greater: This value is not supported.
//   WIN_THEME_COLOR_DESKTOP = 1,
   WIN_THEME_COLOR_ACTIVECAPTION = 2,            // Active window title bar. The associated foreground color is COLOR_CAPTIONTEXT. Specifies the left side color in the color gradient of an active window's title bar if the gradient effect is enabled. Windows 10 or greater: This value is not supported.
   WIN_THEME_COLOR_INACTIVECAPTION = 3,          // Inactive window caption. The associated foreground color is COLOR_INACTIVECAPTIONTEXT. Specifies the left side color in the color gradient of an inactive window's title bar if the gradient effect is enabled. Windows 10 or greater:This value is not supported.
   WIN_THEME_COLOR_MENU = 4,                     // Menu background. The associated foreground color is COLOR_MENUTEXT. Windows 10 or greater:This value is not supported.
   WIN_THEME_COLOR_WINDOW = 5,                   // Window background. The associated foreground colors are COLOR_WINDOWTEXT and COLOR_HOTLITE.
   WIN_THEME_COLOR_WINDOWFRAME = 6,              // Window frame. Windows 10 or greater:This value is not supported.
   WIN_THEME_COLOR_MENUTEXT = 7,                 // Text in menus. The associated background color is COLOR_MENU. Windows 10 or greater:This value is not supported.
   WIN_THEME_COLOR_WINDOWTEXT = 8,               // Text in windows. The associated background color is COLOR_WINDOW.
   WIN_THEME_COLOR_CAPTIONTEXT = 9,              // Text in caption, size box, and scroll bar arrow box. The associated background color is COLOR_ACTIVECAPTION. Windows 10 or greater: This value is not supported.
   WIN_THEME_COLOR_ACTIVEBORDER = 10,            // Active window border. Windows 10 or greater: This value is not supported.
   WIN_THEME_COLOR_INACTIVEBORDER = 11,          // Inactive window border. Windows 10 or greater:This value is not supported.
   WIN_THEME_COLOR_APPWORKSPACE = 12,            // Background color of multiple document interface (MDI) applications. Windows 10 or greater: This value is not supported.
   WIN_THEME_COLOR_HIGHLIGHT = 13,               // Item(s) selected in a control. The associated foreground color is COLOR_HIGHLIGHTTEXT.
   WIN_THEME_COLOR_HIGHLIGHTTEXT = 14,           // Text of item(s) selected in a control. The associated background color is COLOR_HIGHLIGHT.
   WIN_THEME_COLOR_BTNFACE = 15,                 // Face color for three-dimensional display elements and for dialog box backgrounds. The associated foreground color is COLOR_BTNTEXT. Windows 10 or greater: This value is not supported.
//   WIN_THEME_COLOR_3DFACE = 15,
   WIN_THEME_COLOR_BTNSHADOW = 16,               // Shadow color for three-dimensional display elements (for edges facing away from the light source). Windows 10 or greater: This value is not supported.
//   WIN_THEME_COLOR_3DSHADOW = 16,
   WIN_THEME_COLOR_GRAYTEXT = 17,                // Grayed (disabled) text. This color is set to 0 if the current display driver does not support a solid gray color.
   WIN_THEME_COLOR_BTNTEXT = 18,                 // Text on push buttons. The associated background color is COLOR_BTNFACE.
   WIN_THEME_COLOR_INACTIVECAPTIONTEXT = 19,     // Color of text in an inactive caption. The associated background color is COLOR_INACTIVECAPTION. Windows 10 or greater:This value is not supported.
   WIN_THEME_COLOR_BTNHILIGHT = 20,             // Highlight color for three-dimensional display elements (for edges facing the light source). Windows 10 or greater: This value is not supported.
//   WIN_THEME_COLOR_3DHIGHLIGHT = 20,
//   WIN_THEME_COLOR_3DHILIGHT = 20,
//   WIN_THEME_COLOR_BTNHIGHLIGHT = 20,
   WIN_THEME_COLOR_3DDKSHADOW = 21,              // Dark shadow for three-dimensional display elements. Windows 10 or greater: This value is not supported.
   WIN_THEME_COLOR_3DLIGHT = 22,                 // Light color for three-dimensional display elements (for edges facing the light source). Windows 10 or greater: This value is not supported.
   WIN_THEME_COLOR_INFOTEXT = 23,                // Text color for tooltip controls. The associated background color is COLOR_INFOBK. Windows 10 or greater:This value is not supported.
   WIN_THEME_COLOR_INFOBK = 24,                  // Background color for tooltip controls. The associated foreground color is COLOR_INFOTEXT. Windows 10 or greater:This value is not supported.
   WIN_THEME_COLOR_BTNALTERNATEFACE = 25,        // ButtonAlternateFace
   WIN_THEME_COLOR_HOTLIGHT = 26,                // Color for a hyperlink or hot-tracked item. The associated background color is COLOR_WINDOW.
   WIN_THEME_COLOR_GRADIENTACTIVECAPTION = 27,   // Right side color in the color gradient of an active window's title bar. COLOR_ACTIVECAPTION specifies the left side color. Use SPI_GETGRADIENTCAPTIONS with the SystemParametersInfo function to determine whether the gradient effect is enabled. Windows 10 or greater: This value is not supported.
   WIN_THEME_COLOR_GRADIENTINACTIVECAPTION = 28, // Right side color in the color gradient of an inactive window's title bar. COLOR_INACTIVECAPTION specifies the left side color. Windows 10 or greater: This value is not supported.
   WIN_THEME_COLOR_MENUHILIGHT = 29,             // The color used to highlight menu items when the menu appears as a flat menu (see SystemParametersInfo). The highlighted menu item is outlined with COLOR_HIGHLIGHT. Windows 2000, Windows 10 or greater:  This value is not supported.
   WIN_THEME_COLOR_MENUBAR = 30,                 // The background color for the menu bar when menus appear as flat menus (see SystemParametersInfo). However, COLOR_MENU continues to specify the background color of the menu popup. Windows 2000, Windows 10 or greater:  This value is not supported.
};