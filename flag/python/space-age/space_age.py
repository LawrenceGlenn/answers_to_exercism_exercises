class SpaceAge(object):

    Planet_Years = [(key, value * 31557600.0) for key, value in (
        ('earth', 1.0),
        ('mercury', 0.2408467),
        ('venus', 0.61519726),
        ('mars', 1.8808158),
        ('jupiter', 11.862615),
        ('saturn', 29.447498),
        ('uranus', 84.016846),
        ('neptune', 164.79132)
    )]
    
    def __init__(self, seconds):
        self.seconds = seconds
        for planet_name, year in self.Planet_Years:
            setattr(self, 'on_' + planet_name, self._years_on_planet(year))

    def _years_on_planet(self, value):
        return lambda value = value: round(self.seconds/value, 2)