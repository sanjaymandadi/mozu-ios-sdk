
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerSegmentClient.h"
#import "MOZUCustomerSegmentURLComponents.h"
#import "MozuCustomerSegment.h"
#import "MozuCustomerSegmentCollection.h"


@implementation MOZUCustomerSegmentClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetSegmentsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter {
	id url = [MOZUCustomerSegmentURLComponents URLComponentsForGetSegmentsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerSegmentCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetSegmentOperationWithIdentifier:(NSInteger)identifier {
	id url = [MOZUCustomerSegmentURLComponents URLComponentsForGetSegmentOperationWithIdentifier:identifier];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerSegment alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForAddSegmentOperationWithBody:(MOZUCustomerSegment *)body {
	id url = [MOZUCustomerSegmentURLComponents URLComponentsForAddSegmentOperation];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerSegment alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForAddSegmentAccountsOperationWithBody:(NSArray *)body identifier:(NSInteger)identifier {
	id url = [MOZUCustomerSegmentURLComponents URLComponentsForAddSegmentAccountsOperationWithIdentifier:identifier];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdateSegmentOperationWithBody:(MOZUCustomerSegment *)body identifier:(NSInteger)identifier {
	id url = [MOZUCustomerSegmentURLComponents URLComponentsForUpdateSegmentOperationWithIdentifier:identifier];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerSegment alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeleteSegmentOperationWithIdentifier:(NSInteger)identifier {
	id url = [MOZUCustomerSegmentURLComponents URLComponentsForDeleteSegmentOperationWithIdentifier:identifier];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}

+ (MOZUClient *)clientForDeleteSegmentAccountsOperationWithBody:(NSArray *)body identifier:(NSInteger)identifier {
	id url = [MOZUCustomerSegmentURLComponents URLComponentsForDeleteSegmentAccountsOperationWithIdentifier:identifier];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	return client;
}



@end