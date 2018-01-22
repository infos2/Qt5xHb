%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QWizardSlots.h"

static SlotsQWizard * s = NULL;

SlotsQWizard::SlotsQWizard(QObject *parent) : QObject(parent)
{
}

SlotsQWizard::~SlotsQWizard()
{
}

void SlotsQWizard::currentIdChanged ( int id )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentIdChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}

void SlotsQWizard::customButtonClicked ( int which )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "customButtonClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pwhich = hb_itemPutNI( NULL, which );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwhich );
    hb_itemRelease( psender );
    hb_itemRelease( pwhich );
  }
}

void SlotsQWizard::helpRequested ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "helpRequested()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQWizard::pageAdded ( int id )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pageAdded(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}

void SlotsQWizard::pageRemoved ( int id )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pageRemoved(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}

HB_FUNC( QWIZARD_ONCURRENTIDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWizard(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentIdChanged(int)", "currentIdChanged(int)" ) );
}

HB_FUNC( QWIZARD_ONCUSTOMBUTTONCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQWizard(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "customButtonClicked(int)", "customButtonClicked(int)" ) );
}

HB_FUNC( QWIZARD_ONHELPREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQWizard(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "helpRequested()", "helpRequested()" ) );
}

HB_FUNC( QWIZARD_ONPAGEADDED )
{
  if( s == NULL )
  {
    s = new SlotsQWizard(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "pageAdded(int)", "pageAdded(int)" ) );
}

HB_FUNC( QWIZARD_ONPAGEREMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQWizard(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "pageRemoved(int)", "pageRemoved(int)" ) );
}
