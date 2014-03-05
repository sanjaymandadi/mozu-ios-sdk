/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUUserDataURLComponents.h"

@implementation MOZUUserDataURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForGetDBValueOperationWithDbEntryQuery:(NSString *)dbEntryQuery {
	NSString* template = @"/api/platform/userdata/{*dbEntryQuery}";
	NSDictionary* params = @{
		@"dbEntryQuery" : dbEntryQuery,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForCreateDBValueOperationWithDbEntryQuery:(NSString *)dbEntryQuery {
	NSString* template = @"/api/platform/userdata/{*dbEntryQuery}";
	NSDictionary* params = @{
		@"dbEntryQuery" : dbEntryQuery,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForUpdateDBValueOperationWithDbEntryQuery:(NSString *)dbEntryQuery {
	NSString* template = @"/api/platform/userdata/{*dbEntryQuery}";
	NSDictionary* params = @{
		@"dbEntryQuery" : dbEntryQuery,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForDeleteDBValueOperationWithDbEntryQuery:(NSString *)dbEntryQuery {
	NSString* template = @"/api/platform/userdata/{*dbEntryQuery}";
	NSDictionary* params = @{
		@"dbEntryQuery" : dbEntryQuery,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end