$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOLYGONF
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsPolygonItem INHERIT QAbstractGraphicsShapeItem

   METHOD new
   METHOD delete
   METHOD fillRule
   METHOD polygon
   METHOD setFillRule
   METHOD setPolygon
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsPolygonItem ( QGraphicsItem * parent = 0 )
*/
$internalConstructor=|new1|QGraphicsItem *=0

/*
QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = 0 )
*/
$internalConstructor=|new2|const QPolygonF &,QGraphicsItem *=0

//[1]QGraphicsPolygonItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsPolygonItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGONF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsPolygonItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::FillRule fillRule () const
*/
$method=|Qt::FillRule|fillRule|

/*
QPolygonF polygon () const
*/
$method=|QPolygonF|polygon|

/*
void setFillRule ( Qt::FillRule rule )
*/
$method=|void|setFillRule|Qt::FillRule

/*
void setPolygon ( const QPolygonF & polygon )
*/
$method=|void|setPolygon|const QPolygonF &

/*
virtual QRectF boundingRect () const
*/
$method=|QRectF|boundingRect|

/*
virtual bool contains ( const QPointF & point ) const
*/
$method=|bool|contains|const QPointF &

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
$method=|bool|isObscuredBy|const QGraphicsItem *

/*
virtual QPainterPath opaqueArea () const
*/
$method=|QPainterPath|opaqueArea|

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
$method=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

/*
virtual QPainterPath shape () const
*/
$method=|QPainterPath|shape|

/*
virtual int type () const
*/
$method=|int|type|

#pragma ENDDUMP
