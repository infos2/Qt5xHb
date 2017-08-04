$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSITEM
REQUEST QGRAPHICSWIDGET
REQUEST QGRAPHICSELLIPSEITEM
REQUEST QGRAPHICSLINEITEM
REQUEST QGRAPHICSPATHITEM
REQUEST QGRAPHICSPIXMAPITEM
REQUEST QGRAPHICSPOLYGONITEM
REQUEST QGRAPHICSRECTITEM
REQUEST QGRAPHICSSIMPLETEXTITEM
REQUEST QGRAPHICSTEXTITEM
REQUEST QGRAPHICSPROXYWIDGET
REQUEST QBRUSH
REQUEST QGRAPHICSITEMGROUP
REQUEST QFONT
REQUEST QVARIANT
REQUEST QRECTF
REQUEST QPALETTE
REQUEST QPAINTERPATH
REQUEST QSTYLE
#endif

CLASS QGraphicsScene INHERIT QObject

   METHOD new
   METHOD delete
   METHOD activePanel
   METHOD activeWindow
   METHOD addEllipse
   METHOD addItem
   METHOD addLine
   METHOD addPath
   METHOD addPixmap
   METHOD addPolygon
   METHOD addRect
   METHOD addSimpleText
   METHOD addText
   METHOD addWidget
   METHOD backgroundBrush
   METHOD bspTreeDepth
   METHOD clearFocus
   METHOD createItemGroup
   METHOD destroyItemGroup
   METHOD focusItem
   METHOD font
   METHOD foregroundBrush
   METHOD hasFocus
   METHOD height
   METHOD inputMethodQuery
   METHOD invalidate
   METHOD isActive
   METHOD isSortCacheEnabled
   METHOD itemAt
   METHOD itemIndexMethod
   METHOD itemsBoundingRect
   METHOD mouseGrabberItem
   METHOD palette
   METHOD removeItem
   METHOD render
   METHOD sceneRect
   METHOD selectionArea
   METHOD sendEvent
   METHOD setActivePanel
   METHOD setActiveWindow
   METHOD setBackgroundBrush
   METHOD setBspTreeDepth
   METHOD setFocus
   METHOD setFocusItem
   METHOD setFont
   METHOD setForegroundBrush
   METHOD setItemIndexMethod
   METHOD setPalette
   METHOD setSceneRect
   METHOD setSelectionArea
   METHOD setSortCacheEnabled
   METHOD setStickyFocus
   METHOD setStyle
   METHOD stickyFocus
   METHOD style
   METHOD update
   METHOD width
   METHOD advance
   METHOD clear
   METHOD clearSelection

   METHOD onChanged
   METHOD onSceneRectChanged
   METHOD onSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>
#include <QPalette>

/*
QGraphicsScene ( QObject * parent = 0 )
*/
$internalConstructor=|new1|QObject *=0

/*
QGraphicsScene ( const QRectF & sceneRect, QObject * parent = 0 )
*/
$internalConstructor=|new2|const QRectF &,QObject *=0

/*
QGraphicsScene ( qreal x, qreal y, qreal width, qreal height, QObject * parent = 0 )
*/
$internalConstructor=|new3|qreal,qreal,qreal,qreal,QObject *=0

