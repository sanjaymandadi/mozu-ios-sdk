/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUBillingInfoURLComponents.h"

@implementation MOZUBillingInfoURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetBillingInfoOperationWithOrderId:(NSString *)orderId draft:(NSNumber *)draft responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/orders/{orderId}/billinginfo?draft={draft}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"orderId" : orderId,
		@"draft" : draft ? draft : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
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

+ (MOZUURLComponents *)URLComponentsForSetBillingInfoOperationWithOrderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/orders/{orderId}/billinginfo?updatemode={updateMode}&version={version}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"orderId" : orderId,
		@"updateMode" : updateMode ? updateMode : @"",
		@"version" : version ? version : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end