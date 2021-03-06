/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUSoftAllocationURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getSoftAllocations
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a `pageSize `of 25, to get the 51st through the 75th items, use `startIndex=3`.
@param pageSize The number of results to display on each page when creating paged results from a query. The amount is divided and displayed on the `pageCount `amount of pages. The default is 20 and maximum value is 200 per page.
@param sortBy The element to sort the results by and the channel in which the results appear. Either ascending (a-z) or descending (z-a) channel. Optional.
@param filter A set of filter expressions representing the search parameters for a query: eq=equals, ne=not equals, gt=greater than, lt = less than or equals, gt = greater than or equals, lt = less than or equals, sw = starts with, or cont = contains. Optional.
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
*/
+ (MOZUURLComponents *)URLComponentsForGetSoftAllocationsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields;

/**
Resource Url Components for getSoftAllocation
@param softAllocationId 
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
*/
+ (MOZUURLComponents *)URLComponentsForGetSoftAllocationOperationWithSoftAllocationId:(NSInteger)softAllocationId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for addSoftAllocations
*/
+ (MOZUURLComponents *)URLComponentsForAddSoftAllocationsOperation;

/**
Resource Url Components for convertToProductReservation
*/
+ (MOZUURLComponents *)URLComponentsForConvertToProductReservationOperation;

/**
Resource Url Components for renewSoftAllocations
*/
+ (MOZUURLComponents *)URLComponentsForRenewSoftAllocationsOperation;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateSoftAllocations
*/
+ (MOZUURLComponents *)URLComponentsForUpdateSoftAllocationsOperation;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteSoftAllocation
@param softAllocationId 
*/
+ (MOZUURLComponents *)URLComponentsForDeleteSoftAllocationOperationWithSoftAllocationId:(NSInteger)softAllocationId;



@end