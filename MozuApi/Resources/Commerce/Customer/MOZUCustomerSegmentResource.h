
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
#import "MOZUAPIContext.h"

#import "MOZUAuthTicket.h"
#import "MOZUCustomerSegment.h"
#import "MOZUCustomerSegmentCollection.h"


@interface MOZUCustomerSegmentResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of defined customer segments according to any filter and sort criteria.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

-(void)segmentsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerSegmentCollection* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves the details of the customer segment specified in the request. This operation does not return a list of the customer accounts associated with the segment.
@param identifier Unique identifier of the customer segment to retrieve.
*/

-(void)segmentWithIdentifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerSegment* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new customer segments. New customer segments do not have any associated customer accounts.
@param body Properties of the customer segment to add.
*/

-(void)addSegmentWithBody:(MOZUCustomerSegment*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerSegment* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
;
/**
Adds one or more customer accounts to a defined customer segment.
@param accountIds List of customer account IDs to add to the customer segment specified in the request.
@param identifier Unique identifier of the customer segment for which to add the associated customer accounts.
*/

-(void)addSegmentAccountsWithAccountIds:(NSInteger)accountIds identifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the details of the customer segment specified in the request.
@param body Properties of the customer segment to update.
@param identifier Unique identifier of the customer segment.
*/

-(void)updateSegmentWithBody:(MOZUCustomerSegment*)body identifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerSegment* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a customer segment specified by its unique identifier. Deleting a segment removes any customer account associations, but does not delete the customer account itself.
@param identifier Unique identifier of the customer segment to delete.
*/

-(void)deleteSegmentWithIdentifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
;
/**
Removes the specified customer accounts from a defined customer segment. You must create the request body to perform this operation.
@param accountIds List of customer account identifiers to remove from the specified customer segments.
@param identifier Unique identifier of the segment from which to remove the customer accounts.
*/

-(void)deleteSegmentAccountsWithAccountIds:(NSInteger)accountIds identifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
;


@end