/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QINAPPSTORESLOTS_H
#define QINAPPSTORESLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QInAppStore>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QInAppStoreSlots: public QObject
{
  Q_OBJECT
  public:
  QInAppStoreSlots(QObject *parent = 0);
  ~QInAppStoreSlots();
  public slots:
  void productRegistered( QInAppProduct * product );
  void productUnknown( QInAppProduct::ProductType productType, const QString & identifier );
  void transactionReady( QInAppTransaction * transaction );
};

#endif /* QINAPPSTORESLOTS_H */
