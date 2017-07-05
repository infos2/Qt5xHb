/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QFileDevice INHERIT QIODevice

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD error
   METHOD fileName
   METHOD flush
   METHOD handle
   METHOD permissions
   METHOD resize
   METHOD setPermissions
   METHOD unsetError
   METHOD atEnd
   METHOD close
   METHOD isSequential
   METHOD pos
   METHOD seek
   METHOD size

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFileDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFileDevice>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFileDevice>
#endif

HB_FUNC_STATIC( QFILEDEVICE_DELETE )
{
  QFileDevice * obj = (QFileDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
FileError error() const
*/
HB_FUNC_STATIC( QFILEDEVICE_ERROR )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error () );
  }
}

/*
virtual QString fileName() const
*/
HB_FUNC_STATIC( QFILEDEVICE_FILENAME )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}

/*
bool flush()
*/
HB_FUNC_STATIC( QFILEDEVICE_FLUSH )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->flush () );
  }
}

/*
int handle() const
*/
HB_FUNC_STATIC( QFILEDEVICE_HANDLE )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->handle () );
  }
}

/*
virtual Permissions permissions() const
*/
HB_FUNC_STATIC( QFILEDEVICE_PERMISSIONS )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->permissions () );
  }
}

/*
virtual bool resize(qint64 sz)
*/
HB_FUNC_STATIC( QFILEDEVICE_RESIZE )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->resize ( PQINT64(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool setPermissions(Permissions permissions)
*/
HB_FUNC_STATIC( QFILEDEVICE_SETPERMISSIONS )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      RBOOL( obj->setPermissions ( (QFileDevice::Permissions) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void unsetError()
*/
HB_FUNC_STATIC( QFILEDEVICE_UNSETERROR )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unsetError ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool atEnd() const
*/
HB_FUNC_STATIC( QFILEDEVICE_ATEND )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->atEnd () );
  }
}

/*
virtual void close()
*/
HB_FUNC_STATIC( QFILEDEVICE_CLOSE )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->close ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isSequential() const
*/
HB_FUNC_STATIC( QFILEDEVICE_ISSEQUENTIAL )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isSequential () );
  }
}

/*
virtual qint64 pos() const
*/
HB_FUNC_STATIC( QFILEDEVICE_POS )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->pos () );
  }
}

/*
virtual bool seek(qint64 pos)
*/
HB_FUNC_STATIC( QFILEDEVICE_SEEK )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->seek ( PQINT64(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual qint64 size() const
*/
HB_FUNC_STATIC( QFILEDEVICE_SIZE )
{
  QFileDevice * obj = (QFileDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->size () );
  }
}

#pragma ENDDUMP