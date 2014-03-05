
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminProductsLocationInventoryClient.h"
#import "MOZUAdminProductsLocationInventoryURLComponents.h"
#import "MozuAdminLocationInventory.h"
#import "MozuAdminLocationInventoryCollection.h"


@implementation MOZUAdminProductsLocationInventoryClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetLocationInventoriesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductsLocationInventoryURLComponents URLComponentsForGetLocationInventoriesOperationWithProductCode:productCode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminLocationInventoryCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetLocationInventoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode locationCode:(NSString *)locationCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductsLocationInventoryURLComponents URLComponentsForGetLocationInventoryOperationWithProductCode:productCode locationCode:locationCode];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminLocationInventory alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddLocationInventoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUAdminLocationInventory>*)body productCode:(NSString *)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductsLocationInventoryURLComponents URLComponentsForAddLocationInventoryOperationWithProductCode:productCode];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUAdminLocationInventory arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateLocationInventoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZULocationInventoryAdjustment>*)body productCode:(NSString *)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductsLocationInventoryURLComponents URLComponentsForUpdateLocationInventoryOperationWithProductCode:productCode];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUAdminLocationInventory arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteLocationInventoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode locationCode:(NSString *)locationCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminProductsLocationInventoryURLComponents URLComponentsForDeleteLocationInventoryOperationWithProductCode:productCode locationCode:locationCode];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;
	return client;
}



@end