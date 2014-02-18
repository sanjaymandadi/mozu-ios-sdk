
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductOptionClient.h"
#import "MOZUProductOptionResource.h"


@interface MOZUProductOptionResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUProductOptionResource

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

-(void)optionsWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUAdminProductOption>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductOptionClient clientForGetOptionsOperationWithDataViewMode:dataViewMode productCode:productCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)optionWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProductOption* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductOptionClient clientForGetOptionOperationWithDataViewMode:dataViewMode productCode:productCode attributeFQN:attributeFQN userClaims:userClaims];
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

-(void)addOptionWithDataViewMode:(MOZUDataViewMode)dataViewMode productOption:(MOZUProductOption*)productOption productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProductOption* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductOptionClient clientForAddOptionOperationWithDataViewMode:dataViewMode productOption:productOption productCode:productCode userClaims:userClaims];
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

-(void)updateOptionWithDataViewMode:(MOZUDataViewMode)dataViewMode productOption:(MOZUProductOption*)productOption productCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminProductOption* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductOptionClient clientForUpdateOptionOperationWithDataViewMode:dataViewMode productOption:productOption productCode:productCode attributeFQN:attributeFQN userClaims:userClaims];
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

-(void)deleteOptionWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUProductOptionClient clientForDeleteOptionOperationWithDataViewMode:dataViewMode productCode:productCode attributeFQN:attributeFQN userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end