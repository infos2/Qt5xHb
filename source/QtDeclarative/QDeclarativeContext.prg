/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QOBJECT
REQUEST QVARIANT
REQUEST QDECLARATIVEENGINE
#endif

CLASS QDeclarativeContext INHERIT QObject

   METHOD new
   METHOD delete
   METHOD baseUrl
   METHOD contextObject
   METHOD contextProperty
   METHOD engine
   METHOD isValid
   METHOD parentContext
   METHOD resolvedUrl
   METHOD setBaseUrl
   METHOD setContextObject
   METHOD setContextProperty

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDeclarativeContext>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDeclarativeContext>
#endif

#include <QDeclarativeEngine>

/*
QDeclarativeContext ( QDeclarativeEngine * engine, QObject * parent = 0 )
*/
void QDeclarativeContext_new1 ()
{
  QDeclarativeContext * o = new QDeclarativeContext ( PQDECLARATIVEENGINE(1), OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QDeclarativeContext ( QDeclarativeContext * parentContext, QObject * parent = 0 )
*/
void QDeclarativeContext_new2 ()
{
  QDeclarativeContext * o = new QDeclarativeContext ( PQDECLARATIVECONTEXT(1), OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QDeclarativeContext ( QDeclarativeEngine * engine, QObject * parent = 0 )
//[2]QDeclarativeContext ( QDeclarativeContext * parentContext, QObject * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVECONTEXT_NEW )
{
  if( ISBETWEEN(1,2) && ISQDECLARATIVEENGINE(1) && ISOPTQOBJECT(2) )
  {
    QDeclarativeContext_new1();
  }
  else if( ISBETWEEN(1,2) && ISQDECLARATIVECONTEXT(1) && ISOPTQOBJECT(2) )
  {
    QDeclarativeContext_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVECONTEXT_DELETE )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();

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
QUrl baseUrl () const
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_BASEURL )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QUrl * ptr = new QUrl( obj->baseUrl () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QObject * contextObject () const
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_CONTEXTOBJECT )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QObject * ptr = obj->contextObject ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant contextProperty ( const QString & name ) const
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_CONTEXTPROPERTY )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QVariant * ptr = new QVariant( obj->contextProperty ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDeclarativeEngine * engine () const
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_ENGINE )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDeclarativeEngine * ptr = obj->engine ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QDECLARATIVEENGINE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_ISVALID )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isValid () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDeclarativeContext * parentContext () const
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_PARENTCONTEXT )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDeclarativeContext * ptr = obj->parentContext ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QDECLARATIVECONTEXT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QUrl resolvedUrl ( const QUrl & src )
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_RESOLVEDURL )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQURL(1) )
    {
      QUrl * ptr = new QUrl( obj->resolvedUrl ( *PQURL(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBaseUrl ( const QUrl & baseUrl )
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_SETBASEURL )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQURL(1) )
    {
      obj->setBaseUrl ( *PQURL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContextObject ( QObject * object )
*/
HB_FUNC_STATIC( QDECLARATIVECONTEXT_SETCONTEXTOBJECT )
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
      obj->setContextObject ( PQOBJECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContextProperty ( const QString & name, QObject * value )
*/
void QDeclarativeContext_setContextProperty1 ()
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setContextProperty ( PQSTRING(1), PQOBJECT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContextProperty ( const QString & name, const QVariant & value )
*/
void QDeclarativeContext_setContextProperty2 ()
{
  QDeclarativeContext * obj = (QDeclarativeContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setContextProperty ( PQSTRING(1), *PQVARIANT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setContextProperty ( const QString & name, QObject * value )
//[2]void setContextProperty ( const QString & name, const QVariant & value )

HB_FUNC_STATIC( QDECLARATIVECONTEXT_SETCONTEXTPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QDeclarativeContext_setContextProperty1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
  {
    QDeclarativeContext_setContextProperty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
