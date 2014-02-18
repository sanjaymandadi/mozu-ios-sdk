
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminLocationInventoryClient.h"
#import "MOZUAdminLocationInventoryResource.h"


@interface MOZUAdminLocationInventoryResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUAdminLocationInventoryResource

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

-(void)locationInventoryWithDataViewMode:(MOZUDataViewMode)dataViewMode locationCode:(NSString*)locationCode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminLocationInventory* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUAdminLocationInventoryClient clientForGetLocationInventoryOperationWithDataViewMode:dataViewMode locationCode:locationCode productCode:productCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)locationInventoriesWithDataViewMode:(MOZUDataViewMode)dataViewMode locationCode:(NSString*)locationCode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminLocationInventoryCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUAdminLocationInventoryClient clientForGetLocationInventoriesOperationWithDataViewMode:dataViewMode locationCode:locationCode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
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

-(void)addLocationInventoryWithDataViewMode:(MOZUDataViewMode)dataViewMode locationInventoryList:(NSArray<MOZUAdminLocationInventory>*)locationInventoryList locationCode:(NSString*)locationCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUAdminLocationInventory>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUAdminLocationInventoryClient clientForAddLocationInventoryOperationWithDataViewMode:dataViewMode locationInventoryList:locationInventoryList locationCode:locationCode userClaims:userClaims];
	client.context = self.apiContext;
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

-(void)updateLocationInventoryWithDataViewMode:(MOZUDataViewMode)dataViewMode locationInventoryAdjustments:(NSArray<MOZULocationInventoryAdjustment>*)locationInventoryAdjustments locationCode:(NSString*)locationCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUAdminLocationInventory>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUAdminLocationInventoryClient clientForUpdateLocationInventoryOperationWithDataViewMode:dataViewMode locationInventoryAdjustments:locationInventoryAdjustments locationCode:locationCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

-(void)deleteLocationInventoryWithDataViewMode:(MOZUDataViewMode)dataViewMode locationCode:(NSString*)locationCode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUAdminLocationInventoryClient clientForDeleteLocationInventoryOperationWithDataViewMode:dataViewMode locationCode:locationCode productCode:productCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end