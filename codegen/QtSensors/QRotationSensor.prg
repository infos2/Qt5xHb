%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QROTATIONREADING
#endif

CLASS QRotationSensor INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD reading
   METHOD hasZ
   METHOD setHasZ

   METHOD onHasZChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QRotationSensor(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=QRotationReading *reading() const
$method=5,1,0|QRotationReading *|reading|

$prototype=bool hasZ() const
$method=5,1,0|bool|hasZ|

$prototype=void setHasZ(bool hasZ)
$method=5,1,0|void|setHasZ|bool

$beginSignals
$signalMethod=5,1,0|hasZChanged(bool)
$endSignals

#pragma ENDDUMP
