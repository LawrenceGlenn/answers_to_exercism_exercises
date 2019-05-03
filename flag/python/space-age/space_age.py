class SpaceAge(object):
    Earth_Yr = 31557600.0
    Mercury_Yr = 0.2408467 * Earth_Yr
    Venus_Yr = 0.61519726 * Earth_Yr
    Mars_Yr = 1.8808158 * Earth_Yr
    Jupiter_Yr = 11.862615 * Earth_Yr
    Saturn_Yr = 29.447498 * Earth_Yr
    Uranus_Yr = 84.016846 * Earth_Yr
    Neptune_Yr = 164.79132 * Earth_Yr

    def __init__(self, seconds):
        self.seconds = seconds

    def on_earth(self):
        return round(self.seconds/self.Earth_Yr, 2)

    def on_mercury(self):
        return round(self.seconds/self.Mercury_Yr, 2)

    def on_venus(self):
        return round(self.seconds/self.Venus_Yr, 2)

    def on_mars(self):
        return round(self.seconds/self.Mars_Yr, 2)

    def on_jupiter(self):
        return round(self.seconds/self.Jupiter_Yr, 2)

    def on_saturn(self):
        return round(self.seconds/self.Saturn_Yr, 2)

    def on_uranus(self):
        return round(self.seconds/self.Uranus_Yr, 2)

    def on_neptune(self):
        return round(self.seconds/self.Neptune_Yr, 2)