%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QTextEditSlots.h"

static SlotsQTextEdit * s = NULL;

SlotsQTextEdit::SlotsQTextEdit(QObject *parent) : QObject(parent)
{
}

SlotsQTextEdit::~SlotsQTextEdit()
{
}

void SlotsQTextEdit::copyAvailable ( bool yes )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "copyAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pyes = hb_itemPutL( NULL, yes );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pyes );
    hb_itemRelease( psender );
    hb_itemRelease( pyes );
  }
}

void SlotsQTextEdit::currentCharFormatChanged ( const QTextCharFormat & f )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentCharFormatChanged(QTextCharFormat)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pf = hb_itemPutPtr( NULL, (QTextCharFormat *) &f );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pf );
    hb_itemRelease( psender );
    hb_itemRelease( pf );
  }
}

void SlotsQTextEdit::cursorPositionChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cursorPositionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQTextEdit::redoAvailable ( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "redoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void SlotsQTextEdit::selectionChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQTextEdit::textChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQTextEdit::undoAvailable ( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "undoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

HB_FUNC( QTEXTEDIT_ONCOPYAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "copyAvailable(bool)", "copyAvailable(bool)" ) );
}

HB_FUNC( QTEXTEDIT_ONCURRENTCHARFORMATCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentCharFormatChanged(QTextCharFormat)", "currentCharFormatChanged(QTextCharFormat)" ) );
}

HB_FUNC( QTEXTEDIT_ONCURSORPOSITIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "cursorPositionChanged()", "cursorPositionChanged()" ) );
}

HB_FUNC( QTEXTEDIT_ONREDOAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "redoAvailable(bool)", "redoAvailable(bool)" ) );
}

HB_FUNC( QTEXTEDIT_ONSELECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "selectionChanged()", "selectionChanged()" ) );
}

HB_FUNC( QTEXTEDIT_ONTEXTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "textChanged()", "textChanged()" ) );
}

HB_FUNC( QTEXTEDIT_ONUNDOAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQTextEdit(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "undoAvailable(bool)", "undoAvailable(bool)" ) );
}
