
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAuthTicket.h"
#import "MOZUShipment.h"
#import "MOZUCommercePackage.h"
#import "MOZUShippingRate.h"


@interface MOZUCommerceOrdersShipmentClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of the order shipment specified in the request.
@param orderId Unique identifier of the order associated with the shipment to retrieve.
@param shipmentId Unique identifier of the shipment to retrieve.
*/

+(MOZUClient*)clientForGetShipmentOperationWithOrderId:(NSString *)orderId shipmentId:(NSString *)shipmentId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the available shipping methods applicable to the order. Typically used to display available shipping method options on the checkout page.
@param orderId Unique identifier of the order for the available shipment methods being retrieved.
*/

+(MOZUClient*)clientForGetAvailableShipmentMethodsOperationWithOrderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a shipment from one or more package associated with an order and assign a label and tracking number to an order shipment.
@param body List of unique identifiers for each package associated with this shipment. Not all packages must belong to the same shipment.
@param orderId Unique identifier of the order for this shipment.
*/

+(MOZUClient*)clientForCreatePackageShipmentsOperationWithBody:(NSString *)body orderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket*)userClaims;


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

/**
Deletes the shipment specified in the request.
@param orderId Unique identifier of the order to cancel shipment.
@param shipmentId Unique identifier of the shipment to cancel.
*/

+(MOZUClient*)clientForDeleteShipmentOperationWithOrderId:(NSString *)orderId shipmentId:(NSString *)shipmentId userClaims:(MOZUUserAuthTicket*)userClaims;



@end