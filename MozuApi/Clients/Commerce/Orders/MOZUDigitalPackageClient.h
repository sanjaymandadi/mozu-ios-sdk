
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
#import "MOZUDigitalPackage.h"


@interface MOZUDigitalPackageClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a collection of fulfillment options for digital packages. Options may include emailed files/links or provided links. 
@param digitalPackageId This parameter supplies package ID to get fulfillment actions for the digital package.
@param orderId Unique identifier of the order.
*/

+ (MOZUClient *)clientForGetAvailableDigitalPackageFulfillmentActionsOperationWithOrderId:(NSString *)orderId digitalPackageId:(NSString *)digitalPackageId;

/**
This operation retreives a digital package within an order and it requires two parameters: orderId and digitalPackageId.
@param digitalPackageId This parameter supplies package ID to get fulfillment actions for the digital package.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetDigitalPackageOperationWithOrderId:(NSString *)orderId digitalPackageId:(NSString *)digitalPackageId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Lets you apply a digital package to the order using the orderId and digitalPackage parameters.
@param body Lets you manage an order's digital packages, by applying a digital package to the order.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForCreateDigitalPackageOperationWithBody:(MOZUDigitalPackage *)body orderId:(NSString *)orderId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
This method operates on one digital package, specified by the id given. This method ensures that the digital package ID provided is in the order with the id given, and then updates the properties of that package with the properties of the one passed in using the ‘digitalpackage’ parameter.
@param body Lets you manage an order's digital packages, by applying a digital package to the order.
@param digitalPackageId This parameter supplies package ID to get fulfillment actions for the digital package.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForUpdateDigitalPackageOperationWithBody:(MOZUDigitalPackage *)body orderId:(NSString *)orderId digitalPackageId:(NSString *)digitalPackageId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
This operation deletes a digital package from an order. This operation requires three parameters: orderId, digitalPackageId, and digitalPackage.
@param digitalPackageId This parameter supplies package ID to get fulfillment actions for the digital package.
@param orderId Unique identifier of the order.
*/

+ (MOZUClient *)clientForDeleteDigitalPackageOperationWithOrderId:(NSString *)orderId digitalPackageId:(NSString *)digitalPackageId;



@end