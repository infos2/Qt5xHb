/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACESUPPLIER
REQUEST QPLACEUSER
#endif

CLASS QPlaceContent

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD supplier
   METHOD setSupplier
   METHOD user
   METHOD setUser
   METHOD attribution
   METHOD setAttribution

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceContent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceContent>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceContent>
#endif
#endif

#include <QPlaceSupplier>
#include <QPlaceUser>

/*
QPlaceContent()
*/
void QPlaceContent_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * o = new QPlaceContent (  );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceContent(const QPlaceContent &other)
*/
void QPlaceContent_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * par1 = (QPlaceContent *) _qt5xhb_itemGetPtr(1);
  QPlaceContent * o = new QPlaceContent ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceContent()
//[2]QPlaceContent(const QPlaceContent &other)

HB_FUNC_STATIC( QPLACECONTENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContent_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENT(1) )
  {
    QPlaceContent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLACECONTENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPlaceContent::Type type() const
*/
HB_FUNC_STATIC( QPLACECONTENT_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
#endif
}


/*
QPlaceSupplier supplier() const
*/
HB_FUNC_STATIC( QPLACECONTENT_SUPPLIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSupplier * ptr = new QPlaceSupplier( obj->supplier (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPLACESUPPLIER", true );
  }
#endif
}

/*
void setSupplier(const QPlaceSupplier &supplier)
*/
HB_FUNC_STATIC( QPLACECONTENT_SETSUPPLIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSupplier * par1 = (QPlaceSupplier *) _qt5xhb_itemGetPtr(1);
    obj->setSupplier ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QPlaceUser user() const
*/
HB_FUNC_STATIC( QPLACECONTENT_USER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceUser * ptr = new QPlaceUser( obj->user (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEUSER", true );
  }
#endif
}

/*
void setUser(const QPlaceUser &user)
*/
HB_FUNC_STATIC( QPLACECONTENT_SETUSER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceUser * par1 = (QPlaceUser *) _qt5xhb_itemGetPtr(1);
    obj->setUser ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString attribution() const
*/
HB_FUNC_STATIC( QPLACECONTENT_ATTRIBUTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->attribution (  ).toLatin1().data() );
  }
#endif
}

/*
void setAttribution(const QString &attribution)
*/
HB_FUNC_STATIC( QPLACECONTENT_SETATTRIBUTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAttribution ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



HB_FUNC_STATIC( QPLACECONTENT_NEWFROM )
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

HB_FUNC_STATIC( QPLACECONTENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACECONTENT_NEWFROM );
}

HB_FUNC_STATIC( QPLACECONTENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACECONTENT_NEWFROM );
}

HB_FUNC_STATIC( QPLACECONTENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLACECONTENT_SETSELFDESTRUCTION )
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