/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAudioRecorderSlots.h"

QAudioRecorderSlots::QAudioRecorderSlots(QObject *parent) : QObject(parent)
{
}

QAudioRecorderSlots::~QAudioRecorderSlots()
{
}
void QAudioRecorderSlots::audioInputChanged( const QString & name )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "audioInputChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAUDIORECORDER" );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pname );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}
void QAudioRecorderSlots::availableAudioInputsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "availableAudioInputsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAUDIORECORDER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QAudioRecorderSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QAudioRecorder * obj = (QAudioRecorder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QAudioRecorderSlots * s = QCoreApplication::instance()->findChild<QAudioRecorderSlots *>();

    if( s == NULL )
    {
      s = new QAudioRecorderSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
