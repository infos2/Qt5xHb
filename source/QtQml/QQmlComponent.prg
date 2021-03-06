/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QQMLCONTEXT
REQUEST QURL
#endif

CLASS QQmlComponent INHERIT QObject

   METHOD new
   METHOD delete
   METHOD beginCreate
   METHOD completeCreate
   METHOD create
   METHOD creationContext
   METHOD isError
   METHOD isLoading
   METHOD isNull
   METHOD isReady
   METHOD progress
   METHOD status
   METHOD url
   METHOD loadUrl
   METHOD setData

   METHOD onProgressChanged
   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlComponent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlComponent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlComponent>
#endif

#include <QQmlContext>

/*
QQmlComponent(QQmlEngine * engine, QObject * parent = 0)
*/
void QQmlComponent_new1 ()
{
  QQmlComponent * o = new QQmlComponent ( PQQMLENGINE(1), OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QQmlComponent(QQmlEngine * engine, const QString & fileName, QObject * parent = 0)
*/
void QQmlComponent_new2 ()
{
  QQmlComponent * o = new QQmlComponent ( PQQMLENGINE(1), PQSTRING(2), OPQOBJECT(3,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QQmlComponent(QQmlEngine * engine, const QString & fileName, CompilationMode mode, QObject * parent = 0)
*/
void QQmlComponent_new3 ()
{
  QQmlComponent * o = new QQmlComponent ( PQQMLENGINE(1), PQSTRING(2), (QQmlComponent::CompilationMode) hb_parni(3), OPQOBJECT(4,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QQmlComponent(QQmlEngine * engine, const QUrl & url, QObject * parent = 0)
*/
void QQmlComponent_new4 ()
{
  QQmlComponent * o = new QQmlComponent ( PQQMLENGINE(1), *PQURL(2), OPQOBJECT(3,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QQmlComponent(QQmlEngine * engine, const QUrl & url, CompilationMode mode, QObject * parent = 0)
*/
void QQmlComponent_new5 ()
{
  QQmlComponent * o = new QQmlComponent ( PQQMLENGINE(1), *PQURL(2), (QQmlComponent::CompilationMode) hb_parni(3), OPQOBJECT(4,0) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QQmlComponent(QQmlEngine * engine, QObject * parent = 0)
//[2]QQmlComponent(QQmlEngine * engine, const QString & fileName, QObject * parent = 0)
//[3]QQmlComponent(QQmlEngine * engine, const QString & fileName, CompilationMode mode, QObject * parent = 0)
//[4]QQmlComponent(QQmlEngine * engine, const QUrl & url, QObject * parent = 0)
//[5]QQmlComponent(QQmlEngine * engine, const QUrl & url, CompilationMode mode, QObject * parent = 0)

HB_FUNC_STATIC( QQMLCOMPONENT_NEW )
{
  if( ISBETWEEN(1,2) && ISQQMLENGINE(1) && ISOPTQOBJECT(2) )
  {
    QQmlComponent_new1();
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && ISCHAR(2) && ISOPTQOBJECT(3) )
  {
    QQmlComponent_new2();
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && ISCHAR(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    QQmlComponent_new3();
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && ISQURL(2) && ISOPTQOBJECT(3) )
  {
    QQmlComponent_new4();
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && ISQURL(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    QQmlComponent_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQMLCOMPONENT_DELETE )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QObject * beginCreate(QQmlContext * publicContext)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_BEGINCREATE )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQQMLCONTEXT(1) )
    {
      QObject * ptr = obj->beginCreate ( PQQMLCONTEXT(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void completeCreate()
*/
HB_FUNC_STATIC( QQMLCOMPONENT_COMPLETECREATE )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->completeCreate ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QObject * create(QQmlContext * context = 0)
*/
void QQmlComponent_create1 ()
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QObject * ptr = obj->create ( OPQQMLCONTEXT(1,0) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
void create(QQmlIncubator & incubator, QQmlContext * context = 0, QQmlContext * forContext = 0)
*/
void QQmlComponent_create2 ()
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->create ( *PQQMLINCUBATOR(1), OPQQMLCONTEXT(2,0), OPQQMLCONTEXT(3,0) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual QObject * create(QQmlContext * context = 0)
//[2]void create(QQmlIncubator & incubator, QQmlContext * context = 0, QQmlContext * forContext = 0)

HB_FUNC_STATIC( QQMLCOMPONENT_CREATE )
{
  if( ISBETWEEN(0,1) && (ISQQMLCONTEXT(1)||ISNIL(1)) )
  {
    QQmlComponent_create1();
  }
  else if( ISBETWEEN(1,3) && ISQQMLINCUBATOR(1) && (ISQQMLCONTEXT(2)||ISNIL(2)) && (ISQQMLCONTEXT(3)||ISNIL(3)) )
  {
    QQmlComponent_create2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QQmlContext * creationContext() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_CREATIONCONTEXT )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QQmlContext * ptr = obj->creationContext ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QQMLCONTEXT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isError() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISERROR )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isError () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isLoading() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISLOADING )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isLoading () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISNULL )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isNull () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isReady() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_ISREADY )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isReady () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal progress() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_PROGRESS )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->progress () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Status status() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_STATUS )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

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
QUrl url() const
*/
HB_FUNC_STATIC( QQMLCOMPONENT_URL )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QUrl * ptr = new QUrl( obj->url () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void loadUrl(const QUrl & url)
*/
void QQmlComponent_loadUrl1 ()
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->loadUrl ( *PQURL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void loadUrl(const QUrl & url, CompilationMode mode)
*/
void QQmlComponent_loadUrl2 ()
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->loadUrl ( *PQURL(1), (QQmlComponent::CompilationMode) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void loadUrl(const QUrl & url)
//[2]void loadUrl(const QUrl & url, CompilationMode mode)

HB_FUNC_STATIC( QQMLCOMPONENT_LOADURL )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QQmlComponent_loadUrl1();
  }
  else if( ISNUMPAR(2) && ISQURL(1) && ISNUM(2) )
  {
    QQmlComponent_loadUrl2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setData(const QByteArray & data, const QUrl & url)
*/
HB_FUNC_STATIC( QQMLCOMPONENT_SETDATA )
{
  QQmlComponent * obj = (QQmlComponent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQURL(2) )
    {
      obj->setData ( *PQBYTEARRAY(1), *PQURL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QQmlComponentSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QQMLCOMPONENT_ONPROGRESSCHANGED )
{
  QQmlComponentSlots_connect_signal( "progressChanged(qreal)", "progressChanged(qreal)" );
}

HB_FUNC_STATIC( QQMLCOMPONENT_ONSTATUSCHANGED )
{
  QQmlComponentSlots_connect_signal( "statusChanged(QQmlComponent::Status)", "statusChanged(QQmlComponent::Status)" );
}

#pragma ENDDUMP
