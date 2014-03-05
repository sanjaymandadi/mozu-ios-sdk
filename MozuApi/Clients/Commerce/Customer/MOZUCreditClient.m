
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCreditClient.h"
#import "MOZUCreditURLComponents.h"
#import "MozuCredit.h"
#import "MozuCreditCollection.h"


@implementation MOZUCreditClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetCreditsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCreditURLComponents URLComponentsForGetCreditsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCreditCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetCreditOperationWithCode:(NSString *)code userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCreditURLComponents URLComponentsForGetCreditOperationWithCode:code];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCredit alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddCreditOperationWithBody:(MOZUCredit*)body userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCreditURLComponents URLComponentsForAddCreditOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCredit alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateCreditOperationWithBody:(MOZUCredit*)body code:(NSString *)code userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCreditURLComponents URLComponentsForUpdateCreditOperationWithCode:code];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCredit alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForAssociateCreditToShopperOperationWithCode:(NSString *)code userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCreditURLComponents URLComponentsForAssociateCreditToShopperOperationWithCode:code];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCredit alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteCreditOperationWithCode:(NSString *)code userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCreditURLComponents URLComponentsForDeleteCreditOperationWithCode:code];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;
	return client;
}



@end