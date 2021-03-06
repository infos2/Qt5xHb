/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QQMLENGINESLOTS_H
#define QQMLENGINESLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QQmlEngine>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QQmlEngineSlots: public QObject
{
  Q_OBJECT
  public:
  QQmlEngineSlots(QObject *parent = 0);
  ~QQmlEngineSlots();
  public slots:
  void quit();
};

#endif /* QQMLENGINESLOTS_H */
