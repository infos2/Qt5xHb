$header

#include "hbclass.ch"

CLASS QSound INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD loops
   METHOD loopsRemaining
   METHOD setLoops
   METHOD fileName
   METHOD isFinished
   METHOD stop
   METHOD play1
   METHOD play2
   METHOD play

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSound(const QString& filename, QObject* parent = 0)
*/
$constructor=|new|const QString &,QObject *=0

$deleteMethod

/*
int loops() const
*/
$method=|int|loops|

/*
int loopsRemaining() const
*/
$method=|int|loopsRemaining|

/*
void setLoops(int)
*/
$method=|void|setLoops|int

/*
QString fileName() const
*/
$method=|QString|fileName|

/*
bool isFinished() const
*/
$method=|bool|isFinished|

/*
void stop()
*/
$method=|void|stop|

/*
void play()
*/
$method=|void|play,play1|

/*
static void play(const QString& filename)
*/
$staticMethod=|void|play,play2|const QString &

//[1]void play()
//[2]static void play(const QString& filename)

HB_FUNC_STATIC( QSOUND_PLAY )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
