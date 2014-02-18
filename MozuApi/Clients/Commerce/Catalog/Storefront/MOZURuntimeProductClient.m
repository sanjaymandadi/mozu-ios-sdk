
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZURuntimeProductClient.h"
#import "MOZURuntimeProductUrl.h"
#import "MozuRuntimeProduct.h"
#import "MozuRuntimeLocationInventoryCollection.h"
#import "MozuConfiguredProduct.h"
#import "MozuProductValidationSummary.h"
#import "MozuRuntimeProductCollection.h"


@implementation MOZURuntimeProductClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetProductsOperationWithFilter:(NSString*)filter startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZURuntimeProductURL URLForGetProductsOperationWithFilter:filter startIndex:startIndex pageSize:pageSize sortBy:sortBy];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZURuntimeProductCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetProductInventoryOperationWithProductCode:(NSString*)productCode locationCodes:(NSString*)locationCodes userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZURuntimeProductURL URLForGetProductInventoryOperationWithProductCode:productCode locationCodes:locationCodes];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZURuntimeLocationInventoryCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetProductOperationWithProductCode:(NSString*)productCode variationProductCode:(NSString*)variationProductCode allowInactive:(NSNumber*)allowInactive skipInventoryCheck:(NSNumber*)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZURuntimeProductURL URLForGetProductOperationWithProductCode:productCode variationProductCode:variationProductCode allowInactive:allowInactive skipInventoryCheck:skipInventoryCheck];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZURuntimeProduct alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForConfiguredProductOperationWithProductOptionSelections:(MOZUProductOptionSelections*)productOptionSelections productCode:(NSString*)productCode includeOptionDetails:(NSNumber*)includeOptionDetails skipInventoryCheck:(NSNumber*)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZURuntimeProductURL URLForConfiguredProductOperationWithProductCode:productCode includeOptionDetails:includeOptionDetails skipInventoryCheck:skipInventoryCheck];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUConfiguredProduct alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForValidateProductOperationWithProductOptionSelections:(MOZUProductOptionSelections*)productOptionSelections productCode:(NSString*)productCode skipInventoryCheck:(NSNumber*)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZURuntimeProductURL URLForValidateProductOperationWithProductCode:productCode skipInventoryCheck:skipInventoryCheck];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductValidationSummary alloc] initWithString:jsonResult error:nil];
	};

	return client;
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