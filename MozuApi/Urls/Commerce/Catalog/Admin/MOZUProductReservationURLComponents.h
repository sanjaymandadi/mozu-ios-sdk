/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUProductReservationURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getProductReservations
@param startIndex 
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy 
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
*/
+(MOZUURLComponents*)URLComponentsForGetProductReservationsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter;

/**
Resource Url Components for getProductReservation
@param productReservationId Unique identifier of the product reservation.
*/
+(MOZUURLComponents*)URLComponentsForGetProductReservationOperationWithProductReservationId:(NSInteger)productReservationId;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for addProductReservations
@param skipInventoryCheck If true, skip the process to validate inventory when creating this product reservation.
*/
+(MOZUURLComponents*)URLComponentsForAddProductReservationsOperationWithSkipInventoryCheck:(NSNumber *)skipInventoryCheck;

/**
Resource Url Components for commitReservations
*/
+(MOZUURLComponents*)URLComponentsForCommitReservationsOperation;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateProductReservations
@param skipInventoryCheck If true, skip the inventory validation process when updating this product reservation.
*/
+(MOZUURLComponents*)URLComponentsForUpdateProductReservationsOperationWithSkipInventoryCheck:(NSNumber *)skipInventoryCheck;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteProductReservation
@param productReservationId Unique identifier of the reservation.
*/
+(MOZUURLComponents*)URLComponentsForDeleteProductReservationOperationWithProductReservationId:(NSInteger)productReservationId;



@end