
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUWishlistClient.h"
#import "MOZUWishlistURLComponents.h"
#import "MozuWishlist.h"
#import "MozuWishlistCollection.h"


@implementation MOZUWishlistClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetWishlistsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter q:(NSString *)q qLimit:(NSNumber *)qLimit userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistURLComponents URLComponentsForGetWishlistsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter q:q qLimit:qLimit];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlistCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetWishlistOperationWithWishlistId:(NSString *)wishlistId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistURLComponents URLComponentsForGetWishlistOperationWithWishlistId:wishlistId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlist alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetWishlistByNameOperationWithCustomerAccountId:(NSInteger)customerAccountId wishlistName:(NSString *)wishlistName userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistURLComponents URLComponentsForGetWishlistByNameOperationWithCustomerAccountId:customerAccountId wishlistName:wishlistName];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

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

+(MOZUClient*)clientForCreateWishlistOperationWithBody:(MOZUWishlist*)body userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistURLComponents URLComponentsForCreateWishlistOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

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

+(MOZUClient*)clientForUpdateWishlistOperationWithBody:(MOZUWishlist*)body wishlistId:(NSString *)wishlistId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistURLComponents URLComponentsForUpdateWishlistOperationWithWishlistId:wishlistId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

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

+(MOZUClient*)clientForDeleteWishlistOperationWithWishlistId:(NSString *)wishlistId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistURLComponents URLComponentsForDeleteWishlistOperationWithWishlistId:wishlistId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;
	return client;
}



@end