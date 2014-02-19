
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductExtraClient.h"
#import "MOZUProductExtraUrl.h"
#import "MozuProductExtra.h"


@implementation MOZUProductExtraClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetExtrasOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductExtraURL URLForGetExtrasOperationWithProductCode:productCode];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUProductExtra arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetExtraOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductExtraURL URLForGetExtraOperationWithProductCode:productCode attributeFQN:attributeFQN];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductExtra alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddExtraOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductExtra*)body productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductExtraURL URLForAddExtraOperationWithProductCode:productCode];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductExtra alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateExtraOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductExtra*)body productCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductExtraURL URLForUpdateExtraOperationWithProductCode:productCode attributeFQN:attributeFQN];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductExtra alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteExtraOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductExtraURL URLForDeleteExtraOperationWithProductCode:productCode attributeFQN:attributeFQN];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end