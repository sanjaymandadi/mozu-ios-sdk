
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPaymentClient.h"
#import "MOZUPaymentURLComponents.h"
#import "MozuPaymentCollection.h"
#import "MozuOrder.h"
#import "MozuPayment.h"


@implementation MOZUPaymentClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetPaymentsOperationWithOrderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPaymentURLComponents URLComponentsForGetPaymentsOperationWithOrderId:orderId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUPaymentCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetPaymentOperationWithOrderId:(NSString *)orderId paymentId:(NSString *)paymentId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPaymentURLComponents URLComponentsForGetPaymentOperationWithOrderId:orderId paymentId:paymentId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUPayment alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetAvailablePaymentActionsOperationWithOrderId:(NSString *)orderId paymentId:(NSString *)paymentId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPaymentURLComponents URLComponentsForGetAvailablePaymentActionsOperationWithOrderId:orderId paymentId:paymentId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;
	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForPerformPaymentActionOperationWithBody:(MOZUPaymentAction*)body orderId:(NSString *)orderId paymentId:(NSString *)paymentId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPaymentURLComponents URLComponentsForPerformPaymentActionOperationWithOrderId:orderId paymentId:paymentId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForCreatePaymentActionOperationWithBody:(MOZUPaymentAction*)body orderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPaymentURLComponents URLComponentsForCreatePaymentActionOperationWithOrderId:orderId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


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