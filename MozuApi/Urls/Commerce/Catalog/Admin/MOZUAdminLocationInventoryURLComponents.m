/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminLocationInventoryURLComponents.h"

@implementation MOZUAdminLocationInventoryURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForGetLocationInventoryOperationWithLocationCode:(NSString*)locationCode productCode:(NSString*)productCode {
	NSString* template = @"/api/commerce/catalog/admin/locationinventory/{locationCode}/{productCode}";
	NSDictionary* params = @{
		@"locationCode" : locationCode,
		@"productCode" : productCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetLocationInventoriesOperationWithLocationCode:(NSString*)locationCode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/catalog/admin/locationinventory/{locationCode}?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"locationCode" : locationCode,
		@"startIndex" : startIndex,
		@"pageSize" : pageSize,
		@"sortBy" : sortBy,
		@"filter" : filter,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForAddLocationInventoryOperationWithLocationCode:(NSString*)locationCode {
	NSString* template = @"/api/commerce/catalog/admin/locationinventory/{locationCode}";
	NSDictionary* params = @{
		@"locationCode" : locationCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForUpdateLocationInventoryOperationWithLocationCode:(NSString*)locationCode {
	NSString* template = @"/api/commerce/catalog/admin/locationinventory/{locationCode}";
	NSDictionary* params = @{
		@"locationCode" : locationCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForDeleteLocationInventoryOperationWithLocationCode:(NSString*)locationCode productCode:(NSString*)productCode {
	NSString* template = @"/api/commerce/catalog/admin/locationinventory/{locationCode}/{productCode}";
	NSDictionary* params = @{
		@"locationCode" : locationCode,
		@"productCode" : productCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end