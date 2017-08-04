$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QColorDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD currentColor
   METHOD setCurrentColor
   METHOD open
   METHOD options
   METHOD setOptions
   METHOD selectedColor
   METHOD setOption
   METHOD testOption
   METHOD setVisible
   METHOD customColor
   METHOD setCustomColor
   METHOD customCount
   METHOD getColor
   METHOD standardColor
   METHOD setStandardColor

   METHOD onColorSelected
   METHOD onCurrentColorChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QColorDialog ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
explicit QColorDialog ( const QColor & initial, QWidget * parent = 0 )
*/
$internalConstructor=|new2|const QColor &,QWidget *=0

//[1]explicit QColorDialog ( QWidget * parent = 0 )
//[2]explicit QColorDialog ( const QColor & initial, QWidget * parent = 0 )

HB_FUNC_STATIC( QCOLORDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QColorDialog_new1();
  }
  else if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && ISOPTQWIDGET(2) )
  {
    QColorDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QColor currentColor () const
*/
$method=|QColor|currentColor|

/*
void setCurrentColor ( const QColor & color )
*/
$method=|void|setCurrentColor|const QColor &

/*
void open ()
*/
$internalMethod=|void|open,open1||#ifdef Q_NO_USING_KEYWORD

/*
void open ( QObject * receiver, const char * member )
*/
$internalMethod=|void|open,open2|QObject *,const char *

//[1]void open ()
//[2]void open ( QObject * receiver, const char * member )

HB_FUNC_STATIC( QCOLORDIALOG_OPEN )
{
  if( ISNUMPAR(0) )
  {
    QColorDialog_open1(); // TODO: verificar existencia do metodo no Qt 5
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QColorDialog_open2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
ColorDialogOptions options () const
*/
$method=|QColorDialog::ColorDialogOptions|options|

/*
void setOptions ( ColorDialogOptions options )
*/
$method=|void|setOptions|QColorDialog::ColorDialogOptions

/*
QColor selectedColor () const
*/
$method=|QColor|selectedColor|

/*
void setOption ( ColorDialogOption option, bool on = true )
*/
$method=|void|setOption|QColorDialog::ColorDialogOption,bool=true

/*
bool testOption ( ColorDialogOption option ) const
*/
$method=|bool|testOption|QColorDialog::ColorDialogOption

/*
void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
static QColor customColor(int index)
*/
$staticMethod=|QColor|customColor|int

/*
static void setCustomColor(int index, QColor color)
*/
$staticMethod=|void|setCustomColor|int,QColor

/*
static int customCount ()
*/
$staticMethod=|int|customCount|

/*
static QColor getColor(const QColor &initial = Qt::white, QWidget *parent = 0, const QString &title = QString(), ColorDialogOptions options = 0)
*/
$staticMethod=|QColor|getColor|const QColor &=Qt::white,QWidget *=0,const QString &=QString(),QColorDialog::ColorDialogOptions=0

%% TODO: conferir metodo e remover codigo morto
//
////[1]QColor getColor ( const QColor & initial, QWidget * parent, const QString & title, ColorDialogOptions options = 0 )
////[2]QColor getColor ( const QColor & initial = Qt::white, QWidget * parent = 0 )
//
//HB_FUNC_STATIC( QCOLORDIALOG_GETCOLOR )
//{
//  if( ISBETWEEN(3,4) && (ISQCOLOR(1)||ISCHAR(1)) && ISQWIDGET(2) && ISCHAR(3) && ISOPTNUM(4) )
//  {
//    HB_FUNC_EXEC( QCOLORDIALOG_GETCOLOR1 );
//  }
//  else if( ISBETWEEN(0,2) && (ISQCOLOR(1)||ISCHAR(1)) && ISOPTQWIDGET(2) )
//  {
//    HB_FUNC_EXEC( QCOLORDIALOG_GETCOLOR2 );
//  }
//  else
//  {
//    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
//  }
//}
//?>

/*
static QColor standardColor(int index)
*/
$staticMethod=|QColor|standardColor|int

/*
static void setStandardColor(int index, QColor color)
*/
$staticMethod=|void|setStandardColor|int,QColor

#pragma ENDDUMP
