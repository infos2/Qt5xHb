%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQFileSystemWatcher: public QObject
{
  Q_OBJECT
  public:
  SlotsQFileSystemWatcher(QObject *parent = 0);
  ~SlotsQFileSystemWatcher();
  public slots:
  void directoryChanged(const QString & path);
  void fileChanged(const QString & path);
};