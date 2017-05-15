/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QPLACEMANAGER
#endif

CLASS QPlaceIcon

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD url
   METHOD manager
   METHOD setManager
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceIcon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceIcon>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceIcon>
#endif
#endif

/*
QPlaceIcon()
*/
void QPlaceIcon_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * o = new QPlaceIcon (  );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceIcon(const QPlaceIcon &other)
*/
void QPlaceIcon_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * par1 = (QPlaceIcon *) _qt5xhb_itemGetPtr(1);
  QPlaceIcon * o = new QPlaceIcon ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceIcon()
//[2]QPlaceIcon(const QPlaceIcon &other)

HB_FUNC_STATIC( QPLACEICON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceIcon_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEICON(1) )
  {
    QPlaceIcon_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLACEICON_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QUrl url(const QSize &size = QSize()) const
*/
HB_FUNC_STATIC( QPLACEICON_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize par1 = ISNIL(1)? QSize() : *(QSize *) _qt5xhb_itemGetPtr(1);
    QUrl * ptr = new QUrl( obj->url ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
QPlaceManager *manager() const
*/
HB_FUNC_STATIC( QPLACEICON_MANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceManager * ptr = obj->manager (  );
    _qt5xhb_createReturnClass ( ptr, "QPLACEMANAGER" );
  }
#endif
}

/*
void setManager(QPlaceManager *manager)
*/
HB_FUNC_STATIC( QPLACEICON_SETMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceManager * par1 = (QPlaceManager *) _qt5xhb_itemGetPtr(1);
    obj->setManager ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPLACEICON_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
#endif
}



HB_FUNC_STATIC( QPLACEICON_NEWFROM )
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

HB_FUNC_STATIC( QPLACEICON_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACEICON_NEWFROM );
}

HB_FUNC_STATIC( QPLACEICON_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACEICON_NEWFROM );
}

HB_FUNC_STATIC( QPLACEICON_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLACEICON_SETSELFDESTRUCTION )
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