/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
REQUEST QOBJECT
#endif

CLASS QDesignerPropertyEditorInterface INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD core
   METHOD currentPropertyName
   METHOD isReadOnly
   METHOD object
   METHOD setObject
   METHOD setPropertyValue
   METHOD setReadOnly

   METHOD onPropertyChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerPropertyEditorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDesignerPropertyEditorInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDesignerPropertyEditorInterface>
#endif

HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_DELETE )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QDesignerFormEditorInterface * core () const
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_CORE )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDesignerFormEditorInterface * ptr = obj->core ();
    _qt5xhb_createReturnClass ( ptr, "QDESIGNERFORMEDITORINTERFACE" );
  }
}

/*
virtual QString currentPropertyName () const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_CURRENTPROPERTYNAME )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->currentPropertyName () );
  }
}

/*
virtual bool isReadOnly () const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_ISREADONLY )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isReadOnly () );
  }
}

/*
virtual QObject * object () const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_OBJECT )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
virtual void setObject ( QObject * object ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_SETOBJECT )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) )
    {
      obj->setObject ( PQOBJECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setPropertyValue ( const QString & name, const QVariant & value, bool changed = true ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_SETPROPERTYVALUE )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISQVARIANT(2) && ISOPTLOG(3) )
    {
      obj->setPropertyValue ( PQSTRING(1), *PQVARIANT(2), OPBOOL(3,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setReadOnly ( bool readOnly ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_SETREADONLY )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setReadOnly ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP