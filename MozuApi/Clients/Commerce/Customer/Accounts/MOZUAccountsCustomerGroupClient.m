
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAccountsCustomerGroupClient.h"
#import "MOZUAccountsCustomerGroupURLComponents.h"
#import "MozuCustomerGroup.h"
#import "MozuCustomerGroupCollection.h"


@implementation MOZUAccountsCustomerGroupClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetAccountGroupsOperationWithAccountId:(NSInteger)accountId startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAccountsCustomerGroupURLComponents URLComponentsForGetAccountGroupsOperationWithAccountId:accountId startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerGroupCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetAccountGroupOperationWithAccountId:(NSInteger)accountId groupId:(NSInteger)groupId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAccountsCustomerGroupURLComponents URLComponentsForGetAccountGroupOperationWithAccountId:accountId groupId:groupId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerGroup alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddAccountGroupOperationWithAccountId:(NSInteger)accountId groupId:(NSInteger)groupId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAccountsCustomerGroupURLComponents URLComponentsForAddAccountGroupOperationWithAccountId:accountId groupId:groupId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerGroup alloc] initWithString:jsonResult error:nil];
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

+(MOZUClient*)clientForDeleteAccountGroupOperationWithAccountId:(NSInteger)accountId groupId:(NSInteger)groupId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAccountsCustomerGroupURLComponents URLComponentsForDeleteAccountGroupOperationWithAccountId:accountId groupId:groupId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;
	return client;
}



@end