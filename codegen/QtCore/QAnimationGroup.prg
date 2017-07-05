/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
#endif

CLASS QAnimationGroup INHERIT QAbstractAnimation

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addAnimation
   METHOD animationAt
   METHOD animationCount
   METHOD clear
   METHOD indexOfAnimation
   METHOD insertAnimation
   METHOD removeAnimation
   METHOD takeAnimation

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAnimationGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAnimationGroup>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAnimationGroup>
#endif

HB_FUNC_STATIC( QANIMATIONGROUP_DELETE )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addAnimation ( QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QANIMATIONGROUP_ADDANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTANIMATION(1) )
    {
      QAbstractAnimation * par1 = (QAbstractAnimation *) _qt5xhb_itemGetPtr(1);
      obj->addAnimation ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAbstractAnimation * animationAt ( int index ) const
*/
HB_FUNC_STATIC( QANIMATIONGROUP_ANIMATIONAT )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QAbstractAnimation * ptr = obj->animationAt ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int animationCount () const
*/
HB_FUNC_STATIC( QANIMATIONGROUP_ANIMATIONCOUNT )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->animationCount () );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QANIMATIONGROUP_CLEAR )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int indexOfAnimation ( QAbstractAnimation * animation ) const
*/
HB_FUNC_STATIC( QANIMATIONGROUP_INDEXOFANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTANIMATION(1) )
    {
      QAbstractAnimation * par1 = (QAbstractAnimation *) _qt5xhb_itemGetPtr(1);
      RINT( obj->indexOfAnimation ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void insertAnimation ( int index, QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QANIMATIONGROUP_INSERTANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQABSTRACTANIMATION(2) )
    {
      obj->insertAnimation ( PINT(1), PQABSTRACTANIMATION(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeAnimation ( QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QANIMATIONGROUP_REMOVEANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTANIMATION(1) )
    {
      QAbstractAnimation * par1 = (QAbstractAnimation *) _qt5xhb_itemGetPtr(1);
      obj->removeAnimation ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAbstractAnimation *	takeAnimation ( int index )
*/
HB_FUNC_STATIC( QANIMATIONGROUP_TAKEANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QAbstractAnimation * ptr = obj->takeAnimation ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP