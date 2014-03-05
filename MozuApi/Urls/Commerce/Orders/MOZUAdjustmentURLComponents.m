/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdjustmentURLComponents.h"

@implementation MOZUAdjustmentURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//


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

+(MOZUURLComponents*)URLComponentsForApplyShippingAdjustmentOperationWithOrderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version {
	NSString* template = @"/api/commerce/orders/{orderId}/adjustment/shipping?updatemode={updateMode}&version={version}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"updateMode" : updateMode ? updateMode : @"",
		@"version" : version ? version : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForApplyAdjustmentOperationWithOrderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version {
	NSString* template = @"/api/commerce/orders/{orderId}/adjustment?updatemode={updateMode}&version={version}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"updateMode" : updateMode ? updateMode : @"",
		@"version" : version ? version : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForRemoveShippingAdjustmentOperationWithOrderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version {
	NSString* template = @"/api/commerce/orders/{orderId}/adjustment/shipping?updatemode={updateMode}&version={version}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"updateMode" : updateMode ? updateMode : @"",
		@"version" : version ? version : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForRemoveAdjustmentOperationWithOrderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version {
	NSString* template = @"/api/commerce/orders/{orderId}/adjustment?updatemode={updateMode}&version={version}";
	NSDictionary* params = @{
		@"orderId" : orderId,
		@"updateMode" : updateMode ? updateMode : @"",
		@"version" : version ? version : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end