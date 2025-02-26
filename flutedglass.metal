#include <metal_stdlib>
#include <SwiftUI/SwiftUI.h>
using namespace metal;

[[ stitchable ]] half4 fractalGlassEffect(float2 position, SwiftUI::Layer l, float4 boundingbox, float progress, float amplitude) {

    float2 size = float2(boundingbox[2],boundingbox[3]);
    float2 uv = position / size;
    

    float2 newpos = uv;
    
    float frequency = 12.0;

    float displacement = sin(uv.x * frequency * 6.28 + progress) * amplitude;

    newpos.x += displacement;

    half4 sampledColor = l.sample(newpos * size);
    return sampledColor;
}
