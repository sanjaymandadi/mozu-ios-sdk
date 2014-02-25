
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUInStockNotificationSubscriptionClient.h"
#import "MOZUInStockNotificationSubscriptionURLComponents.h"
#import "MozuInStockNotificationSubscription.h"
#import "MozuInStockNotificationSubscriptionCollection.h"


@implementation MOZUInStockNotificationSubscriptionClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetInStockNotificationSubscriptionsOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUInStockNotificationSubscriptionURLComponents URLComponentsForGetInStockNotificationSubscriptionsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUInStockNotificationSubscriptionCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetInStockNotificationSubscriptionOperationWithIdentifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUInStockNotificationSubscriptionURLComponents URLComponentsForGetInStockNotificationSubscriptionOperationWithIdentifier:identifier];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUInStockNotificationSubscription alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddInStockNotificationSubscriptionOperationWithBody:(MOZUInStockNotificationSubscription*)body userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUInStockNotificationSubscriptionURLComponents URLComponentsForAddInStockNotificationSubscriptionOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUInStockNotificationSubscription alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteInStockNotificationSubscriptionOperationWithIdentifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUInStockNotificationSubscriptionURLComponents URLComponentsForDeleteInStockNotificationSubscriptionOperationWithIdentifier:identifier];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;
	return client;
}



@end