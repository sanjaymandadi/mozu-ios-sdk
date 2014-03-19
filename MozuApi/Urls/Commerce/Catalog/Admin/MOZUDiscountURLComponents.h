/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUDiscountURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getDiscounts
@param startIndex 
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy 
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
*/
+(MOZUURLComponents*)URLComponentsForGetDiscountsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter;

/**
Resource Url Components for getDiscount
@param discountId Unique identifier of the discount. System-supplied and read-only.
*/
+(MOZUURLComponents*)URLComponentsForGetDiscountOperationWithDiscountId:(NSInteger)discountId;

/**
Resource Url Components for getDiscountContent
@param discountId Unique identifier of the discount. System-supplied and read-only.
*/
+(MOZUURLComponents*)URLComponentsForGetDiscountContentOperationWithDiscountId:(NSInteger)discountId;

/**
Resource Url Components for generateRandomCoupon
*/
+(MOZUURLComponents*)URLComponentsForGenerateRandomCouponOperation;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for createDiscount
*/
+(MOZUURLComponents*)URLComponentsForCreateDiscountOperation;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateDiscount
@param discountId Unique identifier of the discount to update.
*/
+(MOZUURLComponents*)URLComponentsForUpdateDiscountOperationWithDiscountId:(NSInteger)discountId;

/**
Resource Url Components for updateDiscountContent
@param discountId Unique identifier of the discount. System-supplied and read-only.
*/
+(MOZUURLComponents*)URLComponentsForUpdateDiscountContentOperationWithDiscountId:(NSInteger)discountId;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteDiscount
@param discountId Unique identifier of the discount. System-supplied and read-only.
*/
+(MOZUURLComponents*)URLComponentsForDeleteDiscountOperationWithDiscountId:(NSInteger)discountId;



@end