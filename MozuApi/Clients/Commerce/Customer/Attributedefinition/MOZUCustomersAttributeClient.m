
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomersAttributeClient.h"
#import "MOZUCustomersAttributeURLComponents.h"
#import "MozuExtensibleAttribute.h"
#import "MozuExtensibleAttributeCollection.h"
#import "MozuExtensibleAttributeVocabularyValue.h"


@implementation MOZUCustomersAttributeClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetAttributesOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter {
	id url = [MOZUCustomersAttributeURLComponents URLComponentsForGetAttributesOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUExtensibleAttributeCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetAttributeOperationWithAttributeFQN:(NSString *)attributeFQN {
	id url = [MOZUCustomersAttributeURLComponents URLComponentsForGetAttributeOperationWithAttributeFQN:attributeFQN];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUExtensibleAttribute alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetAttributeVocabularyValuesOperationWithAttributeFQN:(NSString *)attributeFQN {
	id url = [MOZUCustomersAttributeURLComponents URLComponentsForGetAttributeVocabularyValuesOperationWithAttributeFQN:attributeFQN];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray *jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUExtensibleAttributeVocabularyValue arrayOfModelsFromDictionaries:jsonAsArray error:nil];
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