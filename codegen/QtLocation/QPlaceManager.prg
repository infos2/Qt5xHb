$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACEDETAILSREPLY
REQUEST QPLACECONTENTREPLY
REQUEST QPLACESEARCHREPLY
REQUEST QPLACESEARCHSUGGESTIONREPLY
REQUEST QPLACEIDREPLY
REQUEST QPLACEREPLY
REQUEST QPLACECATEGORY
REQUEST QLOCALE
REQUEST QPLACE
REQUEST QPLACEMATCHREPLY
#endif

CLASS QPlaceManager INHERIT QObject

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD getPlaceDetails
   METHOD getPlaceContent
   METHOD search
   METHOD searchSuggestions
   METHOD savePlace
   METHOD removePlace
   METHOD saveCategory
   METHOD removeCategory
   METHOD initializeCategories
   METHOD parentCategoryId
   METHOD childCategoryIds
   METHOD category
   METHOD childCategories
   METHOD locales
   METHOD setLocales
   METHOD setLocale
   METHOD compatiblePlace
   METHOD matchingPlaces

   METHOD onFinished
   METHOD onError
   METHOD onPlaceAdded
   METHOD onPlaceUpdated
   METHOD onPlaceRemoved
   METHOD onCategoryAdded
   METHOD onCategoryUpdated
   METHOD onCategoryRemoved
   METHOD onDataChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$deleteMethod=5,4,0

$prototype=QString managerName() const
$method=5,4,0|QString|managerName|

$prototype=int managerVersion() const
$method=5,4,0|int|managerVersion|

$prototype=QPlaceDetailsReply *getPlaceDetails(const QString &placeId) const
$method=5,4,0|QPlaceDetailsReply *|getPlaceDetails|const QString &

$prototype=QPlaceContentReply *getPlaceContent(const QPlaceContentRequest &request) const
$method=5,4,0|QPlaceContentReply *|getPlaceContent|const QPlaceContentRequest &

$prototype=QPlaceSearchReply *search(const QPlaceSearchRequest &query) const
$method=5,4,0|QPlaceSearchReply *|search|const QPlaceSearchRequest &

$prototype=QPlaceSearchSuggestionReply *searchSuggestions(const QPlaceSearchRequest &request) const
$method=5,4,0|QPlaceSearchSuggestionReply *|searchSuggestions|const QPlaceSearchRequest &

$prototype=QPlaceIdReply *savePlace(const QPlace &place)
$method=5,4,0|QPlaceIdReply *|savePlace|const QPlace &

$prototype=QPlaceIdReply *removePlace(const QString &placeId)
$method=5,4,0|QPlaceIdReply *|removePlace|const QString &

$prototype=QPlaceIdReply *saveCategory(const QPlaceCategory &category, const QString &parentId = QString())
$method=5,4,0|QPlaceIdReply *|saveCategory|const QPlaceCategory &,const QString &=QString()

$prototype=QPlaceIdReply *removeCategory(const QString &categoryId)
$method=5,4,0|QPlaceIdReply *|removeCategory|const QString &

$prototype=QPlaceReply *initializeCategories()
$method=5,4,0|QPlaceReply *|initializeCategories|

$prototype=QString parentCategoryId(const QString &categoryId) const
$method=5,4,0|QString|parentCategoryId|const QString &

$prototype=QStringList childCategoryIds(const QString &parentId = QString()) const
$method=5,4,0|QStringList|childCategoryIds|const QString &=QString()

$prototype=QPlaceCategory category(const QString &categoryId) const
$method=5,4,0|QPlaceCategory|category|const QString &

$prototype=QList<QPlaceCategory> childCategories(const QString &parentId = QString()) const
$method=5,4,0|QList<QPlaceCategory>|childCategories|const QString &=QString()

$prototype=QList<QLocale> locales() const
$method=5,4,0|QList<QLocale>|locales|

$prototype=void setLocales(const QList<QLocale> &locale)
$method=5,4,0|void|setLocales|const QList<QLocale> &

$prototype=void setLocale(const QLocale &locale)
$method=5,4,0|void|setLocale|const QLocale &

$prototype=QPlace compatiblePlace(const QPlace &place)
$method=5,4,0|QPlace|compatiblePlace|const QPlace &

$prototype=QPlaceMatchReply *matchingPlaces(const QPlaceMatchRequest &request) const
$method=5,4,0|QPlaceMatchReply *|matchingPlaces|const QPlaceMatchRequest &

#pragma ENDDUMP
