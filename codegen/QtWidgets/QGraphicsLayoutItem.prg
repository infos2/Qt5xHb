/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QGRAPHICSITEM
REQUEST QSIZEPOLICY
#endif

CLASS QGraphicsLayoutItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD contentsRect
   METHOD effectiveSizeHint
   METHOD geometry
   METHOD getContentsMargins
   METHOD graphicsItem
   METHOD isLayout
   METHOD maximumHeight
   METHOD maximumSize
   METHOD maximumWidth
   METHOD minimumHeight
   METHOD minimumSize
   METHOD minimumWidth
   METHOD ownedByLayout
   METHOD parentLayoutItem
   METHOD preferredHeight
   METHOD preferredSize
   METHOD preferredWidth
   METHOD setGeometry
   METHOD setMaximumHeight
   METHOD setMaximumSize
   METHOD setMaximumWidth
   METHOD setMinimumHeight
   METHOD setMinimumSize
   METHOD setMinimumWidth
   METHOD setParentLayoutItem
   METHOD setPreferredHeight
   METHOD setPreferredSize
   METHOD setPreferredWidth
   METHOD setSizePolicy
   METHOD sizePolicy
   METHOD updateGeometry

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsLayoutItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsLayoutItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsLayoutItem>
#endif


HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_DELETE )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QRectF contentsRect () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_CONTENTSRECT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->contentsRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QSizeF effectiveSizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_EFFECTIVESIZEHINT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF par2 = ISNIL(2)? QSizeF() : *(QSizeF *) _qt5xhb_itemGetPtr(2);
    QSizeF * ptr = new QSizeF( obj->effectiveSizeHint ( (Qt::SizeHint) hb_parni(1), par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QRectF geometry () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_GEOMETRY )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->geometry () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_GETCONTENTSMARGINS )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getContentsMargins ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QGraphicsItem * graphicsItem () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_GRAPHICSITEM )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsItem * ptr = obj->graphicsItem ();
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSITEM" );
  }
}


/*
bool isLayout () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_ISLAYOUT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isLayout () );
  }
}


/*
qreal maximumHeight () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MAXIMUMHEIGHT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->maximumHeight () );
  }
}


/*
QSizeF maximumSize () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MAXIMUMSIZE )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->maximumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
qreal maximumWidth () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MAXIMUMWIDTH )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->maximumWidth () );
  }
}


/*
qreal minimumHeight () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MINIMUMHEIGHT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->minimumHeight () );
  }
}


/*
QSizeF minimumSize () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MINIMUMSIZE )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->minimumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
qreal minimumWidth () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_MINIMUMWIDTH )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->minimumWidth () );
  }
}


/*
bool ownedByLayout () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_OWNEDBYLAYOUT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->ownedByLayout () );
  }
}


/*
QGraphicsLayoutItem * parentLayoutItem () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_PARENTLAYOUTITEM )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayoutItem * ptr = obj->parentLayoutItem ();
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
  }
}


/*
qreal preferredHeight () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_PREFERREDHEIGHT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->preferredHeight () );
  }
}


/*
QSizeF preferredSize () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_PREFERREDSIZE )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->preferredSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
qreal preferredWidth () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_PREFERREDWIDTH )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->preferredWidth () );
  }
}


/*
virtual void setGeometry ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETGEOMETRY )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGeometry ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumHeight ( qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMAXIMUMHEIGHT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumHeight ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumSize ( const QSizeF & size )
*/
void QGraphicsLayoutItem_setMaximumSize1 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumSize ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaximumSize ( qreal w, qreal h )
*/
void QGraphicsLayoutItem_setMaximumSize2 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumSize ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMAXIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsLayoutItem_setMaximumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsLayoutItem_setMaximumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMaximumWidth ( qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMAXIMUMWIDTH )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumHeight ( qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMINIMUMHEIGHT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinimumHeight ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumSize ( const QSizeF & size )
*/
void QGraphicsLayoutItem_setMinimumSize1 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinimumSize ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMinimumSize ( qreal w, qreal h )
*/
void QGraphicsLayoutItem_setMinimumSize2 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinimumSize ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMINIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsLayoutItem_setMinimumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsLayoutItem_setMinimumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMinimumWidth ( qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMINIMUMWIDTH )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinimumWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setParentLayoutItem ( QGraphicsLayoutItem * parent )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETPARENTLAYOUTITEM )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setParentLayoutItem ( PQGRAPHICSLAYOUTITEM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPreferredHeight ( qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETPREFERREDHEIGHT )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPreferredHeight ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPreferredSize ( const QSizeF & size )
*/
void QGraphicsLayoutItem_setPreferredSize1 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPreferredSize ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPreferredSize ( qreal w, qreal h )
*/
void QGraphicsLayoutItem_setPreferredSize2 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPreferredSize ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETPREFERREDSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsLayoutItem_setPreferredSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsLayoutItem_setPreferredSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPreferredWidth ( qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETPREFERREDWIDTH )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPreferredWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSizePolicy ( const QSizePolicy & policy )
*/
void QGraphicsLayoutItem_setSizePolicy1 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSizePolicy ( *PQSIZEPOLICY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizePolicy ( QSizePolicy::Policy hPolicy, QSizePolicy::Policy vPolicy, QSizePolicy::ControlType controlType = QSizePolicy::DefaultType )
*/
void QGraphicsLayoutItem_setSizePolicy2 ()
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = ISNIL(3)? (int) QSizePolicy::DefaultType : hb_parni(3);
    obj->setSizePolicy ( (QSizePolicy::Policy) hb_parni(1), (QSizePolicy::Policy) hb_parni(2), (QSizePolicy::ControlType) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETSIZEPOLICY )
{
  if( ISNUMPAR(1) && ISQSIZEPOLICY(1) )
  {
    QGraphicsLayoutItem_setSizePolicy1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QGraphicsLayoutItem_setSizePolicy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSizePolicy sizePolicy () const
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SIZEPOLICY )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizePolicy * ptr = new QSizePolicy( obj->sizePolicy () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEPOLICY", true );
  }
}


/*
virtual void updateGeometry ()
*/
HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_UPDATEGEOMETRY )
{
  QGraphicsLayoutItem * obj = (QGraphicsLayoutItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->updateGeometry ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_NEWFROM )
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

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGRAPHICSLAYOUTITEM_NEWFROM );
}

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGRAPHICSLAYOUTITEM_NEWFROM );
}

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETSELFDESTRUCTION )
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