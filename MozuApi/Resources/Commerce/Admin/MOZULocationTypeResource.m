
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZULocationTypeClient.h"
#import "MOZULocationTypeResource.h"


@interface MOZULocationTypeResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZULocationTypeResource

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

-(void)locationTypesWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZULocationType>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZULocationTypeClient clientForGetLocationTypesOperationWithUserClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)locationTypeWithWithLocationTypeCode:(NSString*)locationTypeCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocationType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZULocationTypeClient clientForGetLocationTypeOperationWithWithLocationTypeCode:locationTypeCode userClaims:userClaims];
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

-(void)addLocationTypeWithWithLocationType:(MOZULocationType*)locationType userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocationType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZULocationTypeClient clientForAddLocationTypeOperationWithWithLocationType:locationType userClaims:userClaims];
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

-(void)updateLocationTypeWithWithLocationType:(MOZULocationType*)locationType locationTypeCode:(NSString*)locationTypeCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULocationType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZULocationTypeClient clientForUpdateLocationTypeOperationWithWithLocationType:locationType locationTypeCode:locationTypeCode userClaims:userClaims];
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

-(void)deleteLocationTypeWithWithLocationTypeCode:(NSString*)locationTypeCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZULocationTypeClient clientForDeleteLocationTypeOperationWithWithLocationTypeCode:locationTypeCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end