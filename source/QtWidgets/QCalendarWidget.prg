/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTCHARFORMAT
REQUEST QDATE
REQUEST QSIZE
#endif

CLASS QCalendarWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD dateEditAcceptDelay
   METHOD dateTextFormat2
   METHOD dateTextFormat
   METHOD firstDayOfWeek
   METHOD headerTextFormat
   METHOD horizontalHeaderFormat
   METHOD isDateEditEnabled
   METHOD isGridVisible
   METHOD isNavigationBarVisible
   METHOD maximumDate
   METHOD minimumDate
   METHOD monthShown
   METHOD selectedDate
   METHOD selectionMode
   METHOD setDateEditAcceptDelay
   METHOD setDateEditEnabled
   METHOD setDateTextFormat
   METHOD setFirstDayOfWeek
   METHOD setHeaderTextFormat
   METHOD setHorizontalHeaderFormat
   METHOD setMaximumDate
   METHOD setMinimumDate
   METHOD setSelectionMode
   METHOD setVerticalHeaderFormat
   METHOD setWeekdayTextFormat
   METHOD verticalHeaderFormat
   METHOD weekdayTextFormat
   METHOD yearShown
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setCurrentPage
   METHOD setDateRange
   METHOD setGridVisible
   METHOD setNavigationBarVisible
   METHOD setSelectedDate
   METHOD showNextMonth
   METHOD showNextYear
   METHOD showPreviousMonth
   METHOD showPreviousYear
   METHOD showSelectedDate
   METHOD showToday

   METHOD onActivated
   METHOD onClicked
   METHOD onCurrentPageChanged
   METHOD onSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCalendarWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCalendarWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCalendarWidget>
#endif

#include <QTextCharFormat>

/*
QCalendarWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QCalendarWidget * o = new QCalendarWidget ( OPQWIDGET(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCALENDARWIDGET_DELETE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

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
int dateEditAcceptDelay () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_DATEEDITACCEPTDELAY )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->dateEditAcceptDelay () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMap<QDate, QTextCharFormat> dateTextFormat () const
*/

