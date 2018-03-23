/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QScatter3DSeriesSlots.h"

QScatter3DSeriesSlots::QScatter3DSeriesSlots(QObject *parent) : QObject(parent)
{
}

QScatter3DSeriesSlots::~QScatter3DSeriesSlots()
{
}
void QScatter3DSeriesSlots::dataProxyChanged( QScatterDataProxy * proxy )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataProxyChanged(QScatterDataProxy*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCATTER3DSERIES" );
    PHB_ITEM pproxy = Signals_return_qobject( (QObject *) proxy, "QSCATTERDATAPROXY" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pproxy );
    hb_itemRelease( psender );
    hb_itemRelease( pproxy );
  }
}
void QScatter3DSeriesSlots::itemSizeChanged( float size )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemSizeChanged(float)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCATTER3DSERIES" );
    PHB_ITEM psize = hb_itemPutND( NULL, size );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psize );
    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}
void QScatter3DSeriesSlots::selectedItemChanged( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectedItemChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCATTER3DSERIES" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QScatter3DSeriesSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QScatter3DSeries * obj = (QScatter3DSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QScatter3DSeriesSlots * s = QCoreApplication::instance()->findChild<QScatter3DSeriesSlots *>();

    if( s == NULL )
    {
      s = new QScatter3DSeriesSlots();
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
