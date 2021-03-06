/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QHXYModelMapper INHERIT QXYModelMapper

   METHOD new

   METHOD columnCount
   METHOD firstColumn
   METHOD model
   METHOD series
   METHOD setColumnCount
   METHOD setFirstColumn
   METHOD setModel
   METHOD setSeries
   METHOD setXRow
   METHOD setYRow
   METHOD xRow
   METHOD yRow

   METHOD onColumnCountChanged
   METHOD onFirstColumnChanged
   METHOD onModelReplaced
   METHOD onSeriesReplaced
   METHOD onXRowChanged
   METHOD onYRowChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHXYModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QHXYModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QHXYModelMapper>
#endif
#endif

#include <QXYSeries>
#include <QAbstractItemModel>

using namespace QtCharts;

/*
explicit QHXYModelMapper(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QHXYModelMapper * o = new QHXYModelMapper ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QXYSeries *series() const
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QXYSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QXYSERIES" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setSeries(QXYSeries *series)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SETSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXYSERIES(1) )
    {
      obj->setSeries ( PQXYSERIES(1) );
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
QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_MODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractItemModel * ptr = obj->model ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMMODEL" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setModel(QAbstractItemModel *model)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SETMODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
      obj->setModel ( PQABSTRACTITEMMODEL(1) );
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
int xRow() const
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_XROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->xRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setXRow(int xRow)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SETXROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setXRow ( PINT(1) );
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
int yRow() const
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_YROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->yRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setYRow(int yRow)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SETYROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setYRow ( PINT(1) );
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
int firstColumn() const
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_FIRSTCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->firstColumn () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setFirstColumn(int firstColumn)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SETFIRSTCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFirstColumn ( PINT(1) );
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
int columnCount() const
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_COLUMNCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->columnCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setColumnCount(int columnCount)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SETCOLUMNCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setColumnCount ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QHXYModelMapperSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QHXYMODELMAPPER_ONCOLUMNCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapperSlots_connect_signal( "columnCountChanged()", "columnCountChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHXYMODELMAPPER_ONFIRSTCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapperSlots_connect_signal( "firstColumnChanged()", "firstColumnChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHXYMODELMAPPER_ONMODELREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapperSlots_connect_signal( "modelReplaced()", "modelReplaced()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHXYMODELMAPPER_ONSERIESREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapperSlots_connect_signal( "seriesReplaced()", "seriesReplaced()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHXYMODELMAPPER_ONXROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapperSlots_connect_signal( "xRowChanged()", "xRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHXYMODELMAPPER_ONYROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapperSlots_connect_signal( "yRowChanged()", "yRowChanged()" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
