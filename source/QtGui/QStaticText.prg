/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTOPTION
REQUEST QSIZEF
#endif

CLASS QStaticText

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD setText
   METHOD text
   METHOD setTextFormat
   METHOD textFormat
   METHOD setTextWidth
   METHOD textWidth
   METHOD setTextOption
   METHOD textOption
   METHOD size
   METHOD prepare
   METHOD setPerformanceHint
   METHOD performanceHint

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStaticText
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStaticText>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStaticText>
#endif

/*
QStaticText()
*/
void QStaticText_new1 ()
{
  QStaticText * o = new QStaticText ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QStaticText(const QString &text)
*/
void QStaticText_new2 ()
{
  QStaticText * o = new QStaticText ( PQSTRING(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QStaticText(const QStaticText &other)
*/
void QStaticText_new3 ()
{
  QStaticText * o = new QStaticText ( *PQSTATICTEXT(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QStaticText()
//[2]QStaticText(const QString &text)
//[3]QStaticText(const QStaticText &other)

HB_FUNC_STATIC( QSTATICTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStaticText_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QStaticText_new2();
  }
  else if( ISNUMPAR(1) && ISQSTATICTEXT(1) )
  {
    QStaticText_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTATICTEXT_DELETE )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

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
void swap(QStaticText &other)
*/
HB_FUNC_STATIC( QSTATICTEXT_SWAP )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSTATICTEXT(1) )
    {
      obj->swap ( *PQSTATICTEXT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText(const QString &text)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text() const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTextFormat(Qt::TextFormat textFormat)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXTFORMAT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTextFormat ( (Qt::TextFormat) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::TextFormat textFormat() const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXTFORMAT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->textFormat () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTextWidth(qreal textWidth)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXTWIDTH )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTextWidth ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal textWidth() const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXTWIDTH )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->textWidth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTextOption(const QTextOption &textOption)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXTOPTION )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQTEXTOPTION(1) )
    {
      obj->setTextOption ( *PQTEXTOPTION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTextOption textOption() const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXTOPTION )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QTextOption * ptr = new QTextOption( obj->textOption () );
      _qt5xhb_createReturnClass ( ptr, "QTEXTOPTION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSizeF size() const
*/
HB_FUNC_STATIC( QSTATICTEXT_SIZE )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSizeF * ptr = new QSizeF( obj->size () );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void prepare(const QTransform &matrix = QTransform(), const QFont &font = QFont())
*/
HB_FUNC_STATIC( QSTATICTEXT_PREPARE )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,2) && (ISQTRANSFORM(1)||ISNIL(1)) && (ISQFONT(2)||ISNIL(2)) )
    {
      obj->prepare ( ISNIL(1)? QTransform() : *(QTransform *) _qt5xhb_itemGetPtr(1), ISNIL(2)? QFont() : *(QFont *) _qt5xhb_itemGetPtr(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPerformanceHint(PerformanceHint performanceHint)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETPERFORMANCEHINT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPerformanceHint ( (QStaticText::PerformanceHint) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
PerformanceHint performanceHint() const
*/
HB_FUNC_STATIC( QSTATICTEXT_PERFORMANCEHINT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->performanceHint () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QSTATICTEXT_NEWFROM )
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

HB_FUNC_STATIC( QSTATICTEXT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTATICTEXT_NEWFROM );
}

HB_FUNC_STATIC( QSTATICTEXT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTATICTEXT_NEWFROM );
}

HB_FUNC_STATIC( QSTATICTEXT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSTATICTEXT_SETSELFDESTRUCTION )
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
