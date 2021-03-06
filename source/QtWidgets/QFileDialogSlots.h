/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QFILEDIALOGSLOTS_H
#define QFILEDIALOGSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QFileDialog>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QFileDialogSlots: public QObject
{
  Q_OBJECT
  public:
  QFileDialogSlots(QObject *parent = 0);
  ~QFileDialogSlots();
  public slots:
  void currentChanged( const QString & path );
  void directoryEntered( const QString & directory );
  void fileSelected( const QString & file );
  void filesSelected( const QStringList & selected );
  void filterSelected( const QString & filter );
  void urlSelected( const QUrl & url );
  void urlsSelected( const QList<QUrl> & urls );
  void currentUrlChanged( const QUrl & url );
  void directoryUrlEntered( const QUrl & directory );
};

#endif /* QFILEDIALOGSLOTS_H */
