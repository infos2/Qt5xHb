/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QMediaStreamsControl INHERIT QMediaControl

   METHOD delete

   METHOD isActive
   METHOD metaData
   METHOD setActive
   METHOD streamCount
   METHOD streamType

   METHOD onActiveStreamsChanged
   METHOD onStreamsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaStreamsControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaStreamsControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaStreamsControl>
#endif

/*
explicit QMediaStreamsControl(QObject *parent = Q_NULLPTR) (protected)
*/

/*
virtual ~QMediaStreamsControl()
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_DELETE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

/*
virtual bool isActive(int streamNumber) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_ISACTIVE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->isActive ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QVariant metaData(int streamNumber, const QString & key) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_METADATA )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
    {
      QVariant * ptr = new QVariant( obj->metaData ( PINT(1), PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setActive(int streamNumber, bool state) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_SETACTIVE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
    {
      obj->setActive ( PINT(1), PBOOL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int streamCount() = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_STREAMCOUNT )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->streamCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual StreamType streamType(int streamNumber) = 0
*/
HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_STREAMTYPE )
{
  QMediaStreamsControl * obj = (QMediaStreamsControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RENUM( obj->streamType ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

void QMediaStreamsControlSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_ONACTIVESTREAMSCHANGED )
{
  QMediaStreamsControlSlots_connect_signal( "activeStreamsChanged()", "activeStreamsChanged()" );
}

HB_FUNC_STATIC( QMEDIASTREAMSCONTROL_ONSTREAMSCHANGED )
{
  QMediaStreamsControlSlots_connect_signal( "streamsChanged()", "streamsChanged()" );
}

#pragma ENDDUMP
