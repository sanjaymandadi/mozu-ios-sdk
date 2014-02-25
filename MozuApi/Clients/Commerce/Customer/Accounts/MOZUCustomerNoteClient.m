
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerNoteClient.h"
#import "MOZUCustomerNoteURLComponents.h"
#import "MozuCustomerNote.h"
#import "MozuCustomerNoteCollection.h"


@implementation MOZUCustomerNoteClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetAccountNoteOperationWithAccountId:(NSInteger)accountId noteId:(NSInteger)noteId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCustomerNoteURLComponents URLComponentsForGetAccountNoteOperationWithAccountId:accountId noteId:noteId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerNote alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetAccountNotesOperationWithAccountId:(NSInteger)accountId startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCustomerNoteURLComponents URLComponentsForGetAccountNotesOperationWithAccountId:accountId startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerNoteCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddAccountNoteOperationWithBody:(MOZUCustomerNote*)body accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCustomerNoteURLComponents URLComponentsForAddAccountNoteOperationWithAccountId:accountId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerNote alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateAccountNoteOperationWithBody:(MOZUCustomerNote*)body accountId:(NSInteger)accountId noteId:(NSInteger)noteId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCustomerNoteURLComponents URLComponentsForUpdateAccountNoteOperationWithAccountId:accountId noteId:noteId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerNote alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteAccountNoteOperationWithAccountId:(NSInteger)accountId noteId:(NSInteger)noteId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCustomerNoteURLComponents URLComponentsForDeleteAccountNoteOperationWithAccountId:accountId noteId:noteId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;
	return client;
}



@end