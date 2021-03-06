/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QACCESSIBLEINTERFACE
REQUEST QRECT
REQUEST QCOLOR
#endif

CLASS QAccessibleWidget INHERIT QAccessibleObject,QAccessibleActionInterface

   METHOD new
   METHOD isValid
   METHOD window
   METHOD childCount
   METHOD indexOfChild
   METHOD focusChild
   METHOD rect
   METHOD parent
   METHOD child
   METHOD text
   METHOD role
   METHOD foregroundColor
   METHOD backgroundColor
   METHOD interface_cast
   METHOD actionNames
   METHOD doAction
   METHOD keyBindingsForAction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleWidget>
#endif

#include <QWindow>

/*
QAccessibleWidget(QWidget *o, QAccessible::Role r = QAccessible::Client, const QString& name = QString())
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_NEW )
{
  if( ISBETWEEN(1,3) && ISQWIDGET(1) && ISOPTNUM(2) && ISOPTCHAR(3) )
  {
    QAccessibleWidget * o = new QAccessibleWidget ( PQWIDGET(1), ISNIL(2)? (QAccessible::Role) QAccessible::Client : (QAccessible::Role) hb_parni(2), OPQSTRING(3,QString()) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_ISVALID )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

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
QWindow *window() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_WINDOW )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWindow * ptr = obj->window ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QWINDOW" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int childCount() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_CHILDCOUNT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->childCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int indexOfChild(const QAccessibleInterface *child) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_INDEXOFCHILD )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQACCESSIBLEINTERFACE(1) )
    {
      RINT( obj->indexOfChild ( PQACCESSIBLEINTERFACE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAccessibleInterface *focusChild() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_FOCUSCHILD )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAccessibleInterface * ptr = obj->focusChild ();
      _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect rect() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_RECT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->rect () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAccessibleInterface *parent() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_PARENT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAccessibleInterface * ptr = obj->parent ();
      _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAccessibleInterface *child(int index) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_CHILD )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QAccessibleInterface * ptr = obj->child ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString text(QAccessible::Text t) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_TEXT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RQSTRING( obj->text ( (QAccessible::Text) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAccessible::Role role() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_ROLE )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->role () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QColor foregroundColor() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_FOREGROUNDCOLOR )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->foregroundColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QColor backgroundColor() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_BACKGROUNDCOLOR )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->backgroundColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void *interface_cast(QAccessible::InterfaceType t)
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_INTERFACE_CAST )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      hb_retptr( (void *) obj->interface_cast ( (QAccessible::InterfaceType) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList actionNames() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_ACTIONNAMES )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->actionNames () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void doAction(const QString &actionName)
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_DOACTION )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->doAction ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList keyBindingsForAction(const QString &actionName) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_KEYBINDINGSFORACTION )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RQSTRINGLIST( obj->keyBindingsForAction ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
