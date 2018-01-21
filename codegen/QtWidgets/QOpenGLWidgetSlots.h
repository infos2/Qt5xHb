%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQOPENGLWIDGET_H
#define SLOTSQOPENGLWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QOpenGLWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQOpenGLWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQOpenGLWidget(QObject *parent = 0);
  ~SlotsQOpenGLWidget();
  public slots:
  void aboutToCompose();
  void frameSwapped();
  void aboutToResize();
  void resized();
};

#endif // SLOTSQOPENGLWIDGET_H
