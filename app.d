import ldc.attributes;

extern(C):
@nogc:
nothrow:

pragma(LDC_no_moduleinfo);

void _reset()
{
    int y = void;
    auto x = 42;
    y = x;

    while (true) {}
}



