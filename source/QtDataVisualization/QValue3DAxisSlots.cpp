/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QValue3DAxisSlots.h"

QValue3DAxisSlots::QValue3DAxisSlots(QObject *parent) : QObject(parent)
{
}

QValue3DAxisSlots::~QValue3DAxisSlots()
{
}

void QValue3DAxisSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QValue3DAxis * obj = (QValue3DAxis *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QValue3DAxisSlots * s = QCoreApplication::instance()->findChild<QValue3DAxisSlots *>();

    if( s == NULL )
    {
      s = new QValue3DAxisSlots();
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
