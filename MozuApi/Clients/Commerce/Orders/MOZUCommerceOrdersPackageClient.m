
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCommerceOrdersPackageClient.h"
#import "MOZUCommerceOrdersPackageURLComponents.h"
#import "MozuCommercePackage.h"


@implementation MOZUCommerceOrdersPackageClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetPackageOperationWithOrderId:(NSString *)orderId packageId:(NSString *)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceOrdersPackageURLComponents URLComponentsForGetPackageOperationWithOrderId:orderId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCommercePackage alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetAvailablePackageFulfillmentActionsOperationWithOrderId:(NSString *)orderId packageId:(NSString *)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceOrdersPackageURLComponents URLComponentsForGetAvailablePackageFulfillmentActionsOperationWithOrderId:orderId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;
	return client;
}

+(MOZUClient*)clientForGetPackageLabelOperationWithOrderId:(NSString *)orderId packageId:(NSString *)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceOrdersPackageURLComponents URLComponentsForGetPackageLabelOperationWithOrderId:orderId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;
	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreatePackageOperationWithBody:(MOZUCommercePackage*)body orderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceOrdersPackageURLComponents URLComponentsForCreatePackageOperationWithOrderId:orderId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCommercePackage alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdatePackageOperationWithBody:(MOZUCommercePackage*)body orderId:(NSString *)orderId packageId:(NSString *)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceOrdersPackageURLComponents URLComponentsForUpdatePackageOperationWithOrderId:orderId packageId:packageId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCommercePackage alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeletePackageOperationWithOrderId:(NSString *)orderId packageId:(NSString *)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceOrdersPackageURLComponents URLComponentsForDeletePackageOperationWithOrderId:orderId packageId:packageId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;
	return client;
}



@end