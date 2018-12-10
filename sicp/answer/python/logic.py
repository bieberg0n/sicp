def and_(a, b):
    if a:
        if b:
            return True
    return False


def or_(a, b):
    if a:
        return True
    elif b:
        return True
    else:
        return False


def not_(a):
    if a:
        return False
    else:
        return True


print(and_(True, False))
print(and_(False, False))
print(and_(True, True))
print(or_(True, False))
