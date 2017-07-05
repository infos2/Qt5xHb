/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFUNCTIONPOINTER
#endif

CLASS QLibrary INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD load
   METHOD unload
   METHOD isLoaded
   METHOD setFileName
   METHOD fileName
   METHOD setFileNameAndVersion
   METHOD errorString
   METHOD setLoadHints
   METHOD loadHints
   METHOD resolve
   METHOD isLibrary

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLibrary
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QLibrary>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QLibrary>
#endif

/*
QLibrary(QObject *parent = 0)
*/
void QLibrary_new1 ()
{
  QLibrary * o = new QLibrary ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QLibrary(const QString& fileName, QObject *parent = 0)
*/
void QLibrary_new2 ()
{
  QLibrary * o = new QLibrary ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QLibrary(const QString& fileName, int verNum, QObject *parent = 0)
*/
void QLibrary_new3 ()
{
  QLibrary * o = new QLibrary ( PQSTRING(1), PINT(2), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QLibrary(const QString& fileName, const QString &version, QObject *parent = 0)
*/
void QLibrary_new4 ()
{
  QLibrary * o = new QLibrary ( PQSTRING(1), PQSTRING(2), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QLibrary(QObject *parent = 0)
//[2]QLibrary(const QString& fileName, QObject *parent = 0)
//[3]QLibrary(const QString& fileName, int verNum, QObject *parent = 0)
//[4]QLibrary(const QString& fileName, const QString &version, QObject *parent = 0)

HB_FUNC_STATIC( QLIBRARY_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QLibrary_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QLibrary_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTQOBJECT(3) )
  {
    QLibrary_new3();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTQOBJECT(3) )
  {
    QLibrary_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLIBRARY_DELETE )
{
  QLibrary * obj = (QLibrary *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool load()
*/
HB_FUNC_STATIC( QLIBRARY_LOAD )
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->load () );
  }
}

/*
bool unload()
*/
HB_FUNC_STATIC( QLIBRARY_UNLOAD )
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->unload () );
  }
}

/*
bool isLoaded() const
*/
HB_FUNC_STATIC( QLIBRARY_ISLOADED )
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isLoaded () );
  }
}

/*
void setFileName(const QString &fileName)
*/
HB_FUNC_STATIC( QLIBRARY_SETFILENAME )
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setFileName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString fileName() const
*/
HB_FUNC_STATIC( QLIBRARY_FILENAME )
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}

/*
void setFileNameAndVersion(const QString &fileName, int verNum)
*/
void QLibrary_setFileNameAndVersion1 ()
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFileNameAndVersion ( PQSTRING(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFileNameAndVersion(const QString &fileName, const QString &version)
*/
void QLibrary_setFileNameAndVersion2 ()
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFileNameAndVersion ( PQSTRING(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setFileNameAndVersion(const QString &fileName, int verNum)
//[2]void setFileNameAndVersion(const QString &fileName, const QString &version)

HB_FUNC_STATIC( QLIBRARY_SETFILENAMEANDVERSION )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QLibrary_setFileNameAndVersion1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QLibrary_setFileNameAndVersion2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QLIBRARY_ERRORSTRING )
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}

/*
void setLoadHints(LoadHints hints)
*/
HB_FUNC_STATIC( QLIBRARY_SETLOADHINTS )
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setLoadHints ( (QLibrary::LoadHints) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
LoadHints loadHints() const
*/
HB_FUNC_STATIC( QLIBRARY_LOADHINTS )
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->loadHints () );
  }
}

/*
QFunctionPointer resolve(const char *symbol) // TODO: corrigir implementacao do metodo
*/
void QLibrary_resolve1 ()
{
  QLibrary * obj = (QLibrary *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFunctionPointer * ptr = new QFunctionPointer( obj->resolve ( PCONSTCHAR(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
  }
}

/*
static QFunctionPointer resolve(const QString &fileName, const char *symbol) // TODO: corrigir implementacao do metodo
*/
void QLibrary_resolve2 ()
{
  QFunctionPointer * ptr = new QFunctionPointer( QLibrary::resolve ( PQSTRING(1), PCONSTCHAR(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
}

/*
static QFunctionPointer resolve(const QString &fileName, int verNum, const char *symbol) // TODO: corrigir implementacao do metodo
*/
void QLibrary_resolve3 ()
{
  QFunctionPointer * ptr = new QFunctionPointer( QLibrary::resolve ( PQSTRING(1), PINT(2), PCONSTCHAR(3) ) );
  _qt5xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
}

/*
static QFunctionPointer resolve(const QString &fileName, const QString &version, const char *symbol) // TODO: corrigir implementacao do metodo
*/
void QLibrary_resolve4 ()
{
  QFunctionPointer * ptr = new QFunctionPointer( QLibrary::resolve ( PQSTRING(1), PQSTRING(2), PCONSTCHAR(3) ) );
  _qt5xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
}

//[1]QFunctionPointer resolve(const char *symbol)
//[2]static QFunctionPointer resolve(const QString &fileName, const char *symbol)
//[3]static QFunctionPointer resolve(const QString &fileName, int verNum, const char *symbol)
//[4]static QFunctionPointer resolve(const QString &fileName, const QString &version, const char *symbol)

HB_FUNC_STATIC( QLIBRARY_RESOLVE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QLibrary_resolve1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QLibrary_resolve2();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) )
  {
    QLibrary_resolve3();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QLibrary_resolve4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool isLibrary(const QString &fileName)
*/
HB_FUNC_STATIC( QLIBRARY_ISLIBRARY )
{
  if( ISCHAR(1) )
  {
    RBOOL( QLibrary::isLibrary ( PQSTRING(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP