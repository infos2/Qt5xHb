/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QInAppTransaction INHERIT QObject

   METHOD delete

   METHOD product
   METHOD orderId
   METHOD failureReason
   METHOD errorString
   METHOD timestamp
   METHOD finalize
   METHOD platformProperty
   METHOD status

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInAppTransaction
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QInAppTransaction>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QInAppTransaction>
#endif

#include <QInAppProduct>

/*
explicit QInAppTransaction(TransactionStatus status, QInAppProduct *product, QObject *parent = Q_NULLPTR) (protected)
*/

/*
~QInAppTransaction()
*/
HB_FUNC_STATIC( QINAPPTRANSACTION_DELETE )
{
  QInAppTransaction * obj = (QInAppTransaction *) _qt5xhb_itemGetPtrStackSelfItem();

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
TransactionStatus status() const
*/
HB_FUNC_STATIC( QINAPPTRANSACTION_STATUS )
{
  QInAppTransaction * obj = (QInAppTransaction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->status () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QInAppProduct *product() const
*/
HB_FUNC_STATIC( QINAPPTRANSACTION_PRODUCT )
{
  QInAppTransaction * obj = (QInAppTransaction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QInAppProduct * ptr = obj->product ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QINAPPPRODUCT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString orderId() const
*/
HB_FUNC_STATIC( QINAPPTRANSACTION_ORDERID )
{
  QInAppTransaction * obj = (QInAppTransaction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->orderId () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual FailureReason failureReason() const
*/
HB_FUNC_STATIC( QINAPPTRANSACTION_FAILUREREASON )
{
  QInAppTransaction * obj = (QInAppTransaction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->failureReason () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString errorString() const
*/
HB_FUNC_STATIC( QINAPPTRANSACTION_ERRORSTRING )
{
  QInAppTransaction * obj = (QInAppTransaction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->errorString () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QDateTime timestamp() const
*/
HB_FUNC_STATIC( QINAPPTRANSACTION_TIMESTAMP )
{
  QInAppTransaction * obj = (QInAppTransaction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDateTime * ptr = new QDateTime( obj->timestamp () );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Q_INVOKABLE virtual void finalize() = 0
*/
HB_FUNC_STATIC( QINAPPTRANSACTION_FINALIZE )
{
  QInAppTransaction * obj = (QInAppTransaction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->finalize ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q_INVOKABLE virtual QString platformProperty(const QString &propertyName) const
*/
HB_FUNC_STATIC( QINAPPTRANSACTION_PLATFORMPROPERTY )
{
  QInAppTransaction * obj = (QInAppTransaction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RQSTRING( obj->platformProperty ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