//[1]QGraphicsScene ( QObject * parent = 0 )
//[2]QGraphicsScene ( const QRectF & sceneRect, QObject * parent = 0 )
//[3]QGraphicsScene ( qreal x, qreal y, qreal width, qreal height, QObject * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSSCENE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QGraphicsScene_new1();
  }
  else if( ISBETWEEN(1,2) && ISQRECTF(1) && ISOPTQOBJECT(2) )
  {
    QGraphicsScene_new2();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTQOBJECT(5) )
  {
    QGraphicsScene_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QGraphicsItem * activePanel () const
*/
$method=|QGraphicsItem *|activePanel|

/*
QGraphicsWidget * activeWindow () const
*/
$method=|QGraphicsWidget *|activeWindow|

/*
QGraphicsEllipseItem * addEllipse ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
$internalMethod=|QGraphicsEllipseItem *|addEllipse,addEllipse1|const QRectF &,const QPen &=QPen(),const QBrush &=QBrush()

/*
QGraphicsEllipseItem * addEllipse ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
$internalMethod=|QGraphicsEllipseItem *|addEllipse,addEllipse2|qreal,qreal,qreal,qreal,const QPen &=QPen(),const QBrush &=QBrush()

//[1]QGraphicsEllipseItem * addEllipse ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
//[2]QGraphicsEllipseItem * addEllipse ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDELLIPSE )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISQPEN(2)||ISNIL(2)) && (ISQBRUSH(3)||ISNIL(3)) )
  {
    QGraphicsScene_addEllipse1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) && (ISQBRUSH(6)||ISNIL(6)) )
  {
    QGraphicsScene_addEllipse2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addItem ( QGraphicsItem * item )
*/
$method=|void|addItem|QGraphicsItem *

/*
QGraphicsLineItem * addLine ( const QLineF & line, const QPen & pen = QPen() )
*/
$internalMethod=|QGraphicsLineItem *|addLine,addLine1|const QLineF &,const QPen &=QPen()

/*
QGraphicsLineItem * addLine ( qreal x1, qreal y1, qreal x2, qreal y2, const QPen & pen = QPen() )
*/
$internalMethod=|QGraphicsLineItem *|addLine,addLine2|qreal,qreal,qreal,qreal,const QPen &=QPen()

//[1]QGraphicsLineItem * addLine ( const QLineF & line, const QPen & pen = QPen() )
//[2]QGraphicsLineItem * addLine ( qreal x1, qreal y1, qreal x2, qreal y2, const QPen & pen = QPen() )

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDLINE )
{
  if( ISBETWEEN(1,2) && ISQLINEF(1) && (ISQPEN(2)||ISNIL(2)) )
  {
    QGraphicsScene_addLine1();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) )
  {
    QGraphicsScene_addLine2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGraphicsPathItem * addPath ( const QPainterPath & path, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
$method=|QGraphicsPathItem *|addPath|const QPainterPath &,const QPen &=QPen(),const QBrush &=QBrush()

/*
QGraphicsPixmapItem * addPixmap ( const QPixmap & pixmap )
*/
$method=|QGraphicsPixmapItem *|addPixmap|const QPixmap &

/*
QGraphicsPolygonItem * addPolygon ( const QPolygonF & polygon, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
$method=|QGraphicsPolygonItem *|addPolygon|const QPolygonF &,const QPen &=QPen(),const QBrush &=QBrush()

/*
QGraphicsRectItem * addRect ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
$internalMethod=|QGraphicsRectItem *|addRect,addRect1|const QRectF &,const QPen &=QPen(),const QBrush &=QBrush()

/*
QGraphicsRectItem * addRect ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
$internalMethod=|QGraphicsRectItem *|addRect,addRect2|qreal,qreal,qreal,qreal,const QPen &=QPen(),const QBrush &=QBrush()

//[1]QGraphicsRectItem * addRect ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
//[2]QGraphicsRectItem * addRect ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDRECT )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISQPEN(2)||ISNIL(2)) && (ISQBRUSH(3)||ISNIL(3)) )
  {
    QGraphicsScene_addRect1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) && (ISQBRUSH(6)||ISNIL(6)) )
  {
    QGraphicsScene_addRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGraphicsSimpleTextItem * addSimpleText ( const QString & text, const QFont & font = QFont() )
*/
$method=|QGraphicsSimpleTextItem *|addSimpleText|const QString &,const QFont &=QFont()

/*
QGraphicsTextItem * addText ( const QString & text, const QFont & font = QFont() )
*/
$method=|QGraphicsTextItem *|addText|const QString &,const QFont &=QFont()

/*
QGraphicsProxyWidget * addWidget ( QWidget * widget, Qt::WindowFlags wFlags = 0 )
*/
$method=|QGraphicsProxyWidget *|addWidget|QWidget *,Qt::WindowFlags=0

/*
QBrush backgroundBrush () const
*/
$method=|QBrush|backgroundBrush|

/*
int bspTreeDepth () const
*/
$method=|int|bspTreeDepth|

/*
void clearFocus ()
*/
$method=|void|clearFocus|

/*
QGraphicsItemGroup * createItemGroup ( const QList<QGraphicsItem *> & items )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_CREATEITEMGROUP )
{
  QGraphicsScene * obj = (QGraphicsScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      QList<QGraphicsItem *> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      QGraphicsItemGroup * ptr = obj->createItemGroup ( par1 );
      _qt5xhb_createReturnClass ( ptr, "QGRAPHICSITEMGROUP" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void destroyItemGroup ( QGraphicsItemGroup * group )
*/
$method=|void|destroyItemGroup|QGraphicsItemGroup *

/*
QGraphicsItem * focusItem () const
*/
$method=|QGraphicsItem *|focusItem|

/*
QFont font () const
*/
$method=|QFont|font|

/*
QBrush foregroundBrush () const
*/
$method=|QBrush|foregroundBrush|

/*
bool hasFocus () const
*/
$method=|bool|hasFocus|

/*
qreal height () const
*/
$method=|qreal|height|

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

/*
void invalidate ( qreal x, qreal y, qreal w, qreal h, SceneLayers layers = AllLayers )
*/
$internalMethod=|void|invalidate,invalidate1|qreal,qreal,qreal,qreal,QGraphicsScene::SceneLayers=QGraphicsScene::AllLayers

/*
void invalidate ( const QRectF & rect = QRectF(), SceneLayers layers = AllLayers )
*/
$internalMethod=|void|invalidate,invalidate2|const QRectF &=QRectF(),QGraphicsScene::SceneLayers=QGraphicsScene::AllLayers

//[1]void invalidate ( qreal x, qreal y, qreal w, qreal h, SceneLayers layers = AllLayers )
//[2]void invalidate ( const QRectF & rect = QRectF(), SceneLayers layers = AllLayers )

HB_FUNC_STATIC( QGRAPHICSSCENE_INVALIDATE )
{
  if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTNUM(5) )
  {
    QGraphicsScene_invalidate1();
  }
  else if( ISBETWEEN(0,2) && (ISQRECTF(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QGraphicsScene_invalidate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
bool isSortCacheEnabled () const
*/
$method=|bool|isSortCacheEnabled|

/*
QGraphicsItem * itemAt ( const QPointF & position, const QTransform & deviceTransform ) const
*/
$internalMethod=|QGraphicsItem *|itemAt,itemAt1|const QPointF &,const QTransform &

/*
QGraphicsItem * itemAt ( qreal x, qreal y, const QTransform & deviceTransform ) const
*/
$internalMethod=|QGraphicsItem *|itemAt,itemAt2|qreal,qreal,const QTransform &

//[1]QGraphicsItem * itemAt ( const QPointF & position, const QTransform & deviceTransform ) const
//[2]QGraphicsItem * itemAt ( qreal x, qreal y, const QTransform & deviceTransform ) const

HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMAT )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQTRANSFORM(2) )
  {
    QGraphicsScene_itemAt1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQTRANSFORM(3) )
  {
    QGraphicsScene_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
ItemIndexMethod itemIndexMethod () const
*/
$method=|QGraphicsScene::ItemIndexMethod|itemIndexMethod|

/*
QRectF itemsBoundingRect () const
*/
$method=|QRectF|itemsBoundingRect|

/*
QGraphicsItem * mouseGrabberItem () const
*/
$method=|QGraphicsItem *|mouseGrabberItem|

/*
QPalette palette () const
*/
$method=|QPalette|palette|

/*
void removeItem ( QGraphicsItem * item )
*/
$method=|void|removeItem|QGraphicsItem *

/*
void render ( QPainter * painter, const QRectF & target = QRectF(), const QRectF & source = QRectF(), Qt::AspectRatioMode aspectRatioMode = Qt::KeepAspectRatio )
*/
$method=|void|render|QPainter *,const QRectF &=QRectF(),const QRectF &=QRectF(),Qt::AspectRatioMode=Qt::KeepAspectRatio

/*
QRectF sceneRect () const
*/
$method=|QRectF|sceneRect|

/*
QPainterPath selectionArea () const
*/
$method=|QPainterPath|selectionArea|

/*
bool sendEvent ( QGraphicsItem * item, QEvent * event )
*/
$method=|bool|sendEvent|QGraphicsItem *,QEvent *

/*
void setActivePanel ( QGraphicsItem * item )
*/
$method=|void|setActivePanel|QGraphicsItem *

/*
void setActiveWindow ( QGraphicsWidget * widget )
*/
$method=|void|setActiveWindow|QGraphicsWidget *

/*
void setBackgroundBrush ( const QBrush & brush )
*/
$method=|void|setBackgroundBrush|const QBrush &

/*
void setBspTreeDepth ( int depth )
*/
$method=|void|setBspTreeDepth|int

/*
void setFocus ( Qt::FocusReason focusReason = Qt::OtherFocusReason )
*/
$method=|void|setFocus|Qt::FocusReason=Qt::OtherFocusReason

/*
void setFocusItem ( QGraphicsItem * item, Qt::FocusReason focusReason = Qt::OtherFocusReason )
*/
$method=|void|setFocusItem|QGraphicsItem *,Qt::FocusReason=Qt::OtherFocusReason

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setForegroundBrush ( const QBrush & brush )
*/
$method=|void|setForegroundBrush|const QBrush &

/*
void setItemIndexMethod ( ItemIndexMethod method )
*/
$method=|void|setItemIndexMethod|QGraphicsScene::ItemIndexMethod

/*
void setPalette ( const QPalette & palette )
*/
$method=|void|setPalette|const QPalette &

/*
void setSceneRect ( const QRectF & rect )
*/
$internalMethod=|void|setSceneRect,setSceneRect1|const QRectF &

/*
void setSceneRect ( qreal x, qreal y, qreal w, qreal h )
*/
$internalMethod=|void|setSceneRect,setSceneRect2|qreal,qreal,qreal,qreal

//[1]void setSceneRect ( const QRectF & rect )
//[2]void setSceneRect ( qreal x, qreal y, qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSSCENE_SETSCENERECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsScene_setSceneRect1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsScene_setSceneRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setSelectionArea ( const QPainterPath & path, const QTransform & deviceTransform )
*/
$internalMethod=|void|setSelectionArea,setSelectionArea1|const QPainterPath &,const QTransform &

/*
void setSelectionArea ( const QPainterPath & path, Qt::ItemSelectionMode mode, const QTransform & deviceTransform )
*/
$internalMethod=|void|setSelectionArea,setSelectionArea2|const QPainterPath &,Qt::ItemSelectionMode,const QTransform &

//[1]void setSelectionArea ( const QPainterPath & path, const QTransform & deviceTransform )
//[2]void setSelectionArea ( const QPainterPath & path, Qt::ItemSelectionMode mode, const QTransform & deviceTransform )

HB_FUNC_STATIC( QGRAPHICSSCENE_SETSELECTIONAREA )
{
  if( ISNUMPAR(2) && ISQPAINTERPATH(1) && ISQTRANSFORM(2) )
  {
    QGraphicsScene_setSelectionArea1();
  }
  else if( ISNUMPAR(3) && ISQPAINTERPATH(1) && ISNUM(2) && ISQTRANSFORM(3) )
  {
    QGraphicsScene_setSelectionArea2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setSortCacheEnabled ( bool enabled )
*/
$method=|void|setSortCacheEnabled|bool

/*
void setStickyFocus ( bool enabled )
*/
$method=|void|setStickyFocus|bool

/*
void setStyle ( QStyle * style )
*/
$method=|void|setStyle|QStyle *

/*
bool stickyFocus () const
*/
$method=|bool|stickyFocus|

/*
QStyle * style () const
*/
$method=|QStyle *|style|

/*
void update ( qreal x, qreal y, qreal w, qreal h )
*/
$internalMethod=|void|update,update1|qreal,qreal,qreal,qreal

/*
void update ( const QRectF & rect = QRectF() )
*/
$internalMethod=|void|update,update2|const QRectF &=QRectF()

//[1]void update ( qreal x, qreal y, qreal w, qreal h )
//[2]void update ( const QRectF & rect = QRectF() )

HB_FUNC_STATIC( QGRAPHICSSCENE_UPDATE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsScene_update1();
  }
  else if( ISBETWEEN(0,1) && (ISQRECTF(1)||ISNIL(1)) )
  {
    QGraphicsScene_update2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal width () const
*/
$method=|qreal|width|

/*
void advance ()
*/
$method=|void|advance|

/*
void clear ()
*/
$method=|void|clear|

/*
void clearSelection ()
*/
$method=|void|clearSelection|

#pragma ENDDUMP
