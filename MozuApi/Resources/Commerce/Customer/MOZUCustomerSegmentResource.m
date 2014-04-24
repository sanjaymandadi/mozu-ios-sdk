
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerSegmentClient.h"
#import "MOZUCustomerSegmentResource.h"



@interface MOZUCustomerSegmentResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUCustomerSegmentResource


- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**

@param filter 
@param pageSize 
@param sortBy 
@param startIndex 
*/

- (void)segmentsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter completionHandler:(void(^)(MOZUCustomerSegmentCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerSegmentClient clientForGetSegmentsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**

@param identifier 
*/

- (void)segmentWithIdentifier:(NSInteger)identifier completionHandler:(void(^)(MOZUCustomerSegment *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerSegmentClient clientForGetSegmentOperationWithIdentifier:identifier];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**

@param body 
*/

- (void)addSegmentWithBody:(MOZUCustomerSegment *)body completionHandler:(void(^)(MOZUCustomerSegment *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerSegmentClient clientForAddSegmentOperationWithBody:body];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**

@param body 
@param identifier 
*/

- (void)addSegmentAccountsWithBody:(NSArray *)body identifier:(NSInteger)identifier completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerSegmentClient clientForAddSegmentAccountsOperationWithBody:body identifier:identifier];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**

@param body 
@param identifier 
*/

- (void)updateSegmentWithBody:(MOZUCustomerSegment *)body identifier:(NSInteger)identifier completionHandler:(void(^)(MOZUCustomerSegment *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerSegmentClient clientForUpdateSegmentOperationWithBody:body identifier:identifier];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**

@param identifier 
*/

- (void)deleteSegmentWithIdentifier:(NSInteger)identifier completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerSegmentClient clientForDeleteSegmentOperationWithIdentifier:identifier];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}

/**

@param body 
@param identifier 
*/

- (void)deleteSegmentAccountsWithBody:(NSArray *)body identifier:(NSInteger)identifier completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerSegmentClient clientForDeleteSegmentAccountsOperationWithBody:body identifier:identifier];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end