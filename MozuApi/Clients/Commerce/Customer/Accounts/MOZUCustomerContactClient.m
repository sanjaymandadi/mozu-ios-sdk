
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerContactClient.h"
#import "MOZUCustomerContactURLComponents.h"
#import "MozuCustomerContact.h"
#import "MozuCustomerContactCollection.h"


@implementation MOZUCustomerContactClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetAccountContactOperationWithAccountId:(NSInteger)accountId contactId:(NSInteger)contactId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCustomerContactURLComponents URLComponentsForGetAccountContactOperationWithAccountId:accountId contactId:contactId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerContact alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetAccountContactsOperationWithAccountId:(NSInteger)accountId startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCustomerContactURLComponents URLComponentsForGetAccountContactsOperationWithAccountId:accountId startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerContactCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddAccountContactOperationWithBody:(MOZUCustomerContact*)body accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCustomerContactURLComponents URLComponentsForAddAccountContactOperationWithAccountId:accountId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerContact alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateAccountContactOperationWithBody:(MOZUCustomerContact*)body accountId:(NSInteger)accountId contactId:(NSInteger)contactId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCustomerContactURLComponents URLComponentsForUpdateAccountContactOperationWithAccountId:accountId contactId:contactId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerContact alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteAccountContactOperationWithAccountId:(NSInteger)accountId contactId:(NSInteger)contactId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCustomerContactURLComponents URLComponentsForDeleteAccountContactOperationWithAccountId:accountId contactId:contactId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;
	return client;
}



@end