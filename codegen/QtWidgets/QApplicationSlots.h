%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void aboutToReleaseGpuResources ();
  void aboutToUseGpuResources ();
  void commitDataRequest ( QSessionManager & manager );
  void focusChanged ( QWidget * old, QWidget * now );
  void fontDatabaseChanged ();
  void lastWindowClosed ();
  void saveStateRequest ( QSessionManager & manager );
$endSlotsClass
