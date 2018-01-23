%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QDeclarativeExpressionSlots.h"

static SlotsQDeclarativeExpression * s = NULL;

SlotsQDeclarativeExpression::SlotsQDeclarativeExpression(QObject *parent) : QObject(parent)
{
}

SlotsQDeclarativeExpression::~SlotsQDeclarativeExpression()
{
}

void SlotsQDeclarativeExpression::valueChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QDECLARATIVEEXPRESSION_ONVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDeclarativeExpression(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "valueChanged()", "valueChanged()" ) );
}