unsigned int parse_ascii_decimal(char *str,unsigned int strlen)
{
    unsigned int ret = 0, mul = 1;
    int i = strlen-1;
    while(i >= 0)
    {
        ret += (str[i] & 0xf) * mul;
        mul *= 10;
        --i;
    }
    return ret;
}
