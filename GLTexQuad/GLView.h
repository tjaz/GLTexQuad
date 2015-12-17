//
//  GLView.h
//  GLTexQuad
//
//  Created by Tjaz Hrovat on 16/12/15.
//  Copyright (c) 2015 hrovat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#include <OpenGLES/ES2/gl.h>
#include <OpenGLES/ES2/glext.h>

@interface GLView : UIView {
    GLuint _penguinTexture;
    EAGLContext* _context;
    CAEAGLLayer* _eaglLayer;
    GLuint _colorRenderBuffer;
    GLuint _depthRenderBuffer;
    GLuint _textureUniform;
}

+ (Class)layerClass;
- (GLuint)setupTexture:(NSString *)fileName;
- (void)setupLayer;
- (void)setupContext;
- (void)setupRenderBuffer;
- (void)setupFrameBuffer;
- (void)render:(CADisplayLink*)displayLink;
- (GLuint)compileShader:(NSString*)shaderName withType:(GLenum)shaderType;
- (void)compileShaders;
- (void)setupDisplayLink;


@end