/*
QTextCharFormat dateTextFormat ( const QDate & date ) const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_DATETEXTFORMAT2 )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDATE(1) )
    {
      QTextCharFormat * ptr = new QTextCharFormat( obj->dateTextFormat ( *PQDATE(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

//[1]QMap<QDate, QTextCharFormat> dateTextFormat () const
//[2]QTextCharFormat dateTextFormat ( const QDate & date ) const

HB_FUNC_STATIC( QCALENDARWIDGET_DATETEXTFORMAT )
{
  if( ISNUMPAR(0) )
  {
    //HB_FUNC_EXEC( QCALENDARWIDGET_DATETEXTFORMAT1 );
  }
  else if( ISNUMPAR(1) && ISQDATE(1) )
  {
    HB_FUNC_EXEC( QCALENDARWIDGET_DATETEXTFORMAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::DayOfWeek firstDayOfWeek () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_FIRSTDAYOFWEEK )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->firstDayOfWeek () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTextCharFormat headerTextFormat () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_HEADERTEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QTextCharFormat * ptr = new QTextCharFormat( obj->headerTextFormat () );
      _qt5xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
HorizontalHeaderFormat horizontalHeaderFormat () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_HORIZONTALHEADERFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->horizontalHeaderFormat () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isDateEditEnabled () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_ISDATEEDITENABLED )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isDateEditEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isGridVisible () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_ISGRIDVISIBLE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isGridVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isNavigationBarVisible () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_ISNAVIGATIONBARVISIBLE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isNavigationBarVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDate maximumDate () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_MAXIMUMDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDate * ptr = new QDate( obj->maximumDate () );
      _qt5xhb_createReturnClass ( ptr, "QDATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDate minimumDate () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_MINIMUMDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDate * ptr = new QDate( obj->minimumDate () );
      _qt5xhb_createReturnClass ( ptr, "QDATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int monthShown () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_MONTHSHOWN )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->monthShown () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDate selectedDate () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SELECTEDDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDate * ptr = new QDate( obj->selectedDate () );
      _qt5xhb_createReturnClass ( ptr, "QDATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
SelectionMode selectionMode () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SELECTIONMODE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->selectionMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDateEditAcceptDelay ( int delay )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETDATEEDITACCEPTDELAY )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDateEditAcceptDelay ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDateEditEnabled ( bool enable )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETDATEEDITENABLED )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDateEditEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDateTextFormat ( const QDate & date, const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETDATETEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQDATE(1) && ISQTEXTCHARFORMAT(2) )
    {
      obj->setDateTextFormat ( *PQDATE(1), *PQTEXTCHARFORMAT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFirstDayOfWeek ( Qt::DayOfWeek dayOfWeek )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETFIRSTDAYOFWEEK )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFirstDayOfWeek ( (Qt::DayOfWeek) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHeaderTextFormat ( const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETHEADERTEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQTEXTCHARFORMAT(1) )
    {
      obj->setHeaderTextFormat ( *PQTEXTCHARFORMAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHorizontalHeaderFormat ( HorizontalHeaderFormat format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETHORIZONTALHEADERFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setHorizontalHeaderFormat ( (QCalendarWidget::HorizontalHeaderFormat) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaximumDate ( const QDate & date )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETMAXIMUMDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDATE(1) )
    {
      obj->setMaximumDate ( *PQDATE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMinimumDate ( const QDate & date )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETMINIMUMDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDATE(1) )
    {
      obj->setMinimumDate ( *PQDATE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelectionMode ( SelectionMode mode )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETSELECTIONMODE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSelectionMode ( (QCalendarWidget::SelectionMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalHeaderFormat ( VerticalHeaderFormat format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETVERTICALHEADERFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setVerticalHeaderFormat ( (QCalendarWidget::VerticalHeaderFormat) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWeekdayTextFormat ( Qt::DayOfWeek dayOfWeek, const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETWEEKDAYTEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQTEXTCHARFORMAT(2) )
    {
      obj->setWeekdayTextFormat ( (Qt::DayOfWeek) hb_parni(1), *PQTEXTCHARFORMAT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
VerticalHeaderFormat verticalHeaderFormat () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_VERTICALHEADERFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->verticalHeaderFormat () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTextCharFormat weekdayTextFormat ( Qt::DayOfWeek dayOfWeek ) const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_WEEKDAYTEXTFORMAT )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QTextCharFormat * ptr = new QTextCharFormat( obj->weekdayTextFormat ( (Qt::DayOfWeek) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int yearShown () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_YEARSHOWN )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->yearShown () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_MINIMUMSIZEHINT )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->minimumSizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SIZEHINT )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->sizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCurrentPage ( int year, int month )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETCURRENTPAGE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->setCurrentPage ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDateRange ( const QDate & min, const QDate & max )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETDATERANGE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQDATE(1) && ISQDATE(2) )
    {
      obj->setDateRange ( *PQDATE(1), *PQDATE(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGridVisible ( bool show )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETGRIDVISIBLE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setGridVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNavigationBarVisible ( bool visible )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETNAVIGATIONBARVISIBLE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setNavigationBarVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelectedDate ( const QDate & date )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETSELECTEDDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDATE(1) )
    {
      obj->setSelectedDate ( *PQDATE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showNextMonth ()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWNEXTMONTH )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->showNextMonth ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showNextYear ()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWNEXTYEAR )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->showNextYear ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showPreviousMonth ()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWPREVIOUSMONTH )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->showPreviousMonth ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showPreviousYear ()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWPREVIOUSYEAR )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->showPreviousYear ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showSelectedDate ()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWSELECTEDDATE )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->showSelectedDate ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showToday ()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWTODAY )
{
  QCalendarWidget * obj = (QCalendarWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->showToday ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QCalendarWidgetSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCALENDARWIDGET_ONACTIVATED )
{
  QCalendarWidgetSlots_connect_signal( "activated(QDate)", "activated(QDate)" );
}

HB_FUNC_STATIC( QCALENDARWIDGET_ONCLICKED )
{
  QCalendarWidgetSlots_connect_signal( "clicked(QDate)", "clicked(QDate)" );
}

HB_FUNC_STATIC( QCALENDARWIDGET_ONCURRENTPAGECHANGED )
{
  QCalendarWidgetSlots_connect_signal( "currentPageChanged(int,int)", "currentPageChanged(int,int)" );
}

HB_FUNC_STATIC( QCALENDARWIDGET_ONSELECTIONCHANGED )
{
  QCalendarWidgetSlots_connect_signal( "selectionChanged()", "selectionChanged()" );
}

#pragma ENDDUMP
