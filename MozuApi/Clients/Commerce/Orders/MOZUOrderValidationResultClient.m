
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUOrderValidationResultClient.h"
#import "MOZUOrderValidationResultURLComponents.h"
#import "MozuOrderValidationResult.h"


@implementation MOZUOrderValidationResultClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetValidationResultsOperationWithOrderId:(NSString *)orderId {
	id url = [MOZUOrderValidationResultURLComponents URLComponentsForGetValidationResultsOperationWithOrderId:orderId];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray *jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUOrderValidationResult arrayOfModelsFromDictionaries:jsonAsArray error:nil];
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

+ (MOZUClient *)clientForAddValidationResultOperationWithBody:(MOZUOrderValidationResult *)body orderId:(NSString *)orderId responseFields:(NSString *)responseFields {
	id url = [MOZUOrderValidationResultURLComponents URLComponentsForAddValidationResultOperationWithOrderId:orderId responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrderValidationResult alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end