
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerAttributeClient.h"
#import "MOZUCustomerAttributeResource.h"


@interface MOZUCustomerAttributeResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUCustomerAttributeResource

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

-(void)accountAttributeWithAccountId:(NSInteger)accountId attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAttribute* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAttributeClient clientForGetAccountAttributeOperationWithAccountId:accountId attributeFQN:attributeFQN userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)accountAttributesWithAccountId:(NSInteger)accountId startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAttributeCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAttributeClient clientForGetAccountAttributesOperationWithAccountId:accountId startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
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

-(void)addAccountAttributeWithCustomerAccountAttribute:(MOZUCustomerAttribute*)customerAccountAttribute accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAttribute* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAttributeClient clientForAddAccountAttributeOperationWithCustomerAccountAttribute:customerAccountAttribute accountId:accountId userClaims:userClaims];
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

-(void)updateAccountAttributeWithCustomerAccountAttribute:(MOZUCustomerAttribute*)customerAccountAttribute accountId:(NSInteger)accountId removeMissing:(NSNumber*)removeMissing userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAttribute* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAttributeClient clientForUpdateAccountAttributeOperationWithCustomerAccountAttribute:customerAccountAttribute accountId:accountId removeMissing:removeMissing userClaims:userClaims];
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



@end