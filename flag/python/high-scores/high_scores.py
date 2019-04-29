class HighScores(object):
    def __init__(self, scores):
        self.scores = scores

    def latest(self):
        tempScores = self.scores[:]
        return tempScores.pop()
        
    def personal_best(self):
        tempScores = self.scores[:]
        tempScores.sort()
        return tempScores.pop()
        
    def personal_top_three(self):
        tempScores = self.scores[:]
        tempScores.sort(reverse = True)
        return tempScores[0:3]