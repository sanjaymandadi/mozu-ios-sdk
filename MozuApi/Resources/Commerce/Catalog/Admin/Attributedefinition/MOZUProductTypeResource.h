
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
#import "MOZUProductType.h"
#import "MOZUProductTypeCollection.h"


@interface MOZUProductTypeResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of product types according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. You can filter product type search results by any of its properties. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=Name+cont+shoes"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy 
@param startIndex 
*/

-(void)productTypesWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductTypeCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the details of the product type specified in the request.
@param productTypeId Identifier of the product type to retrieve.
*/

-(void)productTypeWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new product type based on the information supplied in the request.
@param body Properties of the product type to create.
*/

-(void)addProductTypeWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductType*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more properties of a product type.
@param body The details of the product type to update.
@param productTypeId Identifier of the product type to update.
*/

-(void)updateProductTypeWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductType*)body productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the product type by providing the product type ID.
@param productTypeId Identifier of the product type to delete.
*/

-(void)deleteProductTypeWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
;


@end