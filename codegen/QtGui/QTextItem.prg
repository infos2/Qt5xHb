/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QTextItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD descent
   METHOD ascent
   METHOD width
   METHOD renderFlags
   METHOD text
   METHOD font

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextItem>
#endif


HB_FUNC_STATIC( QTEXTITEM_DELETE )
{
  QTextItem * obj = (QTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal descent() const
*/
HB_FUNC_STATIC( QTEXTITEM_DESCENT )
{
  QTextItem * obj = (QTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->descent () );
  }
}


/*
qreal ascent() const
*/
HB_FUNC_STATIC( QTEXTITEM_ASCENT )
{
  QTextItem * obj = (QTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->ascent () );
  }
}


/*
qreal width() const
*/
HB_FUNC_STATIC( QTEXTITEM_WIDTH )
{
  QTextItem * obj = (QTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->width () );
  }
}


/*
RenderFlags renderFlags() const
*/
HB_FUNC_STATIC( QTEXTITEM_RENDERFLAGS )
{
  QTextItem * obj = (QTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->renderFlags () );
  }
}


/*
QString text() const
*/
HB_FUNC_STATIC( QTEXTITEM_TEXT )
{
  QTextItem * obj = (QTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->text () );
  }
}


/*
QFont font() const
*/
HB_FUNC_STATIC( QTEXTITEM_FONT )
{
  QTextItem * obj = (QTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}



HB_FUNC_STATIC( QTEXTITEM_NEWFROM )
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

HB_FUNC_STATIC( QTEXTITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTITEM_NEWFROM );
}

HB_FUNC_STATIC( QTEXTITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTITEM_NEWFROM );
}

HB_FUNC_STATIC( QTEXTITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTITEM_SETSELFDESTRUCTION )
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