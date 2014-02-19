
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
#import "MOZUProductReservation.h"
#import "MOZUProductReservationCollection.h"


@interface MOZUProductReservationClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of product reservations according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy 
@param startIndex 
*/

+(MOZUClient*)clientForGetProductReservationsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the details of a product reservation.
@param productReservationId Unique identifier of the product reservation.
*/

+(MOZUClient*)clientForGetProductReservationOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productReservationId:(NSInteger)productReservationId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new product reservation for a product. This action places a hold on the product inventory for the quantity specified during the ordering process.
@param productReservations Details of the product reservations to add.
@param skipInventoryCheck If true, skip the process to validate inventory when creating this product reservation.
*/

+(MOZUClient*)clientForAddProductReservationsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductReservation>*)body skipInventoryCheck:(NSNumber*)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Commits a product reservation to decrement the product's inventory by the quantity specified then release the reservation once the order process completed successfully.
@param productReservations List of unique identifiers of the reservations to commit.
*/

+(MOZUClient*)clientForCommitReservationsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductReservation>*)body userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates an existing product reservation for a product.
@param productReservations Properties of the product reservations to update.
@param skipInventoryCheck If true, skip the inventory validation process when updating this product reservation.
*/

+(MOZUClient*)clientForUpdateProductReservationsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductReservation>*)body skipInventoryCheck:(NSNumber*)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a product reservation. For example, delete a reservation when an order is not processed to return the product quantity back to inventory.
@param productReservationId Unique identifier of the reservation.
*/

+(MOZUClient*)clientForDeleteProductReservationOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productReservationId:(NSInteger)productReservationId userClaims:(MOZUUserAuthTicket*)userClaims;



@end