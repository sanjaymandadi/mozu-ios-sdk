
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAPIContext.h"

#import "MOZUProductInCatalogInfo.h"
#import "MOZUAdminProduct.h"
#import "MOZUProductCodeRename.h"
#import "MOZUAdminProductCollection.h"


@interface MOZUAdminProductResource : NSObject


@property(readonly, nonatomic) MOZUDataViewMode dataViewMode;
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;
-(id)initWithAPIContext:(MOZUAPIContext *)apiContext dataViewMode:(MOZUDataViewMode)dataViewMode;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of products according to any specified facets, filter criteria, and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param noCount If true, the operation does not return the TotalCount number of results.
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param q A list of order search terms (not phrases) to use in the query when searching across order number and the name or email of the billing contact. When entering, separate multiple search terms with a space character.
@param qLimit The maximum number of search results to return in the response. You can limit any range between 1-100.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy 
@param startIndex 
*/

- (void)productsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter q:(NSString *)q qLimit:(NSNumber *)qLimit noCount:(NSNumber *)noCount responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminProductCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves a product that is associated with one or more specific catalogs.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

- (void)productInCatalogsWithProductCode:(NSString *)productCode completionHandler:(void(^)(NSArray<MOZUProductInCatalogInfo> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the details of a product associated with a specific catalog.
@param catalogId The unique identifier of the catalog of products used by a site.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)productInCatalogWithProductCode:(NSString *)productCode catalogId:(NSInteger)catalogId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUProductInCatalogInfo *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the details of a product definition.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)productWithProductCode:(NSString *)productCode responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminProduct *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new product definition in the specified master catalog.
@param body The properties of a product, referenced and used by carts, orders, wish lists, and returns.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)addProductWithBody:(MOZUAdminProduct *)body responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminProduct *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Associates a new product defined in the master catalog with a specific catalog.
@param body Properties of a product associated with a specific catalog.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)addProductInCatalogWithBody:(MOZUProductInCatalogInfo *)body productCode:(NSString *)productCode responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUProductInCatalogInfo *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Performs an update to a product code by renaming or replacing the current product code with a new one.
@param body Properties for a product code current and changed content.
*/

- (void)renameProductCodesWithBody:(NSArray<MOZUProductCodeRename> *)body completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the properties of a product specific to each catalog associated with the product.
@param body Properties of a product associated with a specific catalog.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

- (void)updateProductInCatalogsWithBody:(NSArray<MOZUProductInCatalogInfo> *)body productCode:(NSString *)productCode completionHandler:(void(^)(NSArray<MOZUProductInCatalogInfo> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Updates one or more properties of a product associated with a specific catalog.
@param body Properties of a product associated with a specific catalog.
@param catalogId The unique identifier of the catalog of products used by a site.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateProductInCatalogWithBody:(MOZUProductInCatalogInfo *)body productCode:(NSString *)productCode catalogId:(NSInteger)catalogId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUProductInCatalogInfo *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Updates one or more properties of a product definition in a master catalog.
@param body The properties of a product, referenced and used by carts, orders, wish lists, and returns.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateProductWithBody:(MOZUAdminProduct *)body productCode:(NSString *)productCode responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminProduct *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the specified product from a master catalog.
@param productCode The unique, user-defined product code of a product, used throughout Mozu to reference and associate to a product.
*/

- (void)deleteProductWithProductCode:(NSString *)productCode completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Removes the product association defined for a specific catalog.
@param catalogId The unique identifier of the catalog of products used by a site.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

- (void)deleteProductInCatalogWithProductCode:(NSString *)productCode catalogId:(NSInteger)catalogId completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end