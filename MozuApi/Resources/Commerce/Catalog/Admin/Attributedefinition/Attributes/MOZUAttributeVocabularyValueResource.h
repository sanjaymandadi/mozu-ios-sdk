
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

#import "MOZUAuthTicket.h"
#import "MOZUAttributeVocabularyValue.h"


@interface MOZUAttributeVocabularyValueResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of attribute vocabulary values. To target a query, use one or several valid optional response groups.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/

-(void)attributeVocabularyValuesWithDataViewMode:(MOZUDataViewMode)dataViewMode attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUAttributeVocabularyValue>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieves an attribute vocabulary value by providing the attribute FQN and value.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param value The actual unique value of the attribute vocabulary to retrieve. A single attribute must have a unique value and match the attribute's data type. If a string value returns null, the system will generate a value. The actual string content displayed shoud be stored as "Content" and actual content is required for string values.
*/

-(void)attributeVocabularyValueWithDataViewMode:(MOZUDataViewMode)dataViewMode attributeFQN:(NSString*)attributeFQN value:(NSString*)value userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAttributeVocabularyValue* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds a new attribute vocabulary value.
@param attributeVocabularyValue The predefined vocabulary value to add to the attribute content.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/

-(void)addAttributeVocabularyValueWithDataViewMode:(MOZUDataViewMode)dataViewMode attributeVocabularyValue:(MOZUAttributeVocabularyValue*)attributeVocabularyValue attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAttributeVocabularyValue* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update existing vocabulary values for an attribute.
@param vocabularyValues The actual vocabulary values for the attribute being updated.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/

-(void)updateAttributeVocabularyValuesWithDataViewMode:(MOZUDataViewMode)dataViewMode vocabularyValues:(NSArray<MOZUAttributeVocabularyValue>*)vocabularyValues attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUAttributeVocabularyValue>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Updates existing attribute vocabulary values.
@param attributeVocabularyValue The predefined vocabulary value to add to the attribute content to update.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param value The actual unique value of the attribute vocabulary value to update. A single attribute must have a unique value and match the attribute's data type. If a string value returns null, the system will generate a value. The actual string content displayed shoud be stored as "Content" and actual content is required for string values.
*/

-(void)updateAttributeVocabularyValueWithDataViewMode:(MOZUDataViewMode)dataViewMode attributeVocabularyValue:(MOZUAttributeVocabularyValue*)attributeVocabularyValue attributeFQN:(NSString*)attributeFQN value:(NSString*)value userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAttributeVocabularyValue* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes an attribute's vocabulary value.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param value The actual unique value of the attribute vocabulary to delete. A single attribute must have a unique value and match the attribute's data type. If a string value returns null, the system will generate a value. The actual string content displayed shoud be stored as "Content" and actual content is required for string values.
*/

-(void)deleteAttributeVocabularyValueWithDataViewMode:(MOZUDataViewMode)dataViewMode attributeFQN:(NSString*)attributeFQN value:(NSString*)value userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;



@end