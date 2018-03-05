/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QOAuthHttpServerReplyHandler INHERIT QOAuthOobReplyHandler

   METHOD new
   METHOD delete

   METHOD callback
   METHOD callbackPath
   METHOD callbackText
   METHOD close
   METHOD isListening
   METHOD listen
   METHOD port
   METHOD setCallbackPath
   METHOD setCallbackText

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOAuthHttpServerReplyHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOAuthHttpServerReplyHandler>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOAuthHttpServerReplyHandler>
#endif

/*
explicit QOAuthHttpServerReplyHandler(QObject *parent = nullptr)
*/
void QOAuthHttpServerReplyHandler_new1 ()
{
  QOAuthHttpServerReplyHandler * o = new QOAuthHttpServerReplyHandler ( OPQOBJECT(1,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QOAuthHttpServerReplyHandler(quint16 port, QObject *parent = nullptr)
*/
void QOAuthHttpServerReplyHandler_new2 ()
{
  QOAuthHttpServerReplyHandler * o = new QOAuthHttpServerReplyHandler ( PQUINT16(1), OPQOBJECT(2,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QOAuthHttpServerReplyHandler(const QHostAddress &address, quint16 port, QObject *parent = nullptr)
*/
void QOAuthHttpServerReplyHandler_new3 ()
{
  QOAuthHttpServerReplyHandler * o = new QOAuthHttpServerReplyHandler ( *PQHOSTADDRESS(1), PQUINT16(2), OPQOBJECT(3,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]explicit QOAuthHttpServerReplyHandler(QObject *parent = nullptr)
//[2]explicit QOAuthHttpServerReplyHandler(quint16 port, QObject *parent = nullptr)
//[3]explicit QOAuthHttpServerReplyHandler(const QHostAddress &address, quint16 port, QObject *parent = nullptr)

HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QOAuthHttpServerReplyHandler_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QOAuthHttpServerReplyHandler_new2();
  }
  else if( ISBETWEEN(2,3) && ISQHOSTADDRESS(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QOAuthHttpServerReplyHandler_new3();
  }
}

/*
~QOAuthHttpServerReplyHandler()
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_DELETE )
{
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString callback() const override
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_CALLBACK )
{
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->callback () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString callbackPath() const
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_CALLBACKPATH )
{
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->callbackPath () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCallbackPath(const QString &path)
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_SETCALLBACKPATH )
{
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setCallbackPath ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString callbackText() const
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_CALLBACKTEXT )
{
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->callbackText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCallbackText(const QString &text)
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_SETCALLBACKTEXT )
{
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setCallbackText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
quint16 port() const
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_PORT )
{
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQUINT16( obj->port () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool listen(const QHostAddress &address = QHostAddress::Any, quint16 port = 0)
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_LISTEN )
{
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,2) && (ISQHOSTADDRESS(1)||ISNIL(1)) && ISOPTNUM(2) )
    {
      RBOOL( obj->listen ( ISNIL(1)? QHostAddress::Any : *(QHostAddress *) _qt5xhb_itemGetPtr(1), OPQUINT16(2,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void close()
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_CLOSE )
{
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->close ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isListening() const
*/
HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_ISLISTENING )
{
  QOAuthHttpServerReplyHandler * obj = (QOAuthHttpServerReplyHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isListening () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP