/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QOAuth1Slots.h"

static QOAuth1Slots * s = NULL;

QOAuth1Slots::QOAuth1Slots(QObject *parent) : QObject(parent)
{
}

QOAuth1Slots::~QOAuth1Slots()
{
}
void QOAuth1Slots::clientSharedSecretChanged( const QString & credential )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clientSharedSecretChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcredential = hb_itemPutC( NULL, QSTRINGTOSTRING(credential) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcredential );
    hb_itemRelease( psender );
    hb_itemRelease( pcredential );
  }
}
void QOAuth1Slots::signatureMethodChanged( QOAuth1::SignatureMethod method )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "signatureMethodChanged(QOAuth1::SignatureMethod)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmethod = hb_itemPutNI( NULL, (int) method );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmethod );
    hb_itemRelease( psender );
    hb_itemRelease( pmethod );
  }
}
void QOAuth1Slots::temporaryCredentialsUrlChanged( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "temporaryCredentialsUrlChanged(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM purl = hb_itemPutPtr( NULL, (QUrl *) &url );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, purl );
    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}
void QOAuth1Slots::tokenCredentialsUrlChanged( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "tokenCredentialsUrlChanged(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM purl = hb_itemPutPtr( NULL, (QUrl *) &url );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, purl );
    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}
void QOAuth1Slots::tokenSecretChanged( const QString & token )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "tokenSecretChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptoken = hb_itemPutC( NULL, QSTRINGTOSTRING(token) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptoken );
    hb_itemRelease( psender );
    hb_itemRelease( ptoken );
  }
}

HB_FUNC( QOAUTH1_ONCLIENTSHAREDSECRETCHANGED )
{
  if( s == NULL )
  {
    s = new QOAuth1Slots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "clientSharedSecretChanged(QString)", "clientSharedSecretChanged(QString)" ) );
}

HB_FUNC( QOAUTH1_ONSIGNATUREMETHODCHANGED )
{
  if( s == NULL )
  {
    s = new QOAuth1Slots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "signatureMethodChanged(QOAuth1::SignatureMethod)", "signatureMethodChanged(QOAuth1::SignatureMethod)" ) );
}

HB_FUNC( QOAUTH1_ONTEMPORARYCREDENTIALSURLCHANGED )
{
  if( s == NULL )
  {
    s = new QOAuth1Slots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "temporaryCredentialsUrlChanged(QUrl)", "temporaryCredentialsUrlChanged(QUrl)" ) );
}

HB_FUNC( QOAUTH1_ONTOKENCREDENTIALSURLCHANGED )
{
  if( s == NULL )
  {
    s = new QOAuth1Slots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "tokenCredentialsUrlChanged(QUrl)", "tokenCredentialsUrlChanged(QUrl)" ) );
}

HB_FUNC( QOAUTH1_ONTOKENSECRETCHANGED )
{
  if( s == NULL )
  {
    s = new QOAuth1Slots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "tokenSecretChanged(QString)", "tokenSecretChanged(QString)" ) );
}
