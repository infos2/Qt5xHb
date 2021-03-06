/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QICON
REQUEST QURL
REQUEST QWEBHISTORY
REQUEST QWEBPAGE
REQUEST QWEBSETTINGS
#endif

CLASS QGraphicsWebView INHERIT QGraphicsWidget

   METHOD new
   METHOD delete

   METHOD back
   METHOD event
   METHOD findText
   METHOD forward
   METHOD history
   METHOD icon
   METHOD inputMethodQuery
   METHOD isModified
   METHOD isTiledBackingStoreFrozen
   METHOD itemChange
   METHOD load
   METHOD page
   METHOD pageAction
   METHOD paint
   METHOD reload
   METHOD renderHints
   METHOD resizesToContents
   METHOD setContent
   METHOD setGeometry
   METHOD setHtml
   METHOD setPage
   METHOD setRenderHint
   METHOD setRenderHints
   METHOD setResizesToContents
   METHOD setTiledBackingStoreFrozen
   METHOD settings
   METHOD setUrl
   METHOD setZoomFactor
   METHOD sizeHint
   METHOD stop
   METHOD title
   METHOD triggerPageAction
   METHOD updateGeometry
   METHOD url
   METHOD zoomFactor

   METHOD onIconChanged
   METHOD onLinkClicked
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD onStatusBarMessage
   METHOD onTitleChanged
   METHOD onUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsWebView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsWebView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsWebView>
#endif

#include <QAction>

/*
explicit QGraphicsWebView ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsWebView * o = new QGraphicsWebView ( ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QGraphicsWebView()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_DELETE )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString title () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_TITLE )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->title () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ICON )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon () );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal zoomFactor () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ZOOMFACTOR )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->zoomFactor () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setZoomFactor ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETZOOMFACTOR )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setZoomFactor ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QUrl url () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_URL )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QUrl * ptr = new QUrl( obj->url () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setUrl ( const QUrl & )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETURL )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQURL(1) )
    {
      obj->setUrl ( *PQURL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isModified () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ISMODIFIED )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isModified () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool resizesToContents () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_RESIZESTOCONTENTS )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->resizesToContents () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setResizesToContents ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETRESIZESTOCONTENTS )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setResizesToContents ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isTiledBackingStoreFrozen () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ISTILEDBACKINGSTOREFROZEN )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isTiledBackingStoreFrozen () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTiledBackingStoreFrozen ( bool frozen )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETTILEDBACKINGSTOREFROZEN )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setTiledBackingStoreFrozen ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPainter::RenderHints renderHints() const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_RENDERHINTS )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->renderHints () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRenderHints(QPainter::RenderHints)
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETRENDERHINTS )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setRenderHints ( (QPainter::RenderHints) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool findText ( const QString & subString, QWebPage::FindFlags options = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_FINDTEXT )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
    {
      RBOOL( obj->findText ( PQSTRING(1), ISNIL(2)? (QWebPage::FindFlags) 0 : (QWebPage::FindFlags) hb_parni(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QWebHistory * history () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_HISTORY )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWebHistory * ptr = obj->history ();
      _qt5xhb_createReturnClass ( ptr, "QWEBHISTORY", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void load ( const QUrl & url )
*/
void QGraphicsWebView_load1 ()
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->load ( *PQURL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/
void QGraphicsWebView_load2 ()
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->load ( *PQNETWORKREQUEST(1), ISNIL(2)? (QNetworkAccessManager::Operation) QNetworkAccessManager::GetOperation : (QNetworkAccessManager::Operation) hb_parni(2), ISNIL(3)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void load ( const QUrl & url )
//[2]void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QGraphicsWebView_load1();
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && ISOPTNUM(2) && ISOPTQBYTEARRAY(3) )
  {
    QGraphicsWebView_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWebPage * page () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_PAGE )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWebPage * ptr = obj->page ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QWEBPAGE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAction * pageAction ( QWebPage::WebAction action ) const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_PAGEACTION )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QAction * ptr = obj->pageAction ( (QWebPage::WebAction) hb_parni(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETCONTENT )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,3) && ISQBYTEARRAY(1) && ISOPTCHAR(2) && (ISQURL(3)||ISNIL(3)) )
    {
      obj->setContent ( *PQBYTEARRAY(1), OPQSTRING(2,QString()), ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETHTML )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQURL(2)||ISNIL(2)) )
    {
      obj->setHtml ( PQSTRING(1), ISNIL(2)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPage ( QWebPage * page )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETPAGE )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWEBPAGE(1) )
    {
      obj->setPage ( PQWEBPAGE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWebSettings * settings () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETTINGS )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWebSettings * ptr = obj->settings ();
      _qt5xhb_createReturnClass ( ptr, "QWEBSETTINGS", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void triggerPageAction ( QWebPage::WebAction action, bool checked = false )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_TRIGGERPAGEACTION )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
      obj->triggerPageAction ( (QWebPage::WebAction) hb_parni(1), OPBOOL(2,false) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void back ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_BACK )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->back ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void forward ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_FORWARD )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->forward ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void reload ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_RELOAD )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->reload ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stop ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_STOP )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->stop ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setGeometry(const QRectF& rect)
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETGEOMETRY )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECTF(1) )
    {
      obj->setGeometry ( *PQRECTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void updateGeometry()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_UPDATEGEOMETRY )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->updateGeometry ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void paint(QPainter*, const QStyleOptionGraphicsItem* options, QWidget* widget = 0)
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_PAINT )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
      obj->paint ( PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), OPQWIDGET(3,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QVariant itemChange(GraphicsItemChange change, const QVariant& value)
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ITEMCHANGE )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
    {
      QVariant * ptr = new QVariant( obj->itemChange ( (QGraphicsItem::GraphicsItemChange) hb_parni(1), *PQVARIANT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool event(QEvent*)
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_EVENT )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQEVENT(1) )
    {
      RBOOL( obj->event ( PQEVENT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SIZEHINT )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQSIZEF(2) )
    {
      QSizeF * ptr = new QSizeF( obj->sizeHint ( (Qt::SizeHint) hb_parni(1), *PQSIZEF(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_INPUTMETHODQUERY )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->inputMethodQuery ( (Qt::InputMethodQuery) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRenderHint(QPainter::RenderHint, bool enabled = true)
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETRENDERHINT )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setRenderHint ( (QPainter::RenderHint) hb_parni(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QGraphicsWebViewSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONICONCHANGED )
{
  QGraphicsWebViewSlots_connect_signal( "iconChanged()", "iconChanged()" );
}

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONLINKCLICKED )
{
  QGraphicsWebViewSlots_connect_signal( "linkClicked(QUrl)", "linkClicked(QUrl)" );
}

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONLOADFINISHED )
{
  QGraphicsWebViewSlots_connect_signal( "loadFinished(bool)", "loadFinished(bool)" );
}

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONLOADPROGRESS )
{
  QGraphicsWebViewSlots_connect_signal( "loadProgress(int)", "loadProgress(int)" );
}

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONLOADSTARTED )
{
  QGraphicsWebViewSlots_connect_signal( "loadStarted()", "loadStarted()" );
}

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONSTATUSBARMESSAGE )
{
  QGraphicsWebViewSlots_connect_signal( "statusBarMessage(QString)", "statusBarMessage(QString)" );
}

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONTITLECHANGED )
{
  QGraphicsWebViewSlots_connect_signal( "titleChanged(QString)", "titleChanged(QString)" );
}

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ONURLCHANGED )
{
  QGraphicsWebViewSlots_connect_signal( "urlChanged(QUrl)", "urlChanged(QUrl)" );
}

#pragma ENDDUMP
