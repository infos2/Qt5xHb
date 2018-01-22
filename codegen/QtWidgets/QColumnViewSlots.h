%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQCOLUMNVIEW_H
#define SLOTSQCOLUMNVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QColumnView>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQColumnView: public QObject
{
  Q_OBJECT
  public:
  SlotsQColumnView(QObject *parent = 0);
  ~SlotsQColumnView();
  public slots:
  void updatePreviewWidget ( const QModelIndex & index );
};

#endif // SLOTSQCOLUMNVIEW_H