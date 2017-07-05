/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QDoubleSpinBox INHERIT QAbstractSpinBox

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD cleanText
   METHOD decimals
   METHOD setDecimals
   METHOD maximum
   METHOD setMaximum
   METHOD minimum
   METHOD setMinimum
   METHOD prefix
   METHOD setPrefix
   METHOD setRange
   METHOD singleStep
   METHOD setSingleStep
   METHOD suffix
   METHOD setSuffix
   METHOD textFromValue
   METHOD value
   METHOD setValue
   METHOD valueFromText
   METHOD fixup
   METHOD validate

   METHOD onValueChanged1
   METHOD onValueChanged2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDoubleSpinBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDoubleSpinBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDoubleSpinBox>
#endif

/*
explicit QDoubleSpinBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_NEW )
{
  QDoubleSpinBox * o = new QDoubleSpinBox ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QDOUBLESPINBOX_DELETE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString cleanText () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_CLEANTEXT )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->cleanText () );
  }
}

/*
int decimals () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_DECIMALS )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->decimals () );
  }
}

/*
void setDecimals ( int prec )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETDECIMALS )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setDecimals ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
double maximum () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_MAXIMUM )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RDOUBLE( obj->maximum () );
  }
}

/*
void setMaximum ( double max )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETMAXIMUM )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMaximum ( PDOUBLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
double minimum () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_MINIMUM )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RDOUBLE( obj->minimum () );
  }
}

/*
void setMinimum ( double min )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETMINIMUM )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMinimum ( PDOUBLE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString prefix () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_PREFIX )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->prefix () );
  }
}

/*
void setPrefix ( const QString & prefix )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETPREFIX )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPrefix ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRange ( double min, double max )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETRANGE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setRange ( PDOUBLE(1), PDOUBLE(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
double singleStep () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SINGLESTEP )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RDOUBLE( obj->singleStep () );
  }
}

/*
void setSingleStep ( double val )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETSINGLESTEP )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSingleStep ( PDOUBLE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString suffix () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SUFFIX )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->suffix () );
  }
}

/*
void setSuffix ( const QString & suffix )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETSUFFIX )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSuffix ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QString textFromValue ( double value ) const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_TEXTFROMVALUE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->textFromValue ( PDOUBLE(1) ) );
  }
}

/*
double value () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_VALUE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RDOUBLE( obj->value () );
  }
}

/*
void setValue ( double val )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETVALUE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setValue ( PDOUBLE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual double valueFromText ( const QString & text ) const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_VALUEFROMTEXT )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RDOUBLE( obj->valueFromText ( PQSTRING(1) ) );
  }
}

/*
virtual void fixup ( QString & str ) const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_FIXUP )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->fixup ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QValidator::State validate ( QString & text, int & pos ) const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_VALIDATE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2;
    hb_retni( obj->validate ( par1, par2 ) );
  }
}

#pragma ENDDUMP