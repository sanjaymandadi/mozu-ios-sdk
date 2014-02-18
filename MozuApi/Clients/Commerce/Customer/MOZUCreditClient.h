
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
#import "MOZUCredit.h"
#import "MOZUCreditCollection.h"


@interface MOZUCreditClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of store credits applied to customer accounts, according any filter and sort criteria specified in the request.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

+(MOZUClient*)clientForGetCreditsOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the details of a store credit applied to a customer account.
@param code User-defined code that identifies the store credit to retrieve.
*/

+(MOZUClient*)clientForGetCreditOperationWithCode:(NSString*)code userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new store credit for the customer account specified in the request.
@param credit Properties of the store credit to create.
*/

+(MOZUClient*)clientForAddCreditOperationWithCredit:(MOZUCredit*)credit userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more properties of a defined store credit applied to a customer account.
@param credit Properties of the store credit to update.
@param code User-defined code of the store credit to update.
*/

+(MOZUClient*)clientForUpdateCreditOperationWithCredit:(MOZUCredit*)credit code:(NSString*)code userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Associates an unclaimed customer credit with the shopper user authenticated in the request header.
@param code The code that represents the credit to claim for the shopper.
*/

+(MOZUClient*)clientForAssociateCreditToShopperOperationWithCode:(NSString*)code userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a store credit previously applied to a customer account.
@param code User-defined code of the store credit to delete.
*/

+(MOZUClient*)clientForDeleteCreditOperationWithCode:(NSString*)code userClaims:(MOZUUserAuthTicket*)userClaims;



@end