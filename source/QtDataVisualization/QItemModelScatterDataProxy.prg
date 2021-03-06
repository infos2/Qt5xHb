/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QItemModelScatterDataProxy INHERIT QScatterDataProxy

   METHOD new
   METHOD delete

   METHOD itemModel
   METHOD remap
   METHOD rotationRole
   METHOD rotationRolePattern
   METHOD rotationRoleReplace
   METHOD setItemModel
   METHOD setRotationRole
   METHOD setRotationRolePattern
   METHOD setRotationRoleReplace
   METHOD setXPosRole
   METHOD setXPosRolePattern
   METHOD setXPosRoleReplace
   METHOD setYPosRole
   METHOD setYPosRolePattern
   METHOD setYPosRoleReplace
   METHOD setZPosRole
   METHOD setZPosRolePattern
   METHOD setZPosRoleReplace
   METHOD xPosRole
   METHOD xPosRolePattern
   METHOD xPosRoleReplace
   METHOD yPosRole
   METHOD yPosRolePattern
   METHOD yPosRoleReplace
   METHOD zPosRole
   METHOD zPosRolePattern
   METHOD zPosRoleReplace

   METHOD onItemModelChanged
   METHOD onRotationRoleChanged
   METHOD onRotationRolePatternChanged
   METHOD onRotationRoleReplaceChanged
   METHOD onXPosRoleChanged
   METHOD onXPosRolePatternChanged
   METHOD onXPosRoleReplaceChanged
   METHOD onYPosRoleChanged
   METHOD onYPosRolePatternChanged
   METHOD onYPosRoleReplaceChanged
   METHOD onZPosRoleChanged
   METHOD onZPosRolePatternChanged
   METHOD onZPosRoleReplaceChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QItemModelScatterDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QItemModelScatterDataProxy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QItemModelScatterDataProxy>
#endif

using namespace QtDataVisualization;

/*
explicit QItemModelScatterDataProxy(QObject *parent = Q_NULLPTR)
*/
void QItemModelScatterDataProxy_new1 ()
{
  QItemModelScatterDataProxy * o = new QItemModelScatterDataProxy ( OPQOBJECT(1,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, QObject *parent = Q_NULLPTR)
*/
void QItemModelScatterDataProxy_new2 ()
{
  QItemModelScatterDataProxy * o = new QItemModelScatterDataProxy ( PQABSTRACTITEMMODEL(1), OPQOBJECT(2,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, QObject *parent = Q_NULLPTR)
*/
void QItemModelScatterDataProxy_new3 ()
{
  QItemModelScatterDataProxy * o = new QItemModelScatterDataProxy ( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), OPQOBJECT(5,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, const QString &rotationRole, QObject *parent = Q_NULLPTR)
*/
void QItemModelScatterDataProxy_new4 ()
{
  QItemModelScatterDataProxy * o = new QItemModelScatterDataProxy ( PQABSTRACTITEMMODEL(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5), OPQOBJECT(6,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]explicit QItemModelScatterDataProxy(QObject *parent = Q_NULLPTR)
//[2]explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, QObject *parent = Q_NULLPTR)
//[3]explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, QObject *parent = Q_NULLPTR)
//[4]explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, const QString &rotationRole, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QItemModelScatterDataProxy_new1();
  }
  else if( ISBETWEEN(1,2) && ISQABSTRACTITEMMODEL(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QItemModelScatterDataProxy_new2();
  }
  else if( ISBETWEEN(4,5) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    QItemModelScatterDataProxy_new3();
  }
  else if( ISBETWEEN(5,6) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISCHAR(5) && (ISQOBJECT(6)||ISNIL(6)) )
  {
    QItemModelScatterDataProxy_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QItemModelScatterDataProxy()
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_DELETE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

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
QAbstractItemModel *itemModel() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ITEMMODEL )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractItemModel * ptr = obj->itemModel ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMMODEL" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setItemModel(QAbstractItemModel *itemModel)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETITEMMODEL )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
      obj->setItemModel ( PQABSTRACTITEMMODEL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString xPosRole() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_XPOSROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->xPosRole () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setXPosRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETXPOSROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setXPosRole ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString yPosRole() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_YPOSROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->yPosRole () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setYPosRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETYPOSROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setYPosRole ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString zPosRole() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ZPOSROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->zPosRole () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setZPosRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETZPOSROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setZPosRole ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString rotationRole() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ROTATIONROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->rotationRole () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRotationRole(const QString &role)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETROTATIONROLE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setRotationRole ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegExp xPosRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_XPOSROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRegExp * ptr = new QRegExp( obj->xPosRolePattern () );
      _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setXPosRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETXPOSROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
      obj->setXPosRolePattern ( *PQREGEXP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegExp yPosRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_YPOSROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRegExp * ptr = new QRegExp( obj->yPosRolePattern () );
      _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setYPosRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETYPOSROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
      obj->setYPosRolePattern ( *PQREGEXP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegExp zPosRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ZPOSROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRegExp * ptr = new QRegExp( obj->zPosRolePattern () );
      _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setZPosRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETZPOSROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
      obj->setZPosRolePattern ( *PQREGEXP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegExp rotationRolePattern() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ROTATIONROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRegExp * ptr = new QRegExp( obj->rotationRolePattern () );
      _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRotationRolePattern(const QRegExp &pattern)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETROTATIONROLEPATTERN )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQREGEXP(1) )
    {
      obj->setRotationRolePattern ( *PQREGEXP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString xPosRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_XPOSROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->xPosRoleReplace () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setXPosRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETXPOSROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setXPosRoleReplace ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString yPosRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_YPOSROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->yPosRoleReplace () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setYPosRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETYPOSROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setYPosRoleReplace ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString zPosRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ZPOSROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->zPosRoleReplace () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setZPosRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETZPOSROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setZPosRoleReplace ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString rotationRoleReplace() const
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ROTATIONROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->rotationRoleReplace () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRotationRoleReplace(const QString &replace)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_SETROTATIONROLEREPLACE )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setRotationRoleReplace ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void remap(const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, const QString &rotationRole)
*/
HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_REMAP )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(4) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) )
    {
      obj->remap ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QItemModelScatterDataProxySlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONITEMMODELCHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "itemModelChanged(QAbstractItemModel*)", "itemModelChanged(QAbstractItemModel*)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONROTATIONROLECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "rotationRoleChanged(QString)", "rotationRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONROTATIONROLEPATTERNCHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "rotationRolePatternChanged(QRegExp)", "rotationRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONROTATIONROLEREPLACECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "rotationRoleReplaceChanged(QString)", "rotationRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONXPOSROLECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "xPosRoleChanged(QString)", "xPosRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONXPOSROLEPATTERNCHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "xPosRolePatternChanged(QRegExp)", "xPosRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONXPOSROLEREPLACECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "xPosRoleReplaceChanged(QString)", "xPosRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONYPOSROLECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "yPosRoleChanged(QString)", "yPosRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONYPOSROLEPATTERNCHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "yPosRolePatternChanged(QRegExp)", "yPosRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONYPOSROLEREPLACECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "yPosRoleReplaceChanged(QString)", "yPosRoleReplaceChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONZPOSROLECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "zPosRoleChanged(QString)", "zPosRoleChanged(QString)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONZPOSROLEPATTERNCHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "zPosRolePatternChanged(QRegExp)", "zPosRolePatternChanged(QRegExp)" );
}

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_ONZPOSROLEREPLACECHANGED )
{
  QItemModelScatterDataProxySlots_connect_signal( "zPosRoleReplaceChanged(QString)", "zPosRoleReplaceChanged(QString)" );
}

#pragma ENDDUMP
