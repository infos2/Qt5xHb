%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQCameraControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraControl(QObject *parent = 0);
  ~SlotsQCameraControl();
  public slots:
  void captureModeChanged(QCamera::CaptureModes mode);
  void error(int error, const QString & errorString);
  void stateChanged(QCamera::State state);
  void statusChanged(QCamera::Status status);
};