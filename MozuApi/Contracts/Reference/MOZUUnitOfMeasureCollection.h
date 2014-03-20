
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "MOZUUnitOfMeasure.h"



@protocol MOZUUnitOfMeasureCollection
@end


/**
	The paged collection of all units of measure that the system currently supports.
*/
@interface MOZUUnitOfMeasureCollection : JSONModel<MOZUUnitOfMeasureCollection>

/**
The number of results listed in the query collection, represented by a signed 64-bit (8-byte) integer. This value is system-supplied and read-only.
*/
@property(nonatomic) long totalCount;

/**
An array list of objects in the returned collection.
*/
@property(nonatomic) NSArray<MOZUUnitOfMeasure> *items;

@end

