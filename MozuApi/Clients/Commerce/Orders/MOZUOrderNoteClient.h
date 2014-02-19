
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
#import "MOZUAuthTicket.h"
#import "MOZUOrderNote.h"


@interface MOZUOrderNoteClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of all notes for an order.
@param orderId Unique identifier of the order.
*/

+(MOZUClient*)clientForGetOrderNotesOperationWithOrderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the details of a specific order note.
@param noteId Unique identifier of the order note to retrieve.
@param orderId Unique identifier of the order associated with the note.
*/

+(MOZUClient*)clientForGetOrderNoteOperationWithOrderId:(NSString*)orderId noteId:(NSString*)noteId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new merchant note for the specified order.
@param orderNote The alphanumeric text contained in the note. The maximum length is 256 characters.
@param orderId Unique identifier of the order for which to add a note.
*/

+(MOZUClient*)clientForCreateOrderNoteOperationWithBody:(MOZUOrderNote*)body orderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates a specific note for an order.
@param orderNote The content of the order note. The maximum length is 256 characters.
@param noteId Unique identifier of the order note.
@param orderId Unique identifier of the order.
*/

+(MOZUClient*)clientForUpdateOrderNoteOperationWithBody:(MOZUOrderNote*)body orderId:(NSString*)orderId noteId:(NSString*)noteId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the specified order note.
@param noteId Unique identifier of the order note to delete.
@param orderId Unique identifier of the order associated with the note.
*/

+(MOZUClient*)clientForDeleteOrderNoteOperationWithOrderId:(NSString*)orderId noteId:(NSString*)noteId userClaims:(MOZUUserAuthTicket*)userClaims;



@end