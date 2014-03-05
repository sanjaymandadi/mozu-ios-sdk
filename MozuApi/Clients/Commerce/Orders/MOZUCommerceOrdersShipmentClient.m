
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCommerceOrdersShipmentClient.h"
#import "MOZUCommerceOrdersShipmentURLComponents.h"
#import "MozuShipment.h"
#import "MozuCommercePackage.h"
#import "MozuShippingRate.h"


@implementation MOZUCommerceOrdersShipmentClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetShipmentOperationWithOrderId:(NSString *)orderId shipmentId:(NSString *)shipmentId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceOrdersShipmentURLComponents URLComponentsForGetShipmentOperationWithOrderId:orderId shipmentId:shipmentId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUShipment alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetAvailableShipmentMethodsOperationWithOrderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceOrdersShipmentURLComponents URLComponentsForGetAvailableShipmentMethodsOperationWithOrderId:orderId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUShippingRate arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreatePackageShipmentsOperationWithBody:(NSString *)body orderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceOrdersShipmentURLComponents URLComponentsForCreatePackageShipmentsOperationWithOrderId:orderId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUCommercePackage arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
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

+(MOZUClient*)clientForDeleteShipmentOperationWithOrderId:(NSString *)orderId shipmentId:(NSString *)shipmentId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCommerceOrdersShipmentURLComponents URLComponentsForDeleteShipmentOperationWithOrderId:orderId shipmentId:shipmentId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;
	return client;
}



@end