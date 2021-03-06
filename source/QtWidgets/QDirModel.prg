/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QFILEICONPROVIDER
REQUEST QICON
REQUEST QFILEINFO
#endif

CLASS QDirModel INHERIT QAbstractItemModel

   METHOD new
   METHOD delete
   METHOD index
   METHOD parent
   METHOD rowCount
   METHOD columnCount
   METHOD data
   METHOD setData
   METHOD headerData
   METHOD hasChildren
   METHOD flags
   METHOD sort
   METHOD mimeTypes
   METHOD supportedDropActions
   METHOD setIconProvider
   METHOD iconProvider
   METHOD setNameFilters
   METHOD nameFilters
   METHOD setFilter
   METHOD filter
   METHOD setSorting
   METHOD sorting
   METHOD setResolveSymlinks
   METHOD resolveSymlinks
   METHOD setReadOnly
   METHOD isReadOnly
   METHOD setLazyChildCount
   METHOD lazyChildCount
   METHOD isDir
   METHOD mkdir
   METHOD rmdir
   METHOD remove
   METHOD filePath
   METHOD fileName
   METHOD fileIcon
   METHOD fileInfo
   METHOD refresh

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDirModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDirModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDirModel>
#endif

/*
QDirModel(const QStringList &nameFilters, QDir::Filters filters,QDir::SortFlags sort, QObject *parent = 0)
*/
void QDirModel_new1 ()
{
  QDirModel * o = new QDirModel ( PQSTRINGLIST(1), (QDir::Filters) hb_parni(2), (QDir::SortFlags) hb_parni(3), OPQOBJECT(4,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QDirModel(QObject *parent = 0)
*/
void QDirModel_new2 ()
{
  QDirModel * o = new QDirModel ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QDirModel(const QStringList &nameFilters, QDir::Filters filters,QDir::SortFlags sort, QObject *parent = 0)
//[2]QDirModel(QObject *parent = 0)

HB_FUNC_STATIC( QDIRMODEL_NEW )
{
  if( ISBETWEEN(3,4) && ISARRAY(1) && ISNUM(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    QDirModel_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QDirModel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDIRMODEL_DELETE )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
*/
void QDirModel_index1 ()
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QModelIndex * ptr = new QModelIndex( obj->index ( PINT(1), PINT(2), ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
QModelIndex index(const QString &path, int column = 0) const
*/
void QDirModel_index2 ()
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QModelIndex * ptr = new QModelIndex( obj->index ( PQSTRING(1), OPINT(2,0) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

//[1]QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
//[2]QModelIndex index(const QString &path, int column = 0) const

HB_FUNC_STATIC( QDIRMODEL_INDEX )
{
  if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
  {
    QDirModel_index1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QDirModel_index2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QModelIndex parent(const QModelIndex &child) const
*/
HB_FUNC_STATIC( QDIRMODEL_PARENT )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      QModelIndex * ptr = new QModelIndex( obj->parent ( *PQMODELINDEX(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int rowCount(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QDIRMODEL_ROWCOUNT )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      RINT( obj->rowCount ( ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int columnCount(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QDIRMODEL_COLUMNCOUNT )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      RINT( obj->columnCount ( ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QDIRMODEL_DATA )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQMODELINDEX(1) && ISOPTNUM(2) )
    {
      QVariant * ptr = new QVariant( obj->data ( *PQMODELINDEX(1), OPINT(2,Qt::DisplayRole) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
*/
HB_FUNC_STATIC( QDIRMODEL_SETDATA )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISQMODELINDEX(1) && ISQVARIANT(2) && ISOPTNUM(3) )
    {
      RBOOL( obj->setData ( *PQMODELINDEX(1), *PQVARIANT(2), OPINT(3,Qt::EditRole) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QDIRMODEL_HEADERDATA )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
    {
      QVariant * ptr = new QVariant( obj->headerData ( PINT(1), (Qt::Orientation) hb_parni(2), OPINT(3,Qt::DisplayRole) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasChildren(const QModelIndex &index = QModelIndex()) const
*/
HB_FUNC_STATIC( QDIRMODEL_HASCHILDREN )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      RBOOL( obj->hasChildren ( ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::ItemFlags flags(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FLAGS )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      RENUM( obj->flags ( *PQMODELINDEX(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
HB_FUNC_STATIC( QDIRMODEL_SORT )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
      obj->sort ( PINT(1), ISNIL(2)? (Qt::SortOrder) Qt::AscendingOrder : (Qt::SortOrder) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList mimeTypes() const
*/
HB_FUNC_STATIC( QDIRMODEL_MIMETYPES )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->mimeTypes () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::DropActions supportedDropActions() const
*/
HB_FUNC_STATIC( QDIRMODEL_SUPPORTEDDROPACTIONS )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->supportedDropActions () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setIconProvider(QFileIconProvider *provider)
*/
HB_FUNC_STATIC( QDIRMODEL_SETICONPROVIDER )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFILEICONPROVIDER(1) )
    {
      obj->setIconProvider ( PQFILEICONPROVIDER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFileIconProvider *iconProvider() const
*/
HB_FUNC_STATIC( QDIRMODEL_ICONPROVIDER )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFileIconProvider * ptr = obj->iconProvider ();
      _qt5xhb_createReturnClass ( ptr, "QFILEICONPROVIDER", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setNameFilters(const QStringList &filters)
*/
HB_FUNC_STATIC( QDIRMODEL_SETNAMEFILTERS )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->setNameFilters ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList nameFilters() const
*/
HB_FUNC_STATIC( QDIRMODEL_NAMEFILTERS )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->nameFilters () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFilter(QDir::Filters filters)
*/
HB_FUNC_STATIC( QDIRMODEL_SETFILTER )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFilter ( (QDir::Filters) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDir::Filters filter() const
*/
HB_FUNC_STATIC( QDIRMODEL_FILTER )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->filter () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSorting(QDir::SortFlags sort)
*/
HB_FUNC_STATIC( QDIRMODEL_SETSORTING )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSorting ( (QDir::SortFlags) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDir::SortFlags sorting() const
*/
HB_FUNC_STATIC( QDIRMODEL_SORTING )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->sorting () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setResolveSymlinks(bool enable)
*/
HB_FUNC_STATIC( QDIRMODEL_SETRESOLVESYMLINKS )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setResolveSymlinks ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool resolveSymlinks() const
*/
HB_FUNC_STATIC( QDIRMODEL_RESOLVESYMLINKS )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->resolveSymlinks () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setReadOnly(bool enable)
*/
HB_FUNC_STATIC( QDIRMODEL_SETREADONLY )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setReadOnly ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isReadOnly() const
*/
HB_FUNC_STATIC( QDIRMODEL_ISREADONLY )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isReadOnly () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLazyChildCount(bool enable)
*/
HB_FUNC_STATIC( QDIRMODEL_SETLAZYCHILDCOUNT )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setLazyChildCount ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool lazyChildCount() const
*/
HB_FUNC_STATIC( QDIRMODEL_LAZYCHILDCOUNT )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->lazyChildCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isDir(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_ISDIR )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      RBOOL( obj->isDir ( *PQMODELINDEX(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QModelIndex mkdir(const QModelIndex &parent, const QString &name)
*/
HB_FUNC_STATIC( QDIRMODEL_MKDIR )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISCHAR(2) )
    {
      QModelIndex * ptr = new QModelIndex( obj->mkdir ( *PQMODELINDEX(1), PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool rmdir(const QModelIndex &index)
*/
HB_FUNC_STATIC( QDIRMODEL_RMDIR )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      RBOOL( obj->rmdir ( *PQMODELINDEX(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool remove(const QModelIndex &index)
*/
HB_FUNC_STATIC( QDIRMODEL_REMOVE )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      RBOOL( obj->remove ( *PQMODELINDEX(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString filePath(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILEPATH )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      RQSTRING( obj->filePath ( *PQMODELINDEX(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString fileName(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILENAME )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      RQSTRING( obj->fileName ( *PQMODELINDEX(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QIcon fileIcon(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILEICON )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      QIcon * ptr = new QIcon( obj->fileIcon ( *PQMODELINDEX(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QFileInfo fileInfo(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILEINFO )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      QFileInfo * ptr = new QFileInfo( obj->fileInfo ( *PQMODELINDEX(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QFILEINFO", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void refresh(const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QDIRMODEL_REFRESH )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      obj->refresh ( ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
