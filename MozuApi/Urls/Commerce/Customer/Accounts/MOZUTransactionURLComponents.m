/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUTransactionURLComponents.h"

@implementation MOZUTransactionURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForGetTransactionsOperationWithAccountId:(NSInteger)accountId {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/transactions";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURLComponents*)URLComponentsForAddTransactionOperationWithAccountId:(NSInteger)accountId {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/transactions";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
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

+(MOZUURLComponents*)URLComponentsForRemoveTransactionOperationWithAccountId:(NSInteger)accountId transactionId:(NSString *)transactionId {
	NSString* template = @"/api/commerce/customer/accounts/{accountId}/transactions/{transactionId}";
	NSDictionary* params = @{
		@"accountId" : @(accountId),
		@"transactionId" : transactionId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end