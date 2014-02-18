
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUUserDataClient.h"
#import "MOZUUserDataUrl.h"


@implementation MOZUUserDataClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetDBValueOperationWithDbEntryQuery:(NSString*)dbEntryQuery userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUUserDataURL URLForGetDBValueOperationWithDbEntryQuery:dbEntryQuery];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreateDBValueOperationWithValue:(NSString*)value dbEntryQuery:(NSString*)dbEntryQuery userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUUserDataURL URLForCreateDBValueOperationWithDbEntryQuery:dbEntryQuery];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateDBValueOperationWithValue:(NSString*)value dbEntryQuery:(NSString*)dbEntryQuery userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUUserDataURL URLForUpdateDBValueOperationWithDbEntryQuery:dbEntryQuery];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteDBValueOperationWithDbEntryQuery:(NSString*)dbEntryQuery userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUUserDataURL URLForDeleteDBValueOperationWithDbEntryQuery:dbEntryQuery];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end