from __future__ import division


class Rational(object):
    def __init__(self, numer, denom):
        common_dom = gcd(numer, denom)
        self.numer = numer/common_dom
        self.denom = denom/common_dom


    def __eq__(self, other):
        return self.numer == other.numer and self.denom == other.denom

    def __repr__(self):
        return '{}/{}'.format(self.numer, self.denom)

    def __add__(self, other):
        return Rational(( self.numer * other.denom + self.denom * other.numer ), (self.denom * other.denom))

    def __sub__(self, other):
        return Rational(( self.numer * other.denom - self.denom * other.numer ), (self.denom * other.denom))

    def __mul__(self, other):
        return Rational((self.numer * other.numer), (self.denom * other.denom))

    def __truediv__(self, other):
        return Rational(( self.numer * other.denom), (self.denom * other.numer))

    def __abs__(self):
        return Rational(( abs(self.numer)), abs(self.denom))

    def __pow__(self, power):
        if power >=0:
            return Rational( (self.numer**power), (self.denom**power))
        return Rational( (self.denom**abs(power)), (self.numer**abs(power)))

    def __rpow__(self, base):
        if self.numer==0:
            return 1

        return (base**self.numer)**(1/self.denom)


def gcd(n,d):
    while d:
        n, d = d, n % d
    return n