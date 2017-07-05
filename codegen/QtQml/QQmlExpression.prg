/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQMLCONTEXT
REQUEST QQMLENGINE
REQUEST QQMLERROR
REQUEST QVARIANT
REQUEST QOBJECT
#endif

CLASS QQmlExpression INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clearError
   METHOD columnNumber
   METHOD context
   METHOD engine
   METHOD error
   METHOD evaluate
   METHOD expression
   METHOD hasError
   METHOD lineNumber
   METHOD notifyOnValueChanged
   METHOD scopeObject
   METHOD setExpression
   METHOD setNotifyOnValueChanged
   METHOD setSourceLocation
   METHOD sourceFile

   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlExpression
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlExpression>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlExpression>
#endif

/*
QQmlExpression()
*/
void QQmlExpression_new1 ()
{
  QQmlExpression * o = new QQmlExpression ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlExpression(QQmlContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0)
*/
void QQmlExpression_new2 ()
{
  QQmlExpression * o = new QQmlExpression ( PQQMLCONTEXT(1), PQOBJECT(2), PQSTRING(3), OPQOBJECT(4,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlExpression(const QQmlScriptString & script, QQmlContext * ctxt = 0, QObject * scope = 0, QObject * parent = 0)
*/
void QQmlExpression_new3 ()
{
  QQmlContext * par2 = ISNIL(2)? 0 : (QQmlContext *) _qt5xhb_itemGetPtr(2);
  QQmlExpression * o = new QQmlExpression ( *PQQMLSCRIPTSTRING(1), par2, OPQOBJECT(3,0), OPQOBJECT(4,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QQmlExpression()
//[2]QQmlExpression(QQmlContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0)
//[3]QQmlExpression(const QQmlScriptString & script, QQmlContext * ctxt = 0, QObject * scope = 0, QObject * parent = 0)

HB_FUNC_STATIC( QQMLEXPRESSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QQmlExpression_new1();
  }
  else if( ISBETWEEN(3,4) && ISQQMLCONTEXT(1) && ISQOBJECT(2) && ISCHAR(3) && ISOPTQOBJECT(4) )
  {
    QQmlExpression_new2();
  }
  else if( ISBETWEEN(1,4) && ISQQMLSCRIPTSTRING(1) && (ISQQMLCONTEXT(2)||ISNIL(2)) && ISOPTQOBJECT(3) && ISOPTQOBJECT(4) )
  {
    QQmlExpression_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQMLEXPRESSION_DELETE )
{
  QQmlExpression * obj = (QQmlExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void clearError()
*/
HB_FUNC_STATIC( QQMLEXPRESSION_CLEARERROR )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearError ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int columnNumber() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_COLUMNNUMBER )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->columnNumber () );
  }
}

/*
QQmlContext * context() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_CONTEXT )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QQmlContext * ptr = obj->context ();
    _qt5xhb_createReturnClass ( ptr, "QQMLCONTEXT" );
  }
}

/*
QQmlEngine * engine() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_ENGINE )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QQmlEngine * ptr = obj->engine ();
    _qt5xhb_createReturnClass ( ptr, "QQMLENGINE" );
  }
}

/*
QQmlError error() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_ERROR )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QQmlError * ptr = new QQmlError( obj->error () );
    _qt5xhb_createReturnClass ( ptr, "QQMLERROR", true );
  }
}

/*
QVariant evaluate(bool * valueIsUndefined = 0)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_EVALUATE )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) )
    {
      bool par1;
      QVariant * ptr = new QVariant( obj->evaluate ( &par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString expression() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_EXPRESSION )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->expression () );
  }
}

/*
bool hasError() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_HASERROR )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasError () );
  }
}

/*
int lineNumber() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_LINENUMBER )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->lineNumber () );
  }
}

/*
bool notifyOnValueChanged() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_NOTIFYONVALUECHANGED )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->notifyOnValueChanged () );
  }
}

/*
QObject * scopeObject() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SCOPEOBJECT )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->scopeObject ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
void setExpression(const QString & expression)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SETEXPRESSION )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setExpression ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNotifyOnValueChanged(bool notifyOnChange)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SETNOTIFYONVALUECHANGED )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setNotifyOnValueChanged ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSourceLocation(const QString & url, int line, int column = 0)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SETSOURCELOCATION )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
    {
      obj->setSourceLocation ( PQSTRING(1), PINT(2), OPINT(3,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString sourceFile() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SOURCEFILE )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->sourceFile () );
  }
}

#pragma ENDDUMP