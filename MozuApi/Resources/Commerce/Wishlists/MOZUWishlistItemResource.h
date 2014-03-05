
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
#import "MOZUWishlistItem.h"
#import "MOZUWishlistItemCollection.h"
#import "MOZUWishlist.h"


@interface MOZUWishlistItemResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of an item in a shopper wish list.
@param wishlistId Unique identifier of the wish list item to retrieve.
@param wishlistItemId Unique identifier of the wish list associated with the item to retrieve.
*/

-(void)wishlistItemWithWishlistId:(NSString *)wishlistId wishlistItemId:(NSString *)wishlistItemId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUWishlistItem* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves a list of items in a shopper wish list according to any specified filter and sort criteria.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
@param wishlistId Unique identifier of the wish list associated with the items to retrieve.
*/

-(void)wishlistItemsWithWishlistId:(NSString *)wishlistId startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUWishlistItemCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieve a list of items in a customer wish list by supplying the wish list name.
@param customerAccountId The unique identifier of the customer account associated with the wish list.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
@param wishlistName The name of the wish list that contains the items to retrieve.
*/

-(void)wishlistItemsByWishlistNameWithCustomerAccountId:(NSInteger)customerAccountId wishlistName:(NSString *)wishlistName startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUWishlistItemCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds a product in a site's catalog as an item in a shopper wish list.
@param body Properties of the item to add to the wish list.
@param wishlistId Unique identifier of the wish list associated with the item to add.
*/

-(void)addItemToWishlistWithBody:(MOZUWishlistItem*)body wishlistId:(NSString *)wishlistId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUWishlistItem* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the details of an item in a shopper wish list.
@param body Properties of the shopper wish list item to update.
@param wishlistId Unique identifier of the wish list associated with the item to update.
@param wishlistItemId Unique identifier of the item in the shopper wish list to update.
*/

-(void)updateWishlistItemWithBody:(MOZUWishlistItem*)body wishlistId:(NSString *)wishlistId wishlistItemId:(NSString *)wishlistItemId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUWishlistItem* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Updates the quantity of an item in a shopper wish list.
@param quantity The quantity of the item in the wish list.
@param wishlistId Unique identifier of the wish list associated with the item quantity to update.
@param wishlistItemId Unique identifier of the item in the wish list to update quantity.
*/

-(void)updateWishlistItemQuantityWithWishlistId:(NSString *)wishlistId wishlistItemId:(NSString *)wishlistItemId quantity:(NSInteger)quantity userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUWishlistItem* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes all items associated with a shopper wish list.
@param wishlistId Unique identifier of the wish list associated with the items to remove.
*/

-(void)removeAllWishlistItemsWithWishlistId:(NSString *)wishlistId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUWishlist* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Removes an item from the wish list specified in the request.
@param wishlistId Unique identifier of the wish list associated with the item to remove.
@param wishlistItemId Unique identifier of the item to remove from the shopper wish list.
*/

-(void)deleteWishlistItemWithWishlistId:(NSString *)wishlistId wishlistItemId:(NSString *)wishlistItemId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
;


@end