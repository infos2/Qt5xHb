/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTDEVICE
REQUEST QPAINTER
#endif

CLASS QPaintEngine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD begin
   METHOD drawEllipse1
   METHOD drawEllipse2
   METHOD drawEllipse
   METHOD drawImage
   METHOD drawLines
   METHOD drawPath
   METHOD drawPixmap
   METHOD drawPoints
   METHOD drawPolygon
   METHOD drawRects
   METHOD drawTextItem
   METHOD drawTiledPixmap
   METHOD end
   METHOD hasFeature
   METHOD isActive
   METHOD paintDevice
   METHOD painter
   METHOD setActive
   METHOD type
   METHOD updateState

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPaintEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPaintEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPaintEngine>
#endif

HB_FUNC_STATIC( QPAINTENGINE_DELETE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual bool begin ( QPaintDevice * pdev ) = 0
*/
HB_FUNC_STATIC( QPAINTENGINE_BEGIN )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPAINTDEVICE(1) )
    {
      RBOOL( obj->begin ( PQPAINTDEVICE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void drawEllipse ( const QRectF & rect )
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWELLIPSE1 )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECTF(1) )
    {
      obj->drawEllipse ( *PQRECTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void drawEllipse ( const QRect & rect )
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWELLIPSE2 )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->drawEllipse ( *PQRECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual void drawEllipse ( const QRectF & rect )
//[2]virtual void drawEllipse ( const QRect & rect )

HB_FUNC_STATIC( QPAINTENGINE_DRAWELLIPSE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTENGINE_DRAWELLIPSE1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTENGINE_DRAWELLIPSE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void drawImage ( const QRectF & rectangle, const QImage & image, const QRectF & sr, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWIMAGE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(3,4) && ISQRECTF(1) && ISQIMAGE(2) && ISQRECTF(3) && ISOPTNUM(4) )
    {
      obj->drawImage ( *PQRECTF(1), *PQIMAGE(2), *PQRECTF(3), ISNIL(4)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual void drawLines ( const QLineF * lines, int lineCount )
//[2]virtual void drawLines ( const QLine * lines, int lineCount )

HB_FUNC_STATIC( QPAINTENGINE_DRAWLINES )
{
}

/*
virtual void drawPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWPATH )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
    {
      obj->drawPath ( *PQPAINTERPATH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void drawPixmap ( const QRectF & r, const QPixmap & pm, const QRectF & sr ) = 0
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWPIXMAP )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(3) && ISQRECTF(1) && ISQPIXMAP(2) && ISQRECTF(3) )
    {
      obj->drawPixmap ( *PQRECTF(1), *PQPIXMAP(2), *PQRECTF(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual void drawPoints ( const QPointF * points, int pointCount )
//[2]virtual void drawPoints ( const QPoint * points, int pointCount )

HB_FUNC_STATIC( QPAINTENGINE_DRAWPOINTS )
{
}

//[1]virtual void drawPolygon ( const QPointF * points, int pointCount, PolygonDrawMode mode )
//[2]virtual void drawPolygon ( const QPoint * points, int pointCount, PolygonDrawMode mode )

HB_FUNC_STATIC( QPAINTENGINE_DRAWPOLYGON )
{
}

//[1]virtual void drawRects ( const QRectF * rects, int rectCount )
//[2]virtual void drawRects ( const QRect * rects, int rectCount )

HB_FUNC_STATIC( QPAINTENGINE_DRAWRECTS )
{
}

/*
virtual void drawTextItem ( const QPointF & p, const QTextItem & textItem )
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWTEXTITEM )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQPOINTF(1) && ISQTEXTITEM(2) )
    {
      obj->drawTextItem ( *PQPOINTF(1), *PQTEXTITEM(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void drawTiledPixmap ( const QRectF & rect, const QPixmap & pixmap, const QPointF & p )
*/
HB_FUNC_STATIC( QPAINTENGINE_DRAWTILEDPIXMAP )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(3) && ISQRECTF(1) && ISQPIXMAP(2) && ISQPOINTF(3) )
    {
      obj->drawTiledPixmap ( *PQRECTF(1), *PQPIXMAP(2), *PQPOINTF(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool end () = 0
*/
HB_FUNC_STATIC( QPAINTENGINE_END )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->end () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasFeature ( PaintEngineFeatures feature ) const
*/
HB_FUNC_STATIC( QPAINTENGINE_HASFEATURE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->hasFeature ( (QPaintEngine::PaintEngineFeatures) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isActive () const
*/
HB_FUNC_STATIC( QPAINTENGINE_ISACTIVE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isActive () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPaintDevice * paintDevice () const
*/
HB_FUNC_STATIC( QPAINTENGINE_PAINTDEVICE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPaintDevice * ptr = obj->paintDevice ();
      _qt5xhb_createReturnClass ( ptr, "QPAINTDEVICE", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPainter * painter () const
*/
HB_FUNC_STATIC( QPAINTENGINE_PAINTER )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPainter * ptr = obj->painter ();
      _qt5xhb_createReturnClass ( ptr, "QPAINTER", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setActive ( bool state )
*/
HB_FUNC_STATIC( QPAINTENGINE_SETACTIVE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setActive ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual Type type () const = 0
*/
HB_FUNC_STATIC( QPAINTENGINE_TYPE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->type () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void updateState ( const QPaintEngineState & state ) = 0
*/
HB_FUNC_STATIC( QPAINTENGINE_UPDATESTATE )
{
  QPaintEngine * obj = (QPaintEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPAINTENGINESTATE(1) )
    {
      obj->updateState ( *PQPAINTENGINESTATE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QPAINTENGINE_NEWFROM )
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QPAINTENGINE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPAINTENGINE_NEWFROM );
}

HB_FUNC_STATIC( QPAINTENGINE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPAINTENGINE_NEWFROM );
}

HB_FUNC_STATIC( QPAINTENGINE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPAINTENGINE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
