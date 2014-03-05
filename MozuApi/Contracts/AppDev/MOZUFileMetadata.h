
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
#import "MOZUAuditInfo.h"



@protocol MOZUFileMetadata
@end


/**
	Properties of the metadata associated with a file or subfolder in a development or release package associated with an application version.
*/
@interface MOZUFileMetadata : JSONModel<MOZUFileMetadata>

/**
Checksum function used to validate the local version of the file against the version on the server.
*/
@property(nonatomic) NSString * checkSum;

/**
Unique identifier of the file.
*/
@property(nonatomic) NSString * id;

/**
The path and file name that represents the file location.
*/
@property(nonatomic) NSString * path;

/**
The total size of the package file, in bytes.
*/
@property(nonatomic) long sizeInBytes;

/**
The type of file in the package.
*/
@property(nonatomic) NSString * type;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo* auditInfo;

@end

