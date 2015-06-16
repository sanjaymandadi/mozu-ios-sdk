
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
@property(readwrite, nonatomic) MOZUDataViewMode dataViewMode;
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

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext dataViewMode:(MOZUDataViewMode) dataViewMode {
	if (self = [super init]) {
		self.apiContext = apiContext;
		self.dataViewMode = dataViewMode;
		return self;
	}
	else {
		return nil;
	}
}

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification {
	MOZUAPIContext* cloned = [self.apiContext cloneWith:apiContextModification];
	return [self initWithAPIContext:cloned dataViewMode:self.dataViewMode];
}

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of products that appear on the web storefront according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
@param sortBy 
@param startIndex 
*/

- (void)productsWithFilter:(NSString *)filter startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZURuntimeProductCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZURuntimeProductClient clientForGetProductsOperationWithDataViewMode:self.dataViewMode filter:filter startIndex:startIndex pageSize:pageSize sortBy:sortBy responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the active inventory level information associated with the product or location specified in the request.
@param locationCodes Array of location codes for which to retrieve product inventory information.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
*/

- (void)productInventoryWithProductCode:(NSString *)productCode locationCodes:(NSString *)locationCodes responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZURuntimeLocationInventoryCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZURuntimeProductClient clientForGetProductInventoryOperationWithDataViewMode:self.dataViewMode productCode:productCode locationCodes:locationCodes responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves information about a single product given its product code.
@param allowInactive If true, allow inactive categories to be retrieved in the category list response. If false, the categories retrieved will not include ones marked inactive.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
@param skipInventoryCheck If true, skip the process to validate inventory when creating this product reservation.
@param supressOutOfStock404 
@param variationProductCode Merchant-created code associated with a specific product variation. Variation product codes maintain an association with the base product code.
*/

- (void)productWithProductCode:(NSString *)productCode variationProductCode:(NSString *)variationProductCode allowInactive:(NSNumber *)allowInactive skipInventoryCheck:(NSNumber *)skipInventoryCheck supressOutOfStock404:(NSNumber *)supressOutOfStock404 responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZURuntimeProduct *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZURuntimeProductClient clientForGetProductOperationWithDataViewMode:self.dataViewMode productCode:productCode variationProductCode:variationProductCode allowInactive:allowInactive skipInventoryCheck:skipInventoryCheck supressOutOfStock404:supressOutOfStock404 responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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
Creates a new product configuration each time a shopper selects a product option value. After the shopper defines values for all required product options, the shopper can add the product configuration to a cart.
@param body For a product with shopper-configurable options, the properties of the product options selected by the shopper.
@param includeOptionDetails If true, the response returns details about the product. If false, returns a product summary such as the product name, price, and sale price.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
@param skipInventoryCheck If true, skip the process to validate inventory when creating this product reservation.
*/

- (void)configuredProductWithBody:(MOZUProductOptionSelections *)body productCode:(NSString *)productCode includeOptionDetails:(NSNumber *)includeOptionDetails skipInventoryCheck:(NSNumber *)skipInventoryCheck responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUConfiguredProduct *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZURuntimeProductClient clientForConfiguredProductOperationWithBody:body productCode:productCode includeOptionDetails:includeOptionDetails skipInventoryCheck:skipInventoryCheck responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Validate the final state of shopper-selected options.
@param body For a product with shopper-configurable options, the properties of the product options selected by the shopper.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields Use this field to include those fields which are not included by default.
@param skipInventoryCheck If true, skip the process to validate inventory when creating this product reservation.
*/

- (void)validateProductWithBody:(MOZUProductOptionSelections *)body productCode:(NSString *)productCode skipInventoryCheck:(NSNumber *)skipInventoryCheck responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUProductValidationSummary *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZURuntimeProductClient clientForValidateProductOperationWithBody:body productCode:productCode skipInventoryCheck:skipInventoryCheck responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Evaluates whether a collection of discounts specified in the request can be redeemed for the supplied product code.
@param body The discounts to evaluate for a specified product code at the time of purchase.
@param allowInactive If true, allow inactive categories to be retrieved in the category list response. If false, the categories retrieved will not include ones marked inactive.
@param customerAccountId The unique identifier of the customer account for which to retrieve wish lists.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
@param skipInventoryCheck If true, skip the process to validate inventory when creating this product reservation.
@param variationProductCode Merchant-created code associated with a specific product variation. Variation product codes maintain an association with the base product code.
*/

- (void)validateDiscountsWithBody:(MOZUDiscountSelections *)body productCode:(NSString *)productCode variationProductCode:(NSString *)variationProductCode customerAccountId:(NSNumber *)customerAccountId allowInactive:(NSNumber *)allowInactive skipInventoryCheck:(NSNumber *)skipInventoryCheck responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUDiscountValidationSummary *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZURuntimeProductClient clientForValidateDiscountsOperationWithBody:body productCode:productCode variationProductCode:variationProductCode customerAccountId:customerAccountId allowInactive:allowInactive skipInventoryCheck:skipInventoryCheck responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves product inventories for the storefront displayed products.
@param body Properties for the product location inventory provided for queries to locate products by their location.
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
*/

- (void)productInventoriesWithBody:(MOZULocationInventoryQuery *)body responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZURuntimeLocationInventoryCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZURuntimeProductClient clientForGetProductInventoriesOperationWithDataViewMode:self.dataViewMode body:body responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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