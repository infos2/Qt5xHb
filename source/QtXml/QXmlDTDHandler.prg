/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

CLASS QXmlDTDHandler

   DATA pointer
   //DATA class_id INIT Class_Id_QXmlDTDHandler
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD errorString
   METHOD notationDecl
   METHOD unparsedEntityDecl

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlDTDHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlDTDHandler>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlDTDHandler>
#endif

HB_FUNC_STATIC( QXMLDTDHANDLER_DELETE )
{
  QXmlDTDHandler * obj = (QXmlDTDHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString errorString () const = 0
*/
HB_FUNC_STATIC( QXMLDTDHANDLER_ERRORSTRING )
{
  QXmlDTDHandler * obj = (QXmlDTDHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
virtual bool notationDecl ( const QString & name, const QString & publicId, const QString & systemId ) = 0
*/
HB_FUNC_STATIC( QXMLDTDHANDLER_NOTATIONDECL )
{
  QXmlDTDHandler * obj = (QXmlDTDHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    hb_retl( obj->notationDecl ( par1, par2, par3 ) );
  }
}


/*
virtual bool unparsedEntityDecl ( const QString & name, const QString & publicId, const QString & systemId, const QString & notationName ) = 0
*/
HB_FUNC_STATIC( QXMLDTDHANDLER_UNPARSEDENTITYDECL )
{
  QXmlDTDHandler * obj = (QXmlDTDHandler *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    QString par4 = QLatin1String( hb_parc(4) );
    hb_retl( obj->unparsedEntityDecl ( par1, par2, par3, par4 ) );
  }
}



HB_FUNC_STATIC( QXMLDTDHANDLER_NEWFROM )
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

HB_FUNC_STATIC( QXMLDTDHANDLER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLDTDHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QXMLDTDHANDLER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLDTDHANDLER_NEWFROM );
}

HB_FUNC_STATIC( QXMLDTDHANDLER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLDTDHANDLER_SETSELFDESTRUCTION )
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