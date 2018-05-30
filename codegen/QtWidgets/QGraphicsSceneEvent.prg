%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

   METHOD delete
   METHOD widget

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QWidget * widget () const
$method=|QWidget *|widget|

#pragma ENDDUMP
