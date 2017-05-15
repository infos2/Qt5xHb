/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QPLACEICON
#endif

CLASS QPlaceSupplier

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD setName
   METHOD supplierId
   METHOD setSupplierId
   METHOD url
   METHOD setUrl
   METHOD icon
   METHOD setIcon
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceSupplier
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceSupplier>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceSupplier>
#endif
#endif

/*
QPlaceSupplier()
*/
void QPlaceSupplier_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * o = new QPlaceSupplier (  );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceSupplier(const QPlaceSupplier &other)
*/
void QPlaceSupplier_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * par1 = (QPlaceSupplier *) _qt5xhb_itemGetPtr(1);
  QPlaceSupplier * o = new QPlaceSupplier ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceSupplier()
//[2]QPlaceSupplier(const QPlaceSupplier &other)

HB_FUNC_STATIC( QPLACESUPPLIER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceSupplier_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACESUPPLIER(1) )
  {
    QPlaceSupplier_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLACESUPPLIER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
QString name() const
*/
HB_FUNC_STATIC( QPLACESUPPLIER_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
#endif
}

/*
void setName(const QString &data)
*/
HB_FUNC_STATIC( QPLACESUPPLIER_SETNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString supplierId() const
*/
HB_FUNC_STATIC( QPLACESUPPLIER_SUPPLIERID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->supplierId (  ).toLatin1().data() );
  }
#endif
}

/*
void setSupplierId(const QString &identifier)
*/
HB_FUNC_STATIC( QPLACESUPPLIER_SETSUPPLIERID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSupplierId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QUrl url() const
*/
HB_FUNC_STATIC( QPLACESUPPLIER_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}

/*
void setUrl(const QUrl &data)
*/
HB_FUNC_STATIC( QPLACESUPPLIER_SETURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QPlaceIcon icon() const
*/
HB_FUNC_STATIC( QPLACESUPPLIER_ICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIcon * ptr = new QPlaceIcon( obj->icon (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEICON", true );
  }
#endif
}

/*
void setIcon(const QPlaceIcon &icon)
*/
HB_FUNC_STATIC( QPLACESUPPLIER_SETICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIcon * par1 = (QPlaceIcon *) _qt5xhb_itemGetPtr(1);
    obj->setIcon ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPLACESUPPLIER_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
#endif
}



HB_FUNC_STATIC( QPLACESUPPLIER_NEWFROM )
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

HB_FUNC_STATIC( QPLACESUPPLIER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACESUPPLIER_NEWFROM );
}

HB_FUNC_STATIC( QPLACESUPPLIER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACESUPPLIER_NEWFROM );
}

HB_FUNC_STATIC( QPLACESUPPLIER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLACESUPPLIER_SETSELFDESTRUCTION )
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