
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
#import "MOZUAuthTicket.h"
#import "MOZURuntimeProduct.h"
#import "MOZURuntimeLocationInventoryCollection.h"
#import "MOZUProductOptionSelections.h"
#import "MOZUConfiguredProduct.h"
#import "MOZUProductValidationSummary.h"
#import "MOZURuntimeProductCollection.h"
#import "MOZUDiscountSelections.h"
#import "MOZUDiscountValidationSummary.h"


@interface MOZURuntimeProductClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of products that appear on the storefront according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy 
@param startIndex 
*/

+(MOZUClient*)clientForGetProductsOperationWithFilter:(NSString *)filter startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the active inventory level information associated with the product or location specified in the request.
@param locationCodes Array of location codes for which to retrieve product inventory information.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

+(MOZUClient*)clientForGetProductInventoryOperationWithProductCode:(NSString *)productCode locationCodes:(NSString *)locationCodes userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves information about a single product given its product code.
@param allowInactive If true, returns an inactive product as part of the query.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param skipInventoryCheck If true, skip the inventory validation process for the specified product.
@param variationProductCode Merchant-created code associated with a specific product variation. Variation product codes maintain an association with the base product code.
*/

+(MOZUClient*)clientForGetProductOperationWithProductCode:(NSString *)productCode variationProductCode:(NSString *)variationProductCode allowInactive:(NSNumber *)allowInactive skipInventoryCheck:(NSNumber *)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new product configuration each time a shopper selects a product option value. After the shopper defines values for all required product options, the shopper can add the product configuration to a cart.
@param body For a product with shopper-configurable options, the properties of the product options selected by the shopper.
@param includeOptionDetails If true, the response returns details about the product. If false, returns a product summary such as the product name, price, and sale price.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param skipInventoryCheck If true, skip the inventory validation process for the specified product.
*/

+(MOZUClient*)clientForConfiguredProductOperationWithBody:(MOZUProductOptionSelections*)body productCode:(NSString *)productCode includeOptionDetails:(NSNumber *)includeOptionDetails skipInventoryCheck:(NSNumber *)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Validate the final state of shopper-selected options.
@param body For a product with shopper-configurable options, the properties of the product options selected by the shopper.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param skipInventoryCheck If true, skip the inventory validation process for the specified product.
*/

+(MOZUClient*)clientForValidateProductOperationWithBody:(MOZUProductOptionSelections*)body productCode:(NSString *)productCode skipInventoryCheck:(NSNumber *)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims;

/**

@param body 
@param allowInactive 
@param customerAccountId 
@param productCode 
@param skipInventoryCheck 
@param variationProductCode 
*/

+(MOZUClient*)clientForValidateDiscountsOperationWithBody:(MOZUDiscountSelections*)body productCode:(NSString *)productCode variationProductCode:(NSString *)variationProductCode customerAccountId:(NSNumber *)customerAccountId allowInactive:(NSNumber *)allowInactive skipInventoryCheck:(NSNumber *)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end