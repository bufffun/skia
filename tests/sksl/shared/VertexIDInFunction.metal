#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
struct Inputs {
};
struct Outputs {
    float4 sk_Position [[position]];
    int id [[user(locn1)]];
    float sk_PointSize [[point_size]];
};
int fn_i(thread Globals& _globals) {
    return sk_VertexID;
}
vertex Outputs vertexMain(Inputs _in [[stage_in]], uint sk_VertexID [[vertex_id]], uint sk_InstanceID [[instance_id]]) {
    Outputs _out;
    (void)_out;
    _out.id = fn_i(_globals);
    return _out;
}