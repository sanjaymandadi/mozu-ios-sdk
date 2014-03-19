/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDiscountURLComponents.h"

@implementation MOZUDiscountURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForGetDiscountsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter {
	NSString* template = @"/api/commerce/catalog/admin/discounts/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"startIndex" : startIndex ? startIndex : @"",
		@"pageSize" : pageSize ? pageSize : @"",
		@"sortBy" : sortBy ? sortBy : @"",
		@"filter" : filter ? filter : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetDiscountOperationWithDiscountId:(NSInteger)discountId {
	NSString* template = @"/api/commerce/catalog/admin/discounts/{discountId}";
	NSDictionary* params = @{
		@"discountId" : @(discountId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetDiscountContentOperationWithDiscountId:(NSInteger)discountId {
	NSString* template = @"/api/commerce/catalog/admin/discounts/{discountId}/content";
	NSDictionary* params = @{
		@"discountId" : @(discountId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGenerateRandomCouponOperation {
	NSString* template = @"/api/commerce/catalog/admin/discounts/generate-random-coupon";
	NSDictionary* params = nil;

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForCreateDiscountOperation {
	NSString* template = @"/api/commerce/catalog/admin/discounts/";
	NSDictionary* params = nil;

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForUpdateDiscountOperationWithDiscountId:(NSInteger)discountId {
	NSString* template = @"/api/commerce/catalog/admin/discounts/{discountId}";
	NSDictionary* params = @{
		@"discountId" : @(discountId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForUpdateDiscountContentOperationWithDiscountId:(NSInteger)discountId {
	NSString* template = @"/api/commerce/catalog/admin/discounts/{discountId}/content";
	NSDictionary* params = @{
		@"discountId" : @(discountId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForDeleteDiscountOperationWithDiscountId:(NSInteger)discountId {
	NSString* template = @"/api/commerce/catalog/admin/discounts/{discountId}";
	NSDictionary* params = @{
		@"discountId" : @(discountId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end