/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCommerceReturnsShipmentURLComponents.h"

@implementation MOZUCommerceReturnsShipmentURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForGetShipmentOperationWithReturnId:(NSString *)returnId shipmentId:(NSString *)shipmentId {
	NSString* template = @"/api/commerce/returns/{returnId}/shipments/{shipmentId}";
	NSDictionary* params = @{
		@"returnId" : returnId,
		@"shipmentId" : shipmentId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForCreatePackageShipmentsOperationWithReturnId:(NSString *)returnId {
	NSString* template = @"/api/commerce/returns/{returnId}/shipments";
	NSDictionary* params = @{
		@"returnId" : returnId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


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

+(MOZUURLComponents*)URLComponentsForDeleteShipmentOperationWithReturnId:(NSString *)returnId shipmentId:(NSString *)shipmentId {
	NSString* template = @"/api/commerce/returns/{returnId}/shipments/{shipmentId}";
	NSDictionary* params = @{
		@"returnId" : returnId,
		@"shipmentId" : shipmentId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end