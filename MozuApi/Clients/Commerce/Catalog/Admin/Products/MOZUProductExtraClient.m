
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductExtraClient.h"
#import "MOZUProductExtraURLComponents.h"
#import "MozuProductExtra.h"


@implementation MOZUProductExtraClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetExtrasOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductExtraURLComponents URLComponentsForGetExtrasOperationWithProductCode:productCode];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUProductExtra arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetExtraOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductExtraURLComponents URLComponentsForGetExtraOperationWithProductCode:productCode attributeFQN:attributeFQN];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;

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

+(MOZUClient*)clientForAddExtraOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductExtra*)body productCode:(NSString *)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductExtraURLComponents URLComponentsForAddExtraOperationWithProductCode:productCode];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;
	client.userClaims = userClaims;

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

+(MOZUClient*)clientForUpdateExtraOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductExtra*)body productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductExtraURLComponents URLComponentsForUpdateExtraOperationWithProductCode:productCode attributeFQN:attributeFQN];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;
	client.userClaims = userClaims;

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

+(MOZUClient*)clientForDeleteExtraOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductExtraURLComponents URLComponentsForDeleteExtraOperationWithProductCode:productCode attributeFQN:attributeFQN];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.userClaims = userClaims;
	return client;
}



@end