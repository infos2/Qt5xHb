/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QKEYSEQUENCEEDITSLOTS_H
#define QKEYSEQUENCEEDITSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QKeySequenceEdit>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QKeySequenceEditSlots: public QObject
{
  Q_OBJECT
  public:
  QKeySequenceEditSlots(QObject *parent = 0);
  ~QKeySequenceEditSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void editingFinished();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void keySequenceChanged( const QKeySequence & keySequence );
#endif
};

#endif /* QKEYSEQUENCEEDITSLOTS_H */
