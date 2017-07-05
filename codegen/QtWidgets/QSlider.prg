/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QSlider INHERIT QAbstractSlider

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD tickInterval
   METHOD setTickInterval
   METHOD tickPosition
   METHOD setTickPosition
   METHOD event
   METHOD minimumSizeHint
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSlider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSlider>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSlider>
#endif

/*
QSlider ( QWidget * parent = 0 )
*/
void QSlider_new1 ()
{
  QSlider * o = new QSlider ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSlider ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
void QSlider_new2 ()
{
  QSlider * o = new QSlider ( (Qt::Orientation) hb_parni(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QSlider ( QWidget * parent = 0 )
//[2]QSlider ( Qt::Orientation orientation, QWidget * parent = 0 )

HB_FUNC_STATIC( QSLIDER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QSlider_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQWIDGET(2) )
  {
    QSlider_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSLIDER_DELETE )
{
  QSlider * obj = (QSlider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int tickInterval () const
*/
HB_FUNC_STATIC( QSLIDER_TICKINTERVAL )
{
  QSlider * obj = (QSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->tickInterval () );
  }
}

/*
void setTickInterval ( int ti )
*/
HB_FUNC_STATIC( QSLIDER_SETTICKINTERVAL )
{
  QSlider * obj = (QSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setTickInterval ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
TickPosition tickPosition () const
*/
HB_FUNC_STATIC( QSLIDER_TICKPOSITION )
{
  QSlider * obj = (QSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->tickPosition () );
  }
}

/*
void setTickPosition ( TickPosition position )
*/
HB_FUNC_STATIC( QSLIDER_SETTICKPOSITION )
{
  QSlider * obj = (QSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setTickPosition ( (QSlider::TickPosition) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool event ( QEvent * event )
*/
HB_FUNC_STATIC( QSLIDER_EVENT )
{
  QSlider * obj = (QSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->event ( PQEVENT(1) ) );
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QSLIDER_MINIMUMSIZEHINT )
{
  QSlider * obj = (QSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSLIDER_SIZEHINT )
{
  QSlider * obj = (QSlider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP