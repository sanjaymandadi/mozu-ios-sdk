
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCreditAuditEntryClient.h"
#import "MOZUCreditAuditEntryUrl.h"
#import "MozuCreditAuditEntryCollection.h"


@implementation MOZUCreditAuditEntryClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetAuditEntriesOperationWithCode:(NSString*)code startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCreditAuditEntryURL URLForGetAuditEntriesOperationWithCode:code startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCreditAuditEntryCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//


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



@end