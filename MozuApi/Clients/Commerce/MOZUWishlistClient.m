
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUWishlistClient.h"
#import "MOZUWishlistUrl.h"
#import "MozuWishlist.h"
#import "MozuWishlistCollection.h"


@implementation MOZUWishlistClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetWishlistsOperationWithWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter q:(NSString*)q qLimit:(NSNumber*)qLimit userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistURL URLForGetWishlistsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter q:q qLimit:qLimit];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlistCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetWishlistOperationWithWithWishlistId:(NSString*)wishlistId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistURL URLForGetWishlistOperationWithWishlistId:wishlistId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlist alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetWishlistByNameOperationWithWithCustomerAccountId:(NSInteger)customerAccountId wishlistName:(NSString*)wishlistName userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistURL URLForGetWishlistByNameOperationWithCustomerAccountId:customerAccountId wishlistName:wishlistName];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlist alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreateWishlistOperationWithWithWishlist:(MOZUWishlist*)wishlist userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistURL URLForCreateWishlistOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlist alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateWishlistOperationWithWithWishlist:(MOZUWishlist*)wishlist wishlistId:(NSString*)wishlistId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistURL URLForUpdateWishlistOperationWithWishlistId:wishlistId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlist alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteWishlistOperationWithWithWishlistId:(NSString*)wishlistId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistURL URLForDeleteWishlistOperationWithWishlistId:wishlistId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end