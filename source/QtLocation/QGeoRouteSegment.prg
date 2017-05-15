/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
REQUEST QGEOMANEUVER
#endif

CLASS QGeoRouteSegment

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setNextRouteSegment
   METHOD nextRouteSegment
   METHOD setTravelTime
   METHOD travelTime
   METHOD setDistance
   METHOD distance
   METHOD setPath
   METHOD path
   METHOD setManeuver
   METHOD maneuver

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoRouteSegment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoRouteSegment>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoRouteSegment>
#endif
#endif

#include <QGeoManeuver>
#include <QGeoCoordinate>

/*
QGeoRouteSegment()
*/
void QGeoRouteSegment_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * o = new QGeoRouteSegment (  );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoRouteSegment(const QGeoRouteSegment &other)
*/
void QGeoRouteSegment_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * par1 = (QGeoRouteSegment *) _qt5xhb_itemGetPtr(1);
  QGeoRouteSegment * o = new QGeoRouteSegment ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoRouteSegment()
//[2]QGeoRouteSegment(const QGeoRouteSegment &other)

HB_FUNC_STATIC( QGEOROUTESEGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoRouteSegment_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOROUTESEGMENT(1) )
  {
    QGeoRouteSegment_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGEOROUTESEGMENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * obj = (QGeoRouteSegment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QGEOROUTESEGMENT_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * obj = (QGeoRouteSegment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
#endif
}


/*
void setNextRouteSegment(const QGeoRouteSegment &routeSegment)
*/
HB_FUNC_STATIC( QGEOROUTESEGMENT_SETNEXTROUTESEGMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * obj = (QGeoRouteSegment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoRouteSegment * par1 = (QGeoRouteSegment *) _qt5xhb_itemGetPtr(1);
    obj->setNextRouteSegment ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoRouteSegment nextRouteSegment() const
*/
HB_FUNC_STATIC( QGEOROUTESEGMENT_NEXTROUTESEGMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * obj = (QGeoRouteSegment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoRouteSegment * ptr = new QGeoRouteSegment( obj->nextRouteSegment (  ) );
    _qt5xhb_createReturnClass ( ptr, "QGEOROUTESEGMENT", true );
  }
#endif
}


/*
void setTravelTime(int secs)
*/
HB_FUNC_STATIC( QGEOROUTESEGMENT_SETTRAVELTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * obj = (QGeoRouteSegment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTravelTime ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int travelTime() const
*/
HB_FUNC_STATIC( QGEOROUTESEGMENT_TRAVELTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * obj = (QGeoRouteSegment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->travelTime (  ) );
  }
#endif
}


/*
void setDistance(qreal distance)
*/
HB_FUNC_STATIC( QGEOROUTESEGMENT_SETDISTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * obj = (QGeoRouteSegment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDistance ( (qreal) hb_parnd(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal distance() const
*/
HB_FUNC_STATIC( QGEOROUTESEGMENT_DISTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * obj = (QGeoRouteSegment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->distance (  ) );
  }
#endif
}


/*
void setPath(const QList<QGeoCoordinate> &path)
*/
HB_FUNC_STATIC( QGEOROUTESEGMENT_SETPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * obj = (QGeoRouteSegment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGeoCoordinate> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QGeoCoordinate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setPath ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QGeoCoordinate> path() const
*/
HB_FUNC_STATIC( QGEOROUTESEGMENT_PATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * obj = (QGeoRouteSegment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGeoCoordinate> list = obj->path (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGEOCOORDINATE" );
    #else
    pDynSym = hb_dynsymFindName( "QGEOCOORDINATE" );
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
        hb_itemPutPtr( pItem, (QGeoCoordinate *) new QGeoCoordinate ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
void setManeuver(const QGeoManeuver &maneuver)
*/
HB_FUNC_STATIC( QGEOROUTESEGMENT_SETMANEUVER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * obj = (QGeoRouteSegment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoManeuver * par1 = (QGeoManeuver *) _qt5xhb_itemGetPtr(1);
    obj->setManeuver ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoManeuver maneuver() const
*/
HB_FUNC_STATIC( QGEOROUTESEGMENT_MANEUVER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteSegment * obj = (QGeoRouteSegment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoManeuver * ptr = new QGeoManeuver( obj->maneuver (  ) );
    _qt5xhb_createReturnClass ( ptr, "QGEOMANEUVER", true );
  }
#endif
}



HB_FUNC_STATIC( QGEOROUTESEGMENT_NEWFROM )
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

HB_FUNC_STATIC( QGEOROUTESEGMENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGEOROUTESEGMENT_NEWFROM );
}

HB_FUNC_STATIC( QGEOROUTESEGMENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGEOROUTESEGMENT_NEWFROM );
}

HB_FUNC_STATIC( QGEOROUTESEGMENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGEOROUTESEGMENT_SETSELFDESTRUCTION )
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