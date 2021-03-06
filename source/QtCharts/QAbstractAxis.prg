/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
REQUEST QFONT
REQUEST QPEN
#endif

CLASS QAbstractAxis INHERIT QObject

   METHOD delete

   METHOD alignment
   METHOD gridLineColor
   METHOD gridLinePen
   METHOD hide
   METHOD isGridLineVisible
   METHOD isLineVisible
   METHOD isMinorGridLineVisible
   METHOD isReverse
   METHOD isTitleVisible
   METHOD isVisible
   METHOD labelsAngle
   METHOD labelsBrush
   METHOD labelsColor
   METHOD labelsFont
   METHOD labelsVisible
   METHOD linePen
   METHOD linePenColor
   METHOD minorGridLineColor
   METHOD minorGridLinePen
   METHOD orientation
   METHOD setGridLineColor
   METHOD setGridLinePen
   METHOD setGridLineVisible
   METHOD setLabelsAngle
   METHOD setLabelsBrush
   METHOD setLabelsColor
   METHOD setLabelsFont
   METHOD setLabelsVisible
   METHOD setLinePen
   METHOD setLinePenColor
   METHOD setLineVisible
   METHOD setMax
   METHOD setMin
   METHOD setMinorGridLineColor
   METHOD setMinorGridLinePen
   METHOD setMinorGridLineVisible
   METHOD setRange
   METHOD setReverse
   METHOD setShadesBorderColor
   METHOD setShadesBrush
   METHOD setShadesColor
   METHOD setShadesPen
   METHOD setShadesVisible
   METHOD setTitleBrush
   METHOD setTitleFont
   METHOD setTitleText
   METHOD setTitleVisible
   METHOD setVisible
   METHOD shadesBorderColor
   METHOD shadesBrush
   METHOD shadesColor
   METHOD shadesPen
   METHOD shadesVisible
   METHOD show
   METHOD titleBrush
   METHOD titleFont
   METHOD titleText
   METHOD type

   METHOD onColorChanged
   METHOD onGridLineColorChanged
   METHOD onGridLinePenChanged
   METHOD onGridVisibleChanged
   METHOD onLabelsAngleChanged
   METHOD onLabelsBrushChanged
   METHOD onLabelsColorChanged
   METHOD onLabelsFontChanged
   METHOD onLabelsVisibleChanged
   METHOD onLinePenChanged
   METHOD onLineVisibleChanged
   METHOD onMinorGridLineColorChanged
   METHOD onMinorGridLinePenChanged
   METHOD onMinorGridVisibleChanged
   METHOD onReverseChanged
   METHOD onShadesBorderColorChanged
   METHOD onShadesBrushChanged
   METHOD onShadesColorChanged
   METHOD onShadesPenChanged
   METHOD onShadesVisibleChanged
   METHOD onTitleBrushChanged
   METHOD onTitleFontChanged
   METHOD onTitleTextChanged
   METHOD onTitleVisibleChanged
   METHOD onVisibleChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractAxis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QAbstractAxis>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QAbstractAxis>
#endif
#endif

using namespace QtCharts;

/*
QAbstractAxis(QAbstractAxisPrivate &d, QObject *parent = Q_NULLPTR) (protected)
*/

