/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUOrdersAppliedDiscountURLComponents.h"

@implementation MOZUOrdersAppliedDiscountURLComponents

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

+ (MOZUURLComponents *)URLComponentsForApplyCouponOperationWithOrderId:(NSString *)orderId couponCode:(NSString *)couponCode updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/orders/{orderId}/coupons/{couponCode}?updatemode={updateMode}&version={version}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"orderId" : orderId,
		@"couponCode" : couponCode,
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

+ (MOZUURLComponents *)URLComponentsForRemoveCouponOperationWithOrderId:(NSString *)orderId couponCode:(NSString *)couponCode updateMode:(NSString *)updateMode version:(NSString *)version {
	NSString *template = @"/api/commerce/orders/{orderId}/coupons/{couponcode}?updatemode={updateMode}&version={version}";
	NSDictionary *params = @{
		@"orderId" : orderId,
		@"couponCode" : couponCode,
		@"updateMode" : updateMode ? updateMode : @"",
		@"version" : version ? version : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForRemoveCouponsOperationWithOrderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version {
	NSString *template = @"/api/commerce/orders/{orderId}/coupons?updatemode={updateMode}&version={version}";
	NSDictionary *params = @{
		@"orderId" : orderId,
		@"updateMode" : updateMode ? updateMode : @"",
		@"version" : version ? version : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end