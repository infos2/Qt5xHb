/*

  Qt5xHb Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabel

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oLabel := QLabel():new("Label",oWindow)
   oLabel:move(20,20)
   oLabel:setTooltip("Eu sou um QLabel")
   oLabel:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
