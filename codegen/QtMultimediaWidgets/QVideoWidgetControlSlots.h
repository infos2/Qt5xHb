%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQVideoWidgetControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQVideoWidgetControl(QObject *parent = 0);
  ~SlotsQVideoWidgetControl();
  public slots:
  void fullScreenChanged(bool fullScreen);
  void brightnessChanged(int brightness);
  void contrastChanged(int contrast);
  void hueChanged(int hue);
  void saturationChanged(int saturation);
};