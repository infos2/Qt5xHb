/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QLogValueAxis INHERIT QAbstractAxis

   METHOD new
   METHOD delete

   METHOD base
   METHOD labelFormat
   METHOD max
   METHOD min
   METHOD minorTickCount
   METHOD setBase
   METHOD setLabelFormat
   METHOD setMax
   METHOD setMin
   METHOD setMinorTickCount
   METHOD setRange
   METHOD tickCount
   METHOD type

   METHOD onBaseChanged
   METHOD onLabelFormatChanged
   METHOD onMaxChanged
   METHOD onMinChanged
   METHOD onMinorTickCountChanged
   METHOD onRangeChanged
   METHOD onTickCountChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLogValueAxis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QLogValueAxis>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QLogValueAxis>
#endif

using namespace QtCharts;

/*
explicit QLogValueAxis(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QLogValueAxis * o = new QLogValueAxis ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QLogValueAxis(QLogValueAxisPrivate &d, QObject *parent = Q_NULLPTR) (protected)
*/

/*
~QLogValueAxis()
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_DELETE )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

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
qreal min() const
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_MIN )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->min () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMin(qreal min)
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_SETMIN )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMin ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal max() const
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_MAX )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->max () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMax(qreal max)
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_SETMAX )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMax ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString labelFormat() const
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_LABELFORMAT )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->labelFormat () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLabelFormat(const QString &format)
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_SETLABELFORMAT )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setLabelFormat ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal base() const
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_BASE )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->base () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBase(qreal base)
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_SETBASE )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setBase ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int tickCount() const
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_TICKCOUNT )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->tickCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int minorTickCount() const
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_MINORTICKCOUNT )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->minorTickCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMinorTickCount(int minorTickCount)
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_SETMINORTICKCOUNT )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMinorTickCount ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
AxisType type() const
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_TYPE )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->type () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRange(qreal min, qreal max)
*/
HB_FUNC_STATIC( QLOGVALUEAXIS_SETRANGE )
{
  QLogValueAxis * obj = (QLogValueAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->setRange ( PQREAL(1), PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP