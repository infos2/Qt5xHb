/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQUICKITEM
REQUEST QCOLOR
REQUEST QSGTEXTURE
REQUEST QIMAGE
REQUEST QQMLINCUBATIONCONTROLLER
REQUEST QOPENGLCONTEXT
REQUEST QOPENGLFRAMEBUFFEROBJECT
REQUEST QSIZE
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QQuickWindow INHERIT QWindow

   METHOD new
   METHOD delete
   METHOD activeFocusItem
   METHOD clearBeforeRendering
   METHOD color
   METHOD contentItem
   METHOD createTextureFromId
   METHOD createTextureFromImage
   METHOD grabWindow
   METHOD incubationController
   METHOD isPersistentOpenGLContext
   METHOD isPersistentSceneGraph
   METHOD mouseGrabberItem
   METHOD openglContext
   METHOD renderTarget
   METHOD renderTargetId
   METHOD renderTargetSize
   METHOD sendEvent
   METHOD setClearBeforeRendering
   METHOD setColor
   METHOD setPersistentOpenGLContext
   METHOD setPersistentSceneGraph
   METHOD setRenderTarget
   METHOD accessibleRoot
   METHOD releaseResources
   METHOD update

   METHOD onAfterRendering
   METHOD onBeforeRendering
   METHOD onBeforeSynchronizing
   METHOD onColorChanged
   METHOD onFrameSwapped
   METHOD onSceneGraphInitialized
   METHOD onSceneGraphInvalidated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickWindow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQuickWindow>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQuickWindow>
#endif

#include <QQuickItem>
#include <QSGTexture>
#include <QOpenGLContext>

/*
QQuickWindow(QWindow * parent = 0)
*/
HB_FUNC_STATIC( QQUICKWINDOW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWINDOW(1)||ISNIL(1)) )
  {
    QQuickWindow * o = new QQuickWindow ( OPQWINDOW(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQUICKWINDOW_DELETE )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

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
QQuickItem * activeFocusItem() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_ACTIVEFOCUSITEM )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QQuickItem * ptr = obj->activeFocusItem ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QQUICKITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool clearBeforeRendering() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_CLEARBEFORERENDERING )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->clearBeforeRendering () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QColor color() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_COLOR )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->color () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QQuickItem * contentItem() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_CONTENTITEM )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QQuickItem * ptr = obj->contentItem ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QQUICKITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSGTexture * createTextureFromId(uint id, const QSize & size, CreateTextureOptions options = CreateTextureOption( 0 )) const
*/
HB_FUNC_STATIC( QQUICKWINDOW_CREATETEXTUREFROMID )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQSIZE(2) && ISOPTNUM(3) )
    {
      QSGTexture * ptr = obj->createTextureFromId ( PUINT(1), *PQSIZE(2), ISNIL(3)? (QQuickWindow::CreateTextureOptions) QQuickWindow::CreateTextureOption( 0 ) : (QQuickWindow::CreateTextureOptions) hb_parni(3) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QSGTEXTURE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSGTexture * createTextureFromImage(const QImage & image) const
*/
HB_FUNC_STATIC( QQUICKWINDOW_CREATETEXTUREFROMIMAGE )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQIMAGE(1) )
    {
      QSGTexture * ptr = obj->createTextureFromImage ( *PQIMAGE(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QSGTEXTURE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QImage grabWindow()
*/
HB_FUNC_STATIC( QQUICKWINDOW_GRABWINDOW )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QImage * ptr = new QImage( obj->grabWindow () );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QQmlIncubationController * incubationController() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_INCUBATIONCONTROLLER )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QQmlIncubationController * ptr = obj->incubationController ();
      _qt5xhb_createReturnClass ( ptr, "QQMLINCUBATIONCONTROLLER", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isPersistentOpenGLContext() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_ISPERSISTENTOPENGLCONTEXT )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isPersistentOpenGLContext () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isPersistentSceneGraph() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_ISPERSISTENTSCENEGRAPH )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isPersistentSceneGraph () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QQuickItem * mouseGrabberItem() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_MOUSEGRABBERITEM )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QQuickItem * ptr = obj->mouseGrabberItem ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QQUICKITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QOpenGLContext * openglContext() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_OPENGLCONTEXT )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QOpenGLContext * ptr = obj->openglContext ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QOPENGLCONTEXT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QOpenGLFramebufferObject * renderTarget() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_RENDERTARGET )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QOpenGLFramebufferObject * ptr = obj->renderTarget ();
      _qt5xhb_createReturnClass ( ptr, "QOPENGLFRAMEBUFFEROBJECT", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
uint renderTargetId() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_RENDERTARGETID )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RUINT( obj->renderTargetId () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize renderTargetSize() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_RENDERTARGETSIZE )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->renderTargetSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool sendEvent(QQuickItem * item, QEvent * e)
*/
HB_FUNC_STATIC( QQUICKWINDOW_SENDEVENT )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQQUICKITEM(1) && ISQEVENT(2) )
    {
      RBOOL( obj->sendEvent ( PQQUICKITEM(1), PQEVENT(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setClearBeforeRendering(bool enabled)
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETCLEARBEFORERENDERING )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setClearBeforeRendering ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColor(const QColor & color)
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETCOLOR )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
      obj->setColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPersistentOpenGLContext(bool persistent)
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETPERSISTENTOPENGLCONTEXT )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setPersistentOpenGLContext ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPersistentSceneGraph(bool persistent)
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETPERSISTENTSCENEGRAPH )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setPersistentSceneGraph ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRenderTarget(QOpenGLFramebufferObject * fbo)
*/
void QQuickWindow_setRenderTarget1 ()
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setRenderTarget ( PQOPENGLFRAMEBUFFEROBJECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRenderTarget(uint fboId, const QSize & size)
*/
void QQuickWindow_setRenderTarget2 ()
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setRenderTarget ( PUINT(1), *PQSIZE(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setRenderTarget(QOpenGLFramebufferObject * fbo)
//[2]void setRenderTarget(uint fboId, const QSize & size)

HB_FUNC_STATIC( QQUICKWINDOW_SETRENDERTARGET )
{
  if( ISNUMPAR(1) && ISQOPENGLFRAMEBUFFEROBJECT(1) )
  {
    QQuickWindow_setRenderTarget1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSIZE(2) )
  {
    QQuickWindow_setRenderTarget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QAccessibleInterface * accessibleRoot() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_ACCESSIBLEROOT )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAccessibleInterface * ptr = obj->accessibleRoot ();
      _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void releaseResources()
*/
HB_FUNC_STATIC( QQUICKWINDOW_RELEASERESOURCES )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->releaseResources ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update()
*/
HB_FUNC_STATIC( QQUICKWINDOW_UPDATE )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->update ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QQuickWindowSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QQUICKWINDOW_ONAFTERRENDERING )
{
  QQuickWindowSlots_connect_signal( "afterRendering()", "afterRendering()" );
}

HB_FUNC_STATIC( QQUICKWINDOW_ONBEFORERENDERING )
{
  QQuickWindowSlots_connect_signal( "beforeRendering()", "beforeRendering()" );
}

HB_FUNC_STATIC( QQUICKWINDOW_ONBEFORESYNCHRONIZING )
{
  QQuickWindowSlots_connect_signal( "beforeSynchronizing()", "beforeSynchronizing()" );
}

HB_FUNC_STATIC( QQUICKWINDOW_ONCOLORCHANGED )
{
  QQuickWindowSlots_connect_signal( "colorChanged(QColor)", "colorChanged(QColor)" );
}

HB_FUNC_STATIC( QQUICKWINDOW_ONFRAMESWAPPED )
{
  QQuickWindowSlots_connect_signal( "frameSwapped()", "frameSwapped()" );
}

HB_FUNC_STATIC( QQUICKWINDOW_ONSCENEGRAPHINITIALIZED )
{
  QQuickWindowSlots_connect_signal( "sceneGraphInitialized()", "sceneGraphInitialized()" );
}

HB_FUNC_STATIC( QQUICKWINDOW_ONSCENEGRAPHINVALIDATED )
{
  QQuickWindowSlots_connect_signal( "sceneGraphInvalidated()", "sceneGraphInvalidated()" );
}

#pragma ENDDUMP
