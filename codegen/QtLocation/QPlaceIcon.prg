$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QPLACEMANAGER
#endif

CLASS QPlaceIcon

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD url
   METHOD manager
   METHOD setManager
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QPlaceIcon()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceIcon(const QPlaceIcon &other)
$internalConstructor=5,4,0|new2|const QPlaceIcon &

//[1]QPlaceIcon()
//[2]QPlaceIcon(const QPlaceIcon &other)

HB_FUNC_STATIC( QPLACEICON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceIcon_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEICON(1) )
  {
    QPlaceIcon_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

$prototype=QUrl url(const QSize &size = QSize()) const
$method=5,4,0|QUrl|url|const QSize &=QSize()

$prototype=QPlaceManager *manager() const
$method=5,4,0|QPlaceManager *|manager|

$prototype=void setManager(QPlaceManager *manager)
$method=5,4,0|void|setManager|QPlaceManager *

$prototype=bool isEmpty() const
$method=5,4,0|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
