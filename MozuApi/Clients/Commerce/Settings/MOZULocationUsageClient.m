
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZULocationUsageClient.h"
#import "MOZULocationUsageURLComponents.h"
#import "MozuLocationUsageCollection.h"
#import "MozuLocationUsage.h"


@implementation MOZULocationUsageClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetLocationUsagesOperationWithResponseFields:(NSString *)responseFields {
	id url = [MOZULocationUsageURLComponents URLComponentsForGetLocationUsagesOperationWithResponseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZULocationUsageCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetLocationUsageOperationWithCode:(NSString *)code responseFields:(NSString *)responseFields {
	id url = [MOZULocationUsageURLComponents URLComponentsForGetLocationUsageOperationWithCode:code responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZULocationUsage alloc] initWithString:jsonResult error:nil];
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

+ (MOZUClient *)clientForUpdateLocationUsageOperationWithBody:(MOZULocationUsage *)body code:(NSString *)code responseFields:(NSString *)responseFields {
	id url = [MOZULocationUsageURLComponents URLComponentsForUpdateLocationUsageOperationWithCode:code responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZULocationUsage alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end