
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUOrderAttributeClient.h"
#import "MOZUOrderAttributeResource.h"


@interface MOZUOrderAttributeResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUOrderAttributeResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
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
Retrieves a list of the attributes defined for the order specified in the request.
@param orderId Unique identifier of the order for which to retrieve a list of defined attributes.
*/

-(void)orderAttributesWithOrderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUOrderAttribute>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUOrderAttributeClient clientForGetOrderAttributesOperationWithOrderId:orderId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
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
Applies a list of attributes to the order specified in the request and defines a value for each attribute in the request body.
@param orderAttributes The list of attributes to associate with the order, and the properties of each attribute to define for the order.
@param orderId Unique identifier of the order for which to assign the attributes.
*/

-(void)createOrderAttributesWithBody:(NSArray<MOZUOrderAttribute>*)body orderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUOrderAttribute>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUOrderAttributeClient clientForCreateOrderAttributesOperationWithOrderAttributes:orderAttributes orderId:orderId userClaims:userClaims];
	client.context = self.apiContext;
	if (body != nil) {
		client.body = body;
	}

	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more properties of an attribute defined for the order specified in the request.
@param orderAttributes List of order attributes to update, including the properties of each defined attribute in the list.
@param orderId Identifier of the order for which to update attributes.
@param removeMissing If true, the operation removes missing properties so that the updated order attributes will not show properties with a null value.
*/

-(void)updateOrderAttributesWithBody:(NSArray<MOZUOrderAttribute>*)body orderId:(NSString*)orderId removeMissing:(NSNumber*)removeMissing userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUOrderAttribute>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUOrderAttributeClient clientForUpdateOrderAttributesOperationWithOrderAttributes:orderAttributes orderId:orderId removeMissing:removeMissing userClaims:userClaims];
	client.context = self.apiContext;
	if (body != nil) {
		client.body = body;
	}

	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
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



@end