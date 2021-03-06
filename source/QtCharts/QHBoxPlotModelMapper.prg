/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QHBoxPlotModelMapper INHERIT QBoxPlotModelMapper

   METHOD new

   METHOD columnCount
   METHOD firstBoxSetRow
   METHOD firstColumn
   METHOD lastBoxSetRow
   METHOD model
   METHOD series
   METHOD setColumnCount
   METHOD setFirstBoxSetRow
   METHOD setFirstColumn
   METHOD setLastBoxSetRow
   METHOD setModel
   METHOD setSeries

   METHOD onColumnCountChanged
   METHOD onFirstBoxSetRowChanged
   METHOD onFirstColumnChanged
   METHOD onLastBoxSetRowChanged
   METHOD onModelReplaced
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHBoxPlotModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QHBoxPlotModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QHBoxPlotModelMapper>
#endif
#endif

#include <QBoxPlotSeries>
#include <QAbstractItemModel>

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

/*
explicit QHBoxPlotModelMapper(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QHBoxPlotModelMapper * o = new QHBoxPlotModelMapper ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QBoxPlotSeries *series() const
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapper * obj = (QHBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBoxPlotSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QBOXPLOTSERIES" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setSeries(QBoxPlotSeries *series)
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SETSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapper * obj = (QHBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBOXPLOTSERIES(1) )
    {
      obj->setSeries ( PQBOXPLOTSERIES(1) );
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
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_MODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapper * obj = (QHBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SETMODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapper * obj = (QHBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

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
int firstBoxSetRow() const
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_FIRSTBOXSETROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapper * obj = (QHBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->firstBoxSetRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setFirstBoxSetRow(int firstBoxSetRow)
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SETFIRSTBOXSETROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapper * obj = (QHBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFirstBoxSetRow ( PINT(1) );
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
int lastBoxSetRow() const
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_LASTBOXSETROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapper * obj = (QHBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lastBoxSetRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLastBoxSetRow(int lastBoxSetRow)
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SETLASTBOXSETROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapper * obj = (QHBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLastBoxSetRow ( PINT(1) );
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
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_FIRSTCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapper * obj = (QHBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SETFIRSTCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapper * obj = (QHBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_COLUMNCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapper * obj = (QHBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setColumnCount(int rowCount)
*/
HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_SETCOLUMNCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapper * obj = (QHBoxPlotModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

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

void QHBoxPlotModelMapperSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_ONCOLUMNCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapperSlots_connect_signal( "columnCountChanged()", "columnCountChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_ONFIRSTBOXSETROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapperSlots_connect_signal( "firstBoxSetRowChanged()", "firstBoxSetRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_ONFIRSTCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapperSlots_connect_signal( "firstColumnChanged()", "firstColumnChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_ONLASTBOXSETROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapperSlots_connect_signal( "lastBoxSetRowChanged()", "lastBoxSetRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_ONMODELREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapperSlots_connect_signal( "modelReplaced()", "modelReplaced()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHBOXPLOTMODELMAPPER_ONSERIESREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapperSlots_connect_signal( "seriesReplaced()", "seriesReplaced()" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
