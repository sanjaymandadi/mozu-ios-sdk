/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUWishlistURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getWishlists
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param q A list of search terms to use in the query when searching across wish list name. Separate multiple search terms with a space character.
@param qLimit The maximum number of search results to return in the response. You can limit any range between 1-100.
*/
+(MOZUURLComponents*)URLComponentsForGetWishlistsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter q:(NSString *)q qLimit:(NSNumber *)qLimit;

/**
Resource Url Components for getWishlist
@param wishlistId Unique identifier of the shopper wish list to retrieve.
*/
+(MOZUURLComponents*)URLComponentsForGetWishlistOperationWithWishlistId:(NSString *)wishlistId;

/**
Resource Url Components for getWishlistByName
@param customerAccountId The unique identifier of the customer account for which to retrieve wish lists.
@param wishlistName The name of the wish list to retrieve.
*/
+(MOZUURLComponents*)URLComponentsForGetWishlistByNameOperationWithCustomerAccountId:(NSInteger)customerAccountId wishlistName:(NSString *)wishlistName;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for createWishlist
*/
+(MOZUURLComponents*)URLComponentsForCreateWishlistOperation;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateWishlist
@param wishlistId Unique identifier of the shopper wish list to update.
*/
+(MOZUURLComponents*)URLComponentsForUpdateWishlistOperationWithWishlistId:(NSString *)wishlistId;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteWishlist
@param wishlistId Unique identifier of the wish list to delete.
*/
+(MOZUURLComponents*)URLComponentsForDeleteWishlistOperationWithWishlistId:(NSString *)wishlistId;



@end