%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsSceneEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsSceneMoveEvent ()
$constructor=|new|

$deleteMethod

$prototype=QSizeF newSize () const
$method=|QSizeF|newSize|

$prototype=QSizeF oldSize () const
$method=|QSizeF|oldSize|

#pragma ENDDUMP
