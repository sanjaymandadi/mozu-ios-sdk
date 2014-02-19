
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

#import "MOZUAuthTicket.h"
#import "MOZUProductInCatalogInfo.h"
#import "MOZUAdminProduct.h"
#import "MOZUAdminProductCollection.h"


@interface MOZUAdminProductResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

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
@param q A list of product search terms to use in the query when searching across product code and product name. Separate multiple search terms with a space character.
@param qLimit The maximum number of search results to return in the response. You can limit any range between 1-100.
@param sortBy 
@param startIndex 
*/

-(void)productsWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter q:(NSString*)q qLimit:(NSNumber*)qLimit noCount:(NSNumber*)noCount userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProductCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves an existing product.
@param productCode Merchant-created code associated with the product such as a SKU. Max length: 30. Accepts a to z, A to Z, ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¹-ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ, 0 to 9, #, semicolon, commas, apostrophes, and Spaces, but no punctuation or other characters.
*/

-(void)productWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProduct* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves a product that is associated with one or more specific catalogs.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)productInCatalogsWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUProductInCatalogInfo>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the details of a product associated with a specific catalog.
@param catalogId The unique identifier of the catalog of products used by a site.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)productInCatalogWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode catalogId:(NSInteger)catalogId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductInCatalogInfo* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new product definition in the specified master catalog.
@param product Properties of the new product. You must supply values for the product code, product name, and price.
*/

-(void)addProductWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminProduct*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProduct* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Associates a new product defined in the master catalog with a specific catalog.
@param productInCatalogInfoIn Properties of the product to define for the specific catalog association.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)addProductInCatalogWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductInCatalogInfo*)body productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductInCatalogInfo* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more properties of a product definition in a master catalog.
@param product Properties of the product definition to update in the master catalog.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)updateProductWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminProduct*)body productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProduct* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Updates the properties of a product specific to each catalog associated with the product.
@param productInCatalogsIn Properties of the product to update for each associated catalog.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)updateProductInCatalogsWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductInCatalogInfo>*)body productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUProductInCatalogInfo>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Updates one or more properties of a product associated with a specific catalog.
@param productInCatalogInfoIn Properties of the product associated with the catalog specified in the request.
@param catalogId The unique identifier of the catalog of products used by a site.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)updateProductInCatalogWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductInCatalogInfo*)body productCode:(NSString*)productCode catalogId:(NSInteger)catalogId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductInCatalogInfo* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the specified product from a master catalog.
@param productCode 
*/

-(void)deleteProductWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Removes the product association defined for a specific catalog.
@param catalogId The unique identifier of the catalog of products used by a site.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)deleteProductInCatalogWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode catalogId:(NSInteger)catalogId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
;


@end