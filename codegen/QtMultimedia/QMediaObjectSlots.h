%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|availabilityChanged( bool available )
$signal=|availabilityChanged( QMultimedia::AvailabilityStatus availability )
$signal=|metaDataAvailableChanged( bool available )
$signal=|metaDataChanged()
$signal=|metaDataChanged( const QString & key, const QVariant & value )
$signal=|notifyIntervalChanged( int milliseconds )
$endSlotsClass
