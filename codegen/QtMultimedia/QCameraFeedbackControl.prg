/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QCameraFeedbackControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD isEventFeedbackEnabled
   METHOD isEventFeedbackLocked
   METHOD resetEventFeedback
   METHOD setEventFeedbackEnabled
   METHOD setEventFeedbackSound

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraFeedbackControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraFeedbackControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraFeedbackControl>
#endif

HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_DELETE )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool isEventFeedbackEnabled(EventType event) const = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_ISEVENTFEEDBACKENABLED )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEventFeedbackEnabled ( (QCameraFeedbackControl::EventType) hb_parni(1) ) );
  }
}


/*
virtual bool isEventFeedbackLocked(EventType event) const = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_ISEVENTFEEDBACKLOCKED )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEventFeedbackLocked ( (QCameraFeedbackControl::EventType) hb_parni(1) ) );
  }
}


/*
virtual void resetEventFeedback(EventType event) = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_RESETEVENTFEEDBACK )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetEventFeedback ( (QCameraFeedbackControl::EventType) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool setEventFeedbackEnabled(EventType event, bool enabled) = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_SETEVENTFEEDBACKENABLED )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setEventFeedbackEnabled ( (QCameraFeedbackControl::EventType) hb_parni(1), PBOOL(2) ) );
  }
}


/*
virtual bool setEventFeedbackSound(EventType event, const QString & filePath) = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_SETEVENTFEEDBACKSOUND )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setEventFeedbackSound ( (QCameraFeedbackControl::EventType) hb_parni(1), PQSTRING(2) ) );
  }
}



#pragma ENDDUMP
