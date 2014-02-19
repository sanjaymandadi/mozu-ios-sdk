
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductVariationClient.h"
#import "MOZUProductVariationUrl.h"
#import "MozuProductVariation.h"
#import "MozuProductVariationPagedCollection.h"
#import "MozuProductVariationCollection.h"


@implementation MOZUProductVariationClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetProductVariationOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode variationKey:(NSString*)variationKey userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductVariationURL URLForGetProductVariationOperationWithProductCode:productCode variationKey:variationKey];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductVariation alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetProductVariationsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductVariationURL URLForGetProductVariationsOperationWithProductCode:productCode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductVariationPagedCollection alloc] initWithString:jsonResult error:nil];
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

+(MOZUClient*)clientForUpdateProductVariationsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductVariationCollection*)body productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductVariationURL URLForUpdateProductVariationsOperationWithProductCode:productCode];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductVariationCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForUpdateProductVariationOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductVariation*)body productCode:(NSString*)productCode variationKey:(NSString*)variationKey userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductVariationURL URLForUpdateProductVariationOperationWithProductCode:productCode variationKey:variationKey];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductVariation alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteProductVariationOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode variationKey:(NSString*)variationKey userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductVariationURL URLForDeleteProductVariationOperationWithProductCode:productCode variationKey:variationKey];
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