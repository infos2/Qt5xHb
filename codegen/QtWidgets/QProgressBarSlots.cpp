%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QProgressBarSlots.h"


static SlotsQProgressBar * s = NULL;

SlotsQProgressBar::SlotsQProgressBar(QObject *parent) : QObject(parent)
{
}

SlotsQProgressBar::~SlotsQProgressBar()
{
}

void SlotsQProgressBar::valueChanged ( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

HB_FUNC( QPROGRESSBAR_ONVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQProgressBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "valueChanged(int)", "valueChanged(int)" ) );
}
