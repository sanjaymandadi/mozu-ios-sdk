
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
#import "MOZUVisit.h"
#import "MOZUVisitCollection.h"


@interface MOZUVisitClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of customer visits according to any filter or sort criteria specified in the request.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

+(MOZUClient*)clientForGetVisitsOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the details of the customer visit specified in the request.
@param visitId Unique identifier of the customer visit to retrieve.
*/

+(MOZUClient*)clientForGetVisitOperationWithVisitId:(NSString*)visitId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new visit for the customer account specified in the request.
@param body Properties of the visit to add to the customer account.
*/

+(MOZUClient*)clientForAddVisitOperationWithBody:(MOZUVisit*)body userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more properties of a defined customer visit.
@param body Properties of the customer visit to update.
@param visitId Unique identifier of the customer visit to update.
*/

+(MOZUClient*)clientForUpdateVisitOperationWithBody:(MOZUVisit*)body visitId:(NSString*)visitId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end