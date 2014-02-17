
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDocumentTreeClient.h"
#import "MOZUDocumentTreeUrl.h"
#import "MozuDocument.h"


@implementation MOZUDocumentTreeClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetTreeDocumentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName documentName:(NSString*)documentName userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDocumentTreeURL URLForGetTreeDocumentOperationWithDocumentListName:documentListName documentName:documentName];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocument alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetTreeDocumentContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName documentName:(NSString*)documentName userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDocumentTreeURL URLForGetTreeDocumentContentOperationWithDocumentListName:documentListName documentName:documentName];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

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


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateTreeDocumentContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode stream:(NSInputStream*)stream documentListName:(NSString*)documentListName documentName:(NSString*)documentName userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDocumentTreeURL URLForUpdateTreeDocumentContentOperationWithDocumentListName:documentListName documentName:documentName];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

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

+(MOZUClient*)clientForDeleteTreeDocumentContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode stream:(NSInputStream*)stream documentListName:(NSString*)documentListName documentName:(NSString*)documentName userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDocumentTreeURL URLForDeleteTreeDocumentContentOperationWithDocumentListName:documentListName documentName:documentName];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:kX_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end