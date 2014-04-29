
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminUserClient.h"
#import "MOZUAdminUserResource.h"



@implementation MOZUAdminUserResource


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of the specified administrator user account.
@param userId Unique identifier of the administrator account to retrieve.
*/

- (void)userWithUserId:(NSString *)userId completionHandler:(void(^)(MOZUUser *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAdminUserClient clientForGetUserOperationWithUserId:userId];
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves a list of the Mozu tenants or development stores for which the specified user has an assigned role.
@param userId Unique identifier of the user whose tenant scopes you want to retrieve.
*/

- (void)tenantScopesForUserWithUserId:(NSString *)userId completionHandler:(void(^)(MOZUTenantCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAdminUserClient clientForGetTenantScopesForUserOperationWithUserId:userId];
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end