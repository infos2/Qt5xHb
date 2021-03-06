/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

CLASS QGraphicsRotation INHERIT QGraphicsTransform

   METHOD new
   METHOD delete
   METHOD angle
   METHOD axis
   METHOD origin
   METHOD setAngle
   METHOD setAxis
   METHOD setOrigin
   METHOD applyTo

   METHOD onAngleChanged
   METHOD onAxisChanged
   METHOD onOriginChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsRotation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsRotation>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsRotation>
#endif

/*
QGraphicsRotation ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QGraphicsRotation * o = new QGraphicsRotation ( OPQOBJECT(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSROTATION_DELETE )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();

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
qreal angle () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_ANGLE )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->angle () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVector3D axis () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_AXIS )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QVector3D * ptr = new QVector3D( obj->axis () );
      _qt5xhb_createReturnClass ( ptr, "QVECTOR3D", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVector3D origin () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_ORIGIN )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QVector3D * ptr = new QVector3D( obj->origin () );
      _qt5xhb_createReturnClass ( ptr, "QVECTOR3D", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAngle ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_SETANGLE )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAngle ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAxis ( const QVector3D & axis )
*/
void QGraphicsRotation_setAxis1 ()
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setAxis ( *PQVECTOR3D(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAxis ( Qt::Axis axis )
*/
void QGraphicsRotation_setAxis2 ()
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setAxis ( (Qt::Axis) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setAxis ( const QVector3D & axis )
//[2]void setAxis ( Qt::Axis axis )

HB_FUNC_STATIC( QGRAPHICSROTATION_SETAXIS )
{
  if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QGraphicsRotation_setAxis1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGraphicsRotation_setAxis2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setOrigin ( const QVector3D & point )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_SETORIGIN )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
      obj->setOrigin ( *PQVECTOR3D(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void applyTo ( QMatrix4x4 * matrix ) const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_APPLYTO )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMATRIX4X4(1) )
    {
      obj->applyTo ( PQMATRIX4X4(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QGraphicsRotationSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGRAPHICSROTATION_ONANGLECHANGED )
{
  QGraphicsRotationSlots_connect_signal( "angleChanged()", "angleChanged()" );
}

HB_FUNC_STATIC( QGRAPHICSROTATION_ONAXISCHANGED )
{
  QGraphicsRotationSlots_connect_signal( "axisChanged()", "axisChanged()" );
}

HB_FUNC_STATIC( QGRAPHICSROTATION_ONORIGINCHANGED )
{
  QGraphicsRotationSlots_connect_signal( "originChanged()", "originChanged()" );
}

#pragma ENDDUMP
