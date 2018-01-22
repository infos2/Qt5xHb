%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQCOMPLETER_H
#define SLOTSQCOMPLETER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCompleter>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCompleter: public QObject
{
  Q_OBJECT
  public:
  SlotsQCompleter(QObject *parent = 0);
  ~SlotsQCompleter();
  public slots:
  void activated ( const QString & text );
  void activated ( const QModelIndex & index );
  void highlighted ( const QString & text );
  void highlighted ( const QModelIndex & index );
};

#endif // SLOTSQCOMPLETER_H