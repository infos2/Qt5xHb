/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QValue3DAxis INHERIT QAbstract3DAxis

   METHOD new
   METHOD delete

   METHOD formatter
   METHOD labelFormat
   METHOD reversed
   METHOD segmentCount
   METHOD setFormatter
   METHOD setLabelFormat
   METHOD setReversed
   METHOD setSegmentCount
   METHOD setSubSegmentCount
   METHOD subSegmentCount

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QValue3DAxis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QValue3DAxis>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QValue3DAxis>
#endif

using namespace QtDataVisualization;

/*
explicit QValue3DAxis(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QVALUE3DAXIS_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QValue3DAxis * o = new QValue3DAxis ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QValue3DAxis()
*/
HB_FUNC_STATIC( QVALUE3DAXIS_DELETE )
{
  QValue3DAxis * obj = (QValue3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

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
int segmentCount() const
*/
HB_FUNC_STATIC( QVALUE3DAXIS_SEGMENTCOUNT )
{
  QValue3DAxis * obj = (QValue3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->segmentCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSegmentCount(int count)
*/
HB_FUNC_STATIC( QVALUE3DAXIS_SETSEGMENTCOUNT )
{
  QValue3DAxis * obj = (QValue3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSegmentCount ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int subSegmentCount() const
*/
HB_FUNC_STATIC( QVALUE3DAXIS_SUBSEGMENTCOUNT )
{
  QValue3DAxis * obj = (QValue3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->subSegmentCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSubSegmentCount(int count)
*/
HB_FUNC_STATIC( QVALUE3DAXIS_SETSUBSEGMENTCOUNT )
{
  QValue3DAxis * obj = (QValue3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSubSegmentCount ( PINT(1) );
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
HB_FUNC_STATIC( QVALUE3DAXIS_LABELFORMAT )
{
  QValue3DAxis * obj = (QValue3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QVALUE3DAXIS_SETLABELFORMAT )
{
  QValue3DAxis * obj = (QValue3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

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
QValue3DAxisFormatter *formatter() const
*/
HB_FUNC_STATIC( QVALUE3DAXIS_FORMATTER )
{
  QValue3DAxis * obj = (QValue3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QValue3DAxisFormatter * ptr = obj->formatter ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVALUE3DAXISFORMATTER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFormatter(QValue3DAxisFormatter *formatter)
*/
HB_FUNC_STATIC( QVALUE3DAXIS_SETFORMATTER )
{
  QValue3DAxis * obj = (QValue3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQVALUE3DAXISFORMATTER(1) )
    {
      obj->setFormatter ( PQVALUE3DAXISFORMATTER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool reversed() const
*/
HB_FUNC_STATIC( QVALUE3DAXIS_REVERSED )
{
  QValue3DAxis * obj = (QValue3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->reversed () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setReversed(bool enable)
*/
HB_FUNC_STATIC( QVALUE3DAXIS_SETREVERSED )
{
  QValue3DAxis * obj = (QValue3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setReversed ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QValue3DAxisSlots_connect_signal ( const QString & signal, const QString & slot );

#pragma ENDDUMP
