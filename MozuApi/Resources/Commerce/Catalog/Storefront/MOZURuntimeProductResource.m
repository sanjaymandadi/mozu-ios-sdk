
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZURuntimeProductClient.h"
#import "MOZURuntimeProductResource.h"


@interface MOZURuntimeProductResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZURuntimeProductResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}

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

-(void)productsWithFilter:(NSString*)filter startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZURuntimeProductCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZURuntimeProductClient clientForGetProductsOperationWithFilter:filter startIndex:startIndex pageSize:pageSize sortBy:sortBy userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the active inventory level information associated with the product or location specified in the request.
@param locationCodes Array of location codes for which to retrieve product inventory information.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

-(void)productInventoryWithProductCode:(NSString*)productCode locationCodes:(NSString*)locationCodes userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZURuntimeLocationInventoryCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZURuntimeProductClient clientForGetProductInventoryOperationWithProductCode:productCode locationCodes:locationCodes userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves information about a single product given its product code.
@param allowInactive If true, returns an inactive product as part of the query.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param skipInventoryCheck If true, skip the inventory validation process for the specified product.
@param variationProductCode Merchant-created code associated with a specific product variation. Variation product codes maintain an association with the base product code.
*/

-(void)productWithProductCode:(NSString*)productCode variationProductCode:(NSString*)variationProductCode allowInactive:(NSNumber*)allowInactive skipInventoryCheck:(NSNumber*)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZURuntimeProduct* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZURuntimeProductClient clientForGetProductOperationWithProductCode:productCode variationProductCode:variationProductCode allowInactive:allowInactive skipInventoryCheck:skipInventoryCheck userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new product selection. A create occurs each time a shopper selects a product option as they configure a product. Once all the required product options are configured, the product can be added to a cart.
@param productOptionSelections For a product with shopper-configurable options, the properties of the product options selected by the shopper.
@param includeOptionDetails If true, the response returns details about the product. If false, returns a product summary such as the product name, price, and sale price.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param skipInventoryCheck If true, skip the inventory validation process for the specified product.
*/

-(void)configuredProductWithBody:(MOZUProductOptionSelections*)body productCode:(NSString*)productCode includeOptionDetails:(NSNumber*)includeOptionDetails skipInventoryCheck:(NSNumber*)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUConfiguredProduct* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZURuntimeProductClient clientForConfiguredProductOperationWithProductOptionSelections:productOptionSelections productCode:productCode includeOptionDetails:includeOptionDetails skipInventoryCheck:skipInventoryCheck userClaims:userClaims];
	client.context = self.apiContext;
	if (body != nil) {
		client.body = body;
	}

	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Validate the final state of shopper-selected options.
@param productOptionSelections For a product with shopper-configurable options, the properties of the product options selected by the shopper.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param skipInventoryCheck If true, skip the inventory validation process for the specified product.
*/

-(void)validateProductWithBody:(MOZUProductOptionSelections*)body productCode:(NSString*)productCode skipInventoryCheck:(NSNumber*)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUProductValidationSummary* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZURuntimeProductClient clientForValidateProductOperationWithProductOptionSelections:productOptionSelections productCode:productCode skipInventoryCheck:skipInventoryCheck userClaims:userClaims];
	client.context = self.apiContext;
	if (body != nil) {
		client.body = body;
	}

	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


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