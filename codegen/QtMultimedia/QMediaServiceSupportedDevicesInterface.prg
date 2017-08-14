$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QMediaServiceSupportedDevicesInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD deviceDescription
   METHOD devices

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QString deviceDescription(const QByteArray & service, const QByteArray & device) = 0
*/
$method=|QString|deviceDescription|const QByteArray &,const QByteArray &

/*
virtual QList<QByteArray> devices(const QByteArray & service) const = 0
*/
$method=|QList<QByteArray>|devices|const QByteArray &

$extraMethods

#pragma ENDDUMP
