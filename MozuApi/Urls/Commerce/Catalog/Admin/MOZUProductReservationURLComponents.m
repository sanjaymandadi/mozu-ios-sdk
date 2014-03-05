/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductReservationURLComponents.h"

@implementation MOZUProductReservationURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForGetProductReservationsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter {
	NSString* template = @"/api/commerce/catalog/admin/productreservations/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"startIndex" : startIndex ? startIndex : @"",
		@"pageSize" : pageSize ? pageSize : @"",
		@"sortBy" : sortBy ? sortBy : @"",
		@"filter" : filter ? filter : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForGetProductReservationOperationWithProductReservationId:(NSInteger)productReservationId {
	NSString* template = @"/api/commerce/catalog/admin/productreservations/{productReservationId}";
	NSDictionary* params = @{
		@"productReservationId" : @(productReservationId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForAddProductReservationsOperationWithSkipInventoryCheck:(NSNumber *)skipInventoryCheck {
	NSString* template = @"/api/commerce/catalog/admin/productreservations/?skipInventoryCheck={skipInventoryCheck}";
	NSDictionary* params = @{
		@"skipInventoryCheck" : skipInventoryCheck ? skipInventoryCheck : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+(MOZUURLComponents*)URLComponentsForCommitReservationsOperation {
	NSString* template = @"/api/commerce/catalog/admin/productreservations/commit";
	NSDictionary* params = nil;

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForUpdateProductReservationsOperationWithSkipInventoryCheck:(NSNumber *)skipInventoryCheck {
	NSString* template = @"/api/commerce/catalog/admin/productreservations/?skipInventoryCheck={skipInventoryCheck}";
	NSDictionary* params = @{
		@"skipInventoryCheck" : skipInventoryCheck ? skipInventoryCheck : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForDeleteProductReservationOperationWithProductReservationId:(NSInteger)productReservationId {
	NSString* template = @"/api/commerce/catalog/admin/productreservations/{productReservationId}";
	NSDictionary* params = @{
		@"productReservationId" : @(productReservationId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end