/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QAmbientTemperatureReading INHERIT QSensorReading

   METHOD delete
   METHOD temperature
   METHOD setTemperature

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAmbientTemperatureReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAmbientTemperatureReading>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAmbientTemperatureReading>
#endif
#endif


HB_FUNC_STATIC( QAMBIENTTEMPERATUREREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientTemperatureReading * obj = (QAmbientTemperatureReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal temperature() const
*/
HB_FUNC_STATIC( QAMBIENTTEMPERATUREREADING_TEMPERATURE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientTemperatureReading * obj = (QAmbientTemperatureReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->temperature () );
  }
#endif
}


/*
void setTemperature(qreal temperature)
*/
HB_FUNC_STATIC( QAMBIENTTEMPERATUREREADING_SETTEMPERATURE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientTemperatureReading * obj = (QAmbientTemperatureReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTemperature ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
