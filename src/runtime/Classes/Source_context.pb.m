// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Source_context.pb.h"
// @@protoc_insertion_point(imports)

@implementation SourceContextRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [SourceContextRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface SourceContext ()
@property (strong) NSString* fileName;
@end

@implementation SourceContext

- (BOOL) hasFileName {
  return !!hasFileName_;
}
- (void) setHasFileName:(BOOL) _value_ {
  hasFileName_ = !!_value_;
}
@synthesize fileName;
- (instancetype) init {
  if ((self = [super init])) {
    self.fileName = @"";
  }
  return self;
}
static SourceContext* defaultSourceContextInstance = nil;
+ (void) initialize {
  if (self == [SourceContext class]) {
    defaultSourceContextInstance = [[SourceContext alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultSourceContextInstance;
}
- (instancetype) defaultInstance {
  return defaultSourceContextInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasFileName) {
    [output writeString:1 value:self.fileName];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasFileName) {
    size_ += computeStringSize(1, self.fileName);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (SourceContext*) parseFromData:(NSData*) data {
  return (SourceContext*)[[[SourceContext builder] mergeFromData:data] build];
}
+ (SourceContext*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (SourceContext*)[[[SourceContext builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (SourceContext*) parseFromInputStream:(NSInputStream*) input {
  return (SourceContext*)[[[SourceContext builder] mergeFromInputStream:input] build];
}
+ (SourceContext*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (SourceContext*)[[[SourceContext builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (SourceContext*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (SourceContext*)[[[SourceContext builder] mergeFromCodedInputStream:input] build];
}
+ (SourceContext*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (SourceContext*)[[[SourceContext builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (SourceContextBuilder*) builder {
  return [[SourceContextBuilder alloc] init];
}
+ (SourceContextBuilder*) builderWithPrototype:(SourceContext*) prototype {
  return [[SourceContext builder] mergeFrom:prototype];
}
- (SourceContextBuilder*) builder {
  return [SourceContext builder];
}
- (SourceContextBuilder*) toBuilder {
  return [SourceContext builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasFileName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"fileName", self.fileName];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasFileName) {
    [dictionary setObject: self.fileName forKey: @"fileName"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[SourceContext class]]) {
    return NO;
  }
  SourceContext *otherMessage = other;
  return
      self.hasFileName == otherMessage.hasFileName &&
      (!self.hasFileName || [self.fileName isEqual:otherMessage.fileName]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasFileName) {
    hashCode = hashCode * 31 + [self.fileName hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface SourceContextBuilder()
@property (strong) SourceContext* resultSourceContext;
@end

@implementation SourceContextBuilder
@synthesize resultSourceContext;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultSourceContext = [[SourceContext alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultSourceContext;
}
- (SourceContextBuilder*) clear {
  self.resultSourceContext = [[SourceContext alloc] init];
  return self;
}
- (SourceContextBuilder*) clone {
  return [SourceContext builderWithPrototype:resultSourceContext];
}
- (SourceContext*) defaultInstance {
  return [SourceContext defaultInstance];
}
- (SourceContext*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (SourceContext*) buildPartial {
  SourceContext* returnMe = resultSourceContext;
  self.resultSourceContext = nil;
  return returnMe;
}
- (SourceContextBuilder*) mergeFrom:(SourceContext*) other {
  if (other == [SourceContext defaultInstance]) {
    return self;
  }
  if (other.hasFileName) {
    [self setFileName:other.fileName];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (SourceContextBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (SourceContextBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setFileName:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasFileName {
  return resultSourceContext.hasFileName;
}
- (NSString*) fileName {
  return resultSourceContext.fileName;
}
- (SourceContextBuilder*) setFileName:(NSString*) value {
  resultSourceContext.hasFileName = YES;
  resultSourceContext.fileName = value;
  return self;
}
- (SourceContextBuilder*) clearFileName {
  resultSourceContext.hasFileName = NO;
  resultSourceContext.fileName = @"";
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
