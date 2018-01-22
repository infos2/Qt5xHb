%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QSoundEffectSlots.h"

static SlotsQSoundEffect * s = NULL;

SlotsQSoundEffect::SlotsQSoundEffect(QObject *parent) : QObject(parent)
{
}

SlotsQSoundEffect::~SlotsQSoundEffect()
{
}

void SlotsQSoundEffect::sourceChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sourceChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQSoundEffect::loopCountChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loopCountChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQSoundEffect::loopsRemainingChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loopsRemainingChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQSoundEffect::volumeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "volumeChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQSoundEffect::mutedChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mutedChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQSoundEffect::loadedChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loadedChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQSoundEffect::playingChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "playingChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQSoundEffect::statusChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQSoundEffect::categoryChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "categoryChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QSOUNDEFFECT_ONSOURCECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQSoundEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sourceChanged()", "sourceChanged()" ) );
}

HB_FUNC( QSOUNDEFFECT_ONLOOPCOUNTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQSoundEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loopCountChanged()", "loopCountChanged()" ) );
}

HB_FUNC( QSOUNDEFFECT_ONLOOPSREMAININGCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQSoundEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loopsRemainingChanged()", "loopsRemainingChanged()" ) );
}

HB_FUNC( QSOUNDEFFECT_ONVOLUMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQSoundEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "volumeChanged()", "volumeChanged()" ) );
}

HB_FUNC( QSOUNDEFFECT_ONMUTEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQSoundEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mutedChanged()", "mutedChanged()" ) );
}

HB_FUNC( QSOUNDEFFECT_ONLOADEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQSoundEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadedChanged()", "loadedChanged()" ) );
}

HB_FUNC( QSOUNDEFFECT_ONPLAYINGCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQSoundEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "playingChanged()", "playingChanged()" ) );
}

HB_FUNC( QSOUNDEFFECT_ONSTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQSoundEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusChanged()", "statusChanged()" ) );
}

HB_FUNC( QSOUNDEFFECT_ONCATEGORYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQSoundEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "categoryChanged()", "categoryChanged()" ) );
}