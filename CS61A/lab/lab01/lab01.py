def falling(n, k):
    """Compute the falling factorial of n to depth k.

    >>> falling(6, 3)  # 6 * 5 * 4
    120
    >>> falling(4, 3)  # 4 * 3 * 2
    24
    >>> falling(4, 1)  # 4
    4
    >>> falling(4, 0)
    1
    """
    "*** YOUR CODE HERE ***"
    result = 1
    for i in range(k):
        result *= n-i
    print(result)


def sum_digits(y):
    """Sum all the digits of y.

    >>> sum_digits(10) # 1 + 0 = 1
    1
    >>> sum_digits(4224) # 4 + 2 + 2 + 4 = 12
    12
    >>> sum_digits(1234567890)
    45
    >>> a = sum_digits(123) # make sure that you are using return rather than print
    >>> a
    6
    """
    "*** YOUR CODE HERE ***"
    result = 0
    i = 1
    while True:
        ten_pow = pow(10, i)
        if y / ten_pow >= 0.1:
            result += y % ten_pow // pow(10, i-1)
            i += 1
        else:
            return result


def double_eights(n):
    """Return true if n has two eights in a row.
    >>> double_eights(8)
    False
    >>> double_eights(88)
    True
    >>> double_eights(2882)
    True
    >>> double_eights(880088)
    True
    >>> double_eights(12345)
    False
    >>> double_eights(80808080)
    False
    """
    "*** YOUR CODE HERE ***"
    i = 1
    count = 0
    while True:
        ten_pow = pow(10, i)
        if n / ten_pow >= 0.1:
            a = n % ten_pow // pow(10, i-1)
            if a == 8:
                count += 1
            else:
                count = 0
            if count == 2:
                return True
            i += 1
        else:
            return False
