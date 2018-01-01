%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QDeclarativeExtensionPlugin INHERIT QObject

   METHOD initializeEngine
   METHOD registerTypes

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual void initializeEngine ( QDeclarativeEngine * engine, const char * uri )
$virtualMethod=|void|initializeEngine|QDeclarativeEngine *,const char *

$prototype=virtual void registerTypes ( const char * uri ) = 0
$virtualMethod=|void|registerTypes|const char *

#pragma ENDDUMP
