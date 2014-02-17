
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZULocationInventoryClient.h"
#import "MOZULocationInventoryUrl.h"
#import "MozuAdminLocationInventory.h"
#import "MozuAdminLocationInventoryCollection.h"


@implementation MOZULocationInventoryClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetLocationInventoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode locationCode:(NSString*)locationCode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZULocationInventoryURL URLForGetLocationInventoryOperationWithLocationCode:locationCode productCode:productCode];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminLocationInventory alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetLocationInventoriesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode locationCode:(NSString*)locationCode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZULocationInventoryURL URLForGetLocationInventoriesOperationWithLocationCode:locationCode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminLocationInventoryCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddLocationInventoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode locationInventoryList:(NSArray<MOZUAdminLocationInventory>*)locationInventoryList locationCode:(NSString*)locationCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZULocationInventoryURL URLForAddLocationInventoryOperationWithLocationCode:locationCode];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

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

+(MOZUClient*)clientForUpdateLocationInventoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode locationInventoryAdjustments:(NSArray<MOZULocationInventoryAdjustment>*)locationInventoryAdjustments locationCode:(NSString*)locationCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZULocationInventoryURL URLForUpdateLocationInventoryOperationWithLocationCode:locationCode];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

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

+(MOZUClient*)clientForDeleteLocationInventoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode locationCode:(NSString*)locationCode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZULocationInventoryURL URLForDeleteLocationInventoryOperationWithLocationCode:locationCode productCode:productCode];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end