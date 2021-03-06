/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPROCESSSLOTS_H
#define QPROCESSSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QProcess>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QProcessSlots: public QObject
{
  Q_OBJECT
  public:
  QProcessSlots(QObject *parent = 0);
  ~QProcessSlots();
  public slots:
  void error( QProcess::ProcessError error );
  void finished( int exitCode, QProcess::ExitStatus exitStatus );
  void readyReadStandardError();
  void readyReadStandardOutput();
  void started();
  void stateChanged( QProcess::ProcessState newState );
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  void errorOccurred( QProcess::ProcessError error );
#endif
};

#endif /* QPROCESSSLOTS_H */
