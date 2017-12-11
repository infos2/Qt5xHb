/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionRubberBand INHERIT QStyleOption

   METHOD new

   METHOD shape
   METHOD opaque

   METHOD setShape
   METHOD setOpaque

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionRubberBand
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionRubberBand>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionRubberBand>
#endif

/*
QStyleOptionRubberBand()
*/
void QStyleOptionRubberBand_new1 ()
{
  QStyleOptionRubberBand * o = new QStyleOptionRubberBand ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionRubberBand(const QStyleOptionRubberBand &other)
*/
void QStyleOptionRubberBand_new2 ()
{
  QStyleOptionRubberBand * o = new QStyleOptionRubberBand ( *PQSTYLEOPTIONRUBBERBAND(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionRubberBand(int version) (protected)
*/

//[1]QStyleOptionRubberBand()
//[2]QStyleOptionRubberBand(const QStyleOptionRubberBand &other)
//[3]QStyleOptionRubberBand(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionRubberBand_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONRUBBERBAND(1) )
  {
    QStyleOptionRubberBand_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRubberBand::Shape shape
*/
HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_SHAPE )
{
  QStyleOptionRubberBand * obj = (QStyleOptionRubberBand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->shape );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_SETSHAPE )
{
  QStyleOptionRubberBand * obj = (QStyleOptionRubberBand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->shape = (QRubberBand::Shape) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool opaque
*/
HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_OPAQUE )
{
  QStyleOptionRubberBand * obj = (QStyleOptionRubberBand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->opaque );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_SETOPAQUE )
{
  QStyleOptionRubberBand * obj = (QStyleOptionRubberBand *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->opaque = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP