import stm32f103nucleo;

extern(C):
@nogc:
nothrow:

void main()
{
    int y = void;
    auto x = 42;
    y = x;

    while (true) {}
}