/*
~QAbstractAxis()
*/
HB_FUNC_STATIC( QABSTRACTAXIS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool isVisible() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_ISVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setVisible(bool visible = true)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setVisible ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isLineVisible() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_ISLINEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isLineVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLineVisible(bool visible = true)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETLINEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setLineVisible ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QPen linePen() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_LINEPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPen * ptr = new QPen( obj->linePen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLinePen(const QPen &pen)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETLINEPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
      obj->setLinePen ( *PQPEN(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QColor linePenColor() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_LINEPENCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->linePenColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLinePenColor(QColor color)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETLINEPENCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
      obj->setLinePenColor ( *PQCOLOR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isGridLineVisible() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_ISGRIDLINEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isGridLineVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setGridLineVisible(bool visible = true)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETGRIDLINEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setGridLineVisible ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QPen gridLinePen() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_GRIDLINEPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPen * ptr = new QPen( obj->gridLinePen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setGridLinePen(const QPen &pen)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETGRIDLINEPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
      obj->setGridLinePen ( *PQPEN(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isMinorGridLineVisible() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_ISMINORGRIDLINEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isMinorGridLineVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setMinorGridLineVisible(bool visible = true)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETMINORGRIDLINEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setMinorGridLineVisible ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QPen minorGridLinePen() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_MINORGRIDLINEPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPen * ptr = new QPen( obj->minorGridLinePen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setMinorGridLinePen(const QPen &pen)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETMINORGRIDLINEPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
      obj->setMinorGridLinePen ( *PQPEN(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QColor gridLineColor()
*/
HB_FUNC_STATIC( QABSTRACTAXIS_GRIDLINECOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->gridLineColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setGridLineColor(const QColor &color)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETGRIDLINECOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
      obj->setGridLineColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QColor minorGridLineColor()
*/
HB_FUNC_STATIC( QABSTRACTAXIS_MINORGRIDLINECOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->minorGridLineColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setMinorGridLineColor(const QColor &color)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETMINORGRIDLINECOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
      obj->setMinorGridLineColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool labelsVisible() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_LABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->labelsVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLabelsVisible(bool visible = true)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setLabelsVisible ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBrush labelsBrush() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_LABELSBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->labelsBrush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLabelsBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETLABELSBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setLabelsBrush ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QFont labelsFont() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_LABELSFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->labelsFont () );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLabelsFont(const QFont &font)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETLABELSFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->setLabelsFont ( *PQFONT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int labelsAngle() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_LABELSANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->labelsAngle () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLabelsAngle(int angle)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETLABELSANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLabelsAngle ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QColor labelsColor() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_LABELSCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->labelsColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLabelsColor(QColor color)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETLABELSCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
      obj->setLabelsColor ( *PQCOLOR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isTitleVisible() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_ISTITLEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isTitleVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setTitleVisible(bool visible = true)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETTITLEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setTitleVisible ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBrush titleBrush() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_TITLEBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->titleBrush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setTitleBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETTITLEBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setTitleBrush ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QFont titleFont() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_TITLEFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->titleFont () );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setTitleFont(const QFont &font)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETTITLEFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->setTitleFont ( *PQFONT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString titleText() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_TITLETEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->titleText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setTitleText(const QString &title)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETTITLETEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setTitleText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool shadesVisible() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SHADESVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->shadesVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setShadesVisible(bool visible = true)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETSHADESVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setShadesVisible ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QPen shadesPen() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SHADESPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPen * ptr = new QPen( obj->shadesPen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setShadesPen(const QPen &pen)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETSHADESPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
      obj->setShadesPen ( *PQPEN(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBrush shadesBrush() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SHADESBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->shadesBrush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setShadesBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETSHADESBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setShadesBrush ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QColor shadesColor() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SHADESCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->shadesColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setShadesColor(QColor color)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETSHADESCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
      obj->setShadesColor ( *PQCOLOR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QColor shadesBorderColor() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SHADESBORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->shadesBorderColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setShadesBorderColor(QColor color)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETSHADESBORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
      obj->setShadesBorderColor ( *PQCOLOR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_ORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->orientation () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
Qt::Alignment alignment() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_ALIGNMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->alignment () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool isReverse() const
*/
HB_FUNC_STATIC( QABSTRACTAXIS_ISREVERSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isReverse () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setReverse(bool reverse = true)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETREVERSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setReverse ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual AxisType type() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAXIS_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void show()
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SHOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->show ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void hide()
*/
HB_FUNC_STATIC( QABSTRACTAXIS_HIDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->hide ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setMin(const QVariant &min)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETMIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQVARIANT(1) )
    {
      obj->setMin ( *PQVARIANT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setMax(const QVariant &max)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETMAX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQVARIANT(1) )
    {
      obj->setMax ( *PQVARIANT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setRange(const QVariant &min, const QVariant &max)
*/
HB_FUNC_STATIC( QABSTRACTAXIS_SETRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQVARIANT(1) && ISQVARIANT(2) )
    {
      obj->setRange ( *PQVARIANT(1), *PQVARIANT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QAbstractAxisSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QABSTRACTAXIS_ONCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "colorChanged(QColor)", "colorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONGRIDLINECOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "gridLineColorChanged(QColor)", "gridLineColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONGRIDLINEPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "gridLinePenChanged(QPen)", "gridLinePenChanged(QPen)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONGRIDVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "gridVisibleChanged(bool)", "gridVisibleChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONLABELSANGLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "labelsAngleChanged(int)", "labelsAngleChanged(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONLABELSBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "labelsBrushChanged(QBrush)", "labelsBrushChanged(QBrush)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONLABELSCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "labelsColorChanged(QColor)", "labelsColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONLABELSFONTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "labelsFontChanged(QFont)", "labelsFontChanged(QFont)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONLABELSVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "labelsVisibleChanged(bool)", "labelsVisibleChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONLINEPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "linePenChanged(QPen)", "linePenChanged(QPen)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONLINEVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "lineVisibleChanged(bool)", "lineVisibleChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONMINORGRIDLINECOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "minorGridLineColorChanged(QColor)", "minorGridLineColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONMINORGRIDLINEPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "minorGridLinePenChanged(QPen)", "minorGridLinePenChanged(QPen)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONMINORGRIDVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "minorGridVisibleChanged(bool)", "minorGridVisibleChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONREVERSECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "reverseChanged(bool)", "reverseChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONSHADESBORDERCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "shadesBorderColorChanged(QColor)", "shadesBorderColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONSHADESBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "shadesBrushChanged(QBrush)", "shadesBrushChanged(QBrush)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONSHADESCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "shadesColorChanged(QColor)", "shadesColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONSHADESPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "shadesPenChanged(QPen)", "shadesPenChanged(QPen)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONSHADESVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "shadesVisibleChanged(bool)", "shadesVisibleChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONTITLEBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "titleBrushChanged(QBrush)", "titleBrushChanged(QBrush)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONTITLEFONTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "titleFontChanged(QFont)", "titleFontChanged(QFont)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONTITLETEXTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "titleTextChanged(QString)", "titleTextChanged(QString)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONTITLEVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "titleVisibleChanged(bool)", "titleVisibleChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QABSTRACTAXIS_ONVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxisSlots_connect_signal( "visibleChanged(bool)", "visibleChanged(bool)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
