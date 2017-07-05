/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QXmlDeclHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD attributeDecl
   METHOD errorString
   METHOD externalEntityDecl
   METHOD internalEntityDecl

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlDeclHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlDeclHandler>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlDeclHandler>
#endif

HB_FUNC_STATIC( QXMLDECLHANDLER_DELETE )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool attributeDecl ( const QString & eName, const QString & aName, const QString & type, const QString & valueDefault, const QString & value ) = 0
*/
HB_FUNC_STATIC( QXMLDECLHANDLER_ATTRIBUTEDECL )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->attributeDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5) ) );
  }
}


/*
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLDECLHANDLER_ERRORSTRING )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
virtual bool externalEntityDecl ( const QString & name, const QString & publicId, const QString & systemId ) = 0
*/
HB_FUNC_STATIC( QXMLDECLHANDLER_EXTERNALENTITYDECL )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->externalEntityDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
  }
}


/*
virtual bool internalEntityDecl ( const QString & name, const QString & value ) = 0
*/
HB_FUNC_STATIC( QXMLDECLHANDLER_INTERNALENTITYDECL )
{
  QXmlDeclHandler * obj = (QXmlDeclHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->internalEntityDecl ( PQSTRING(1), PQSTRING(2) ) );
  }
}



HB_FUNC_STATIC( QXMLDECLHANDLER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QXMLDECLHANDLER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLDECLHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QXMLDECLHANDLER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLDECLHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QXMLDECLHANDLER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLDECLHANDLER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
