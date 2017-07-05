/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QOpenGLShader INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD shaderType
   METHOD compileSourceCode1
   METHOD compileSourceCode2
   METHOD compileSourceCode3
   METHOD compileSourceCode
   METHOD compileSourceFile
   METHOD sourceCode
   METHOD isCompiled
   METHOD log
   METHOD shaderId
   METHOD hasOpenGLShaders

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLShader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOpenGLShader>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOpenGLShader>
#endif

/*
QOpenGLShader(QOpenGLShader::ShaderType type, QObject *parent = 0)
*/
HB_FUNC_STATIC( QOPENGLSHADER_NEW )
{
  QOpenGLShader * o = new QOpenGLShader ( (QOpenGLShader::ShaderType) hb_parni(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QOPENGLSHADER_DELETE )
{
  QOpenGLShader * obj = (QOpenGLShader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QOpenGLShader::ShaderType shaderType() const
*/
HB_FUNC_STATIC( QOPENGLSHADER_SHADERTYPE )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->shaderType () );
  }
}


/*
bool compileSourceCode(const char *source)
*/
HB_FUNC_STATIC( QOPENGLSHADER_COMPILESOURCECODE1 )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->compileSourceCode ( PCONSTCHAR(1) ) );
  }
}


/*
bool compileSourceCode(const QByteArray& source)
*/
HB_FUNC_STATIC( QOPENGLSHADER_COMPILESOURCECODE2 )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->compileSourceCode ( *PQBYTEARRAY(1) ) );
  }
}


/*
bool compileSourceCode(const QString& source)
*/
HB_FUNC_STATIC( QOPENGLSHADER_COMPILESOURCECODE3 )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->compileSourceCode ( PQSTRING(1) ) );
  }
}


//[1]bool compileSourceCode(const char *source)
//[2]bool compileSourceCode(const QByteArray& source)
//[3]bool compileSourceCode(const QString& source)

HB_FUNC_STATIC( QOPENGLSHADER_COMPILESOURCECODE )
{
  // TODO: implementar
}

/*
bool compileSourceFile(const QString& fileName)
*/
HB_FUNC_STATIC( QOPENGLSHADER_COMPILESOURCEFILE )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->compileSourceFile ( PQSTRING(1) ) );
  }
}


/*
QByteArray sourceCode() const
*/
HB_FUNC_STATIC( QOPENGLSHADER_SOURCECODE )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->sourceCode () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
bool isCompiled() const
*/
HB_FUNC_STATIC( QOPENGLSHADER_ISCOMPILED )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isCompiled () );
  }
}


/*
QString log() const
*/
HB_FUNC_STATIC( QOPENGLSHADER_LOG )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->log () );
  }
}


/*
GLuint shaderId() const
*/
HB_FUNC_STATIC( QOPENGLSHADER_SHADERID )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->shaderId () );
  }
}


/*
static bool hasOpenGLShaders(ShaderType type, QOpenGLContext *context = 0)
*/
HB_FUNC_STATIC( QOPENGLSHADER_HASOPENGLSHADERS )
{
  QOpenGLContext * par2 = ISNIL(2)? 0 : (QOpenGLContext *) _qt5xhb_itemGetPtr(2);
  RBOOL( QOpenGLShader::hasOpenGLShaders ( (QOpenGLShader::ShaderType) hb_parni(1), par2 ) );
}



#pragma ENDDUMP
