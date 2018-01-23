%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQTcpServer: public QObject
{
  Q_OBJECT
  public:
  SlotsQTcpServer(QObject *parent = 0);
  ~SlotsQTcpServer();
  public slots:
  void newConnection ();
};