%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQWIZARDPAGE_H
#define SLOTSQWIZARDPAGE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QWizardPage>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWizardPage: public QObject
{
  Q_OBJECT
  public:
  SlotsQWizardPage(QObject *parent = 0);
  ~SlotsQWizardPage();
  public slots:
  void completeChanged ();
};

#endif // SLOTSQWIZARDPAGE_H
