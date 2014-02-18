
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerCheckoutSettingsClient.h"
#import "MOZUCustomerCheckoutSettingsResource.h"


@interface MOZUCustomerCheckoutSettingsResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUCustomerCheckoutSettingsResource

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

-(void)customerCheckoutSettingsWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerCheckoutSettings* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerCheckoutSettingsClient clientForGetCustomerCheckoutSettingsOperationWithUserClaims:userClaims];
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


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

-(void)updateCustomerCheckoutSettingsWithCustomerCheckoutSettings:(MOZUCustomerCheckoutSettings*)customerCheckoutSettings userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerCheckoutSettings* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerCheckoutSettingsClient clientForUpdateCustomerCheckoutSettingsOperationWithCustomerCheckoutSettings:customerCheckoutSettings userClaims:userClaims];
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