
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUWishlistClient.h"
#import "MOZUWishlistResource.h"


@interface MOZUWishlistResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUWishlistResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

-(void)wishlistsWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter q:(NSString*)q qLimit:(NSNumber*)qLimit userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUWishlistCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUWishlistClient clientForGetWishlistsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter q:q qLimit:qLimit userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)wishlistWithWishlistId:(NSString*)wishlistId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUWishlist* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUWishlistClient clientForGetWishlistOperationWithWishlistId:wishlistId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)wishlistByNameWithCustomerAccountId:(NSInteger)customerAccountId wishlistName:(NSString*)wishlistName userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUWishlist* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUWishlistClient clientForGetWishlistByNameOperationWithCustomerAccountId:customerAccountId wishlistName:wishlistName userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

-(void)createWishlistWithWishlist:(MOZUWishlist*)wishlist userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUWishlist* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUWishlistClient clientForCreateWishlistOperationWithWishlist:wishlist userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

-(void)updateWishlistWithWishlist:(MOZUWishlist*)wishlist wishlistId:(NSString*)wishlistId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUWishlist* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUWishlistClient clientForUpdateWishlistOperationWithWishlist:wishlist wishlistId:wishlistId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

-(void)deleteWishlistWithWishlistId:(NSString*)wishlistId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUWishlistClient clientForDeleteWishlistOperationWithWishlistId:wishlistId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end