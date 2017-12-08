/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QSTYLEOPTIONTAB_CH
#define QSTYLEOPTIONTAB_CH

/*
enum QStyleOptionTab::StyleOptionType
*/
#define QStyleOptionTab_Type                                         QStyleOption_SO_Tab

/*
enum QStyleOptionTab::StyleOptionVersion
*/
#define QStyleOptionTab_Version                                      3

/*
enum QStyleOptionTab::TabPosition
*/
#define QStyleOptionTab_Beginning                                    0
#define QStyleOptionTab_Middle                                       1
#define QStyleOptionTab_End                                          2
#define QStyleOptionTab_OnlyOneTab                                   3

/*
enum QStyleOptionTab::SelectedPosition
*/
#define QStyleOptionTab_NotAdjacent                                  0
#define QStyleOptionTab_NextIsSelected                               1
#define QStyleOptionTab_PreviousIsSelected                           2

/*
enum QStyleOptionTab::CornerWidget
flags QStyleOptionTab::CornerWidgets
*/
#define QStyleOptionTab_NoCornerWidgets                              0x00
#define QStyleOptionTab_LeftCornerWidget                             0x01
#define QStyleOptionTab_RightCornerWidget                            0x02

/*
enum QStyleOptionTab::TabFeature
flags QStyleOptionTab::TabFeatures
*/
#define QStyleOptionTab_None                                         0x00
#define QStyleOptionTab_HasFrame                                     0x01

#endif /* QSTYLEOPTIONTAB_CH */
