/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERCUSTOMWIDGETINTERFACE
#endif

CLASS QDesignerCustomWidgetCollectionInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD customWidgets

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerCustomWidgetCollectionInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDesignerCustomWidgetCollectionInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDesignerCustomWidgetCollectionInterface>
#endif

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE_DELETE )
{
  QDesignerCustomWidgetCollectionInterface * obj = (QDesignerCustomWidgetCollectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QList<QDesignerCustomWidgetInterface *> customWidgets () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE_CUSTOMWIDGETS )
{
  QDesignerCustomWidgetCollectionInterface * obj = (QDesignerCustomWidgetCollectionInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QDesignerCustomWidgetInterface *> list = obj->customWidgets ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QDESIGNERCUSTOMWIDGETINTERFACE" );
    #else
    pDynSym = hb_dynsymFindName( "QDESIGNERCUSTOMWIDGETINTERFACE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QDesignerCustomWidgetInterface *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE_NEWFROM )
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

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE_SETSELFDESTRUCTION )
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