/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDESIGNERFORMWINDOWMANAGERINTERFACESLOTS_H
#define QDESIGNERFORMWINDOWMANAGERINTERFACESLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDesignerFormWindowManagerInterface>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QDesignerFormWindowManagerInterfaceSlots: public QObject
{
  Q_OBJECT
  public:
  QDesignerFormWindowManagerInterfaceSlots(QObject *parent = 0);
  ~QDesignerFormWindowManagerInterfaceSlots();
  public slots:
  void activeFormWindowChanged( QDesignerFormWindowInterface * formWindow );
  void formWindowAdded( QDesignerFormWindowInterface * formWindow );
  void formWindowRemoved( QDesignerFormWindowInterface * formWindow );
};

#endif /* QDESIGNERFORMWINDOWMANAGERINTERFACESLOTS_H */
