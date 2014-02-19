
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUApplicationClient.h"
#import "MOZUApplicationResource.h"


@interface MOZUApplicationResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUApplicationResource

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

/**
Retrieve the settings of a third-party application.
*/

-(void)thirdPartyGetApplicationWithUserClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUSiteSettingsApplication* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUApplicationClient clientForThirdPartyGetApplicationOperationWithUserClaims:userClaims];
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

/**
Initializes an application with the necessary configured settings.
@param body Properties of the application to update.
*/

-(void)thirdPartyUpdateApplicationWithBody:(MOZUSiteSettingsApplication*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUSiteSettingsApplication* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUApplicationClient clientForThirdPartyUpdateApplicationOperationWithBody:body userClaims:userClaims];
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