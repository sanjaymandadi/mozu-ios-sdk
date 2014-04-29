
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAPIContext.h"

#import "MOZUCardCollection.h"
#import "MOZUCard.h"


@interface MOZUCardResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext *apiContext;

- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves all stored credit cards for the customer account.
@param accountId Unique identifier of the customer account.
*/

- (void)accountCardsWithAccountId:(NSInteger)accountId completionHandler:(void(^)(MOZUCardCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param accountId 
@param cardId 
*/

- (void)accountCardWithAccountId:(NSInteger)accountId cardId:(NSString *)cardId completionHandler:(void(^)(MOZUCard *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new credit card record and stores it for the customer account.
@param body Properties of the customer credit card to add to the account.
@param accountId Unique identifier of the customer account.
*/

- (void)addAccountCardWithBody:(MOZUCard *)body accountId:(NSInteger)accountId completionHandler:(void(^)(MOZUCard *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update one or more properties of a credit card defined for a customer account.
@param body Properties of the customer account credit card to update.
@param accountId Unique identifier of the customer account.
@param cardId 
*/

- (void)updateAccountCardWithBody:(MOZUCard *)body accountId:(NSInteger)accountId cardId:(NSString *)cardId completionHandler:(void(^)(MOZUCard *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes a stored credit card from a customer account.
@param accountId Unique identifier of the customer account.
@param cardId Unique identifier of the credit card to delete.
*/

- (void)deleteAccountCardWithAccountId:(NSInteger)accountId cardId:(NSString *)cardId completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end