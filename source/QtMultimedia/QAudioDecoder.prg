/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QAUDIOBUFFER
REQUEST QIODEVICE
#endif

CLASS QAudioDecoder INHERIT QMediaObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD audioFormat
   METHOD bufferAvailable
   METHOD duration
   METHOD error
   METHOD errorString
   METHOD position
   METHOD read
   METHOD setAudioFormat
   METHOD setSourceDevice
   METHOD setSourceFilename
   METHOD sourceDevice
   METHOD sourceFilename
   METHOD state
   METHOD start
   METHOD stop
   METHOD hasSupport

   METHOD onBufferAvailableChanged
   METHOD onBufferReady
   METHOD onDurationChanged
   METHOD onError
   METHOD onFinished
   METHOD onFormatChanged
   METHOD onPositionChanged
   METHOD onSourceChanged
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioDecoder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioDecoder>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioDecoder>
#endif

/*
QAudioDecoder(QObject * parent = 0)
*/
HB_FUNC_STATIC( QAUDIODECODER_NEW )
{
  QAudioDecoder * o = new QAudioDecoder ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QAUDIODECODER_DELETE )
{
  QAudioDecoder * obj = (QAudioDecoder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAudioFormat audioFormat() const
*/
HB_FUNC_STATIC( QAUDIODECODER_AUDIOFORMAT )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->audioFormat () );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
bool bufferAvailable() const
*/
HB_FUNC_STATIC( QAUDIODECODER_BUFFERAVAILABLE )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->bufferAvailable () );
  }
}


/*
qint64 duration() const
*/
HB_FUNC_STATIC( QAUDIODECODER_DURATION )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->duration () );
  }
}


/*
Error error() const
*/
HB_FUNC_STATIC( QAUDIODECODER_ERROR )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QAUDIODECODER_ERRORSTRING )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->errorString () ) );
  }
}


/*
qint64 position() const
*/
HB_FUNC_STATIC( QAUDIODECODER_POSITION )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->position () );
  }
}


/*
QAudioBuffer read() const
*/
HB_FUNC_STATIC( QAUDIODECODER_READ )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioBuffer * ptr = new QAudioBuffer( obj->read () );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOBUFFER" );
  }
}


/*
void setAudioFormat(const QAudioFormat & format)
*/
HB_FUNC_STATIC( QAUDIODECODER_SETAUDIOFORMAT )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * par1 = (QAudioFormat *) _qt5xhb_itemGetPtr(1);
    obj->setAudioFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSourceDevice(QIODevice * device)
*/
HB_FUNC_STATIC( QAUDIODECODER_SETSOURCEDEVICE )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    obj->setSourceDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSourceFilename(const QString & fileName)
*/
HB_FUNC_STATIC( QAUDIODECODER_SETSOURCEFILENAME )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSourceFilename ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QIODevice * sourceDevice() const
*/
HB_FUNC_STATIC( QAUDIODECODER_SOURCEDEVICE )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->sourceDevice ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
QString sourceFilename() const
*/
HB_FUNC_STATIC( QAUDIODECODER_SOURCEFILENAME )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->sourceFilename () ) );
  }
}


/*
State state() const
*/
HB_FUNC_STATIC( QAUDIODECODER_STATE )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
void start()
*/
HB_FUNC_STATIC( QAUDIODECODER_START )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop()
*/
HB_FUNC_STATIC( QAUDIODECODER_STOP )
{
  QAudioDecoder * obj = (QAudioDecoder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QMultimedia::SupportEstimate hasSupport(const QString & mimeType, const QStringList & codecs = QStringList())
*/
HB_FUNC_STATIC( QAUDIODECODER_HASSUPPORT )
{
  hb_retni( QAudioDecoder::hasSupport ( PQSTRING(1), OPQSTRINGLIST(2,QStringList()) ) );
}




#pragma ENDDUMP
