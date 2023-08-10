class Recommendations:
    def __init__(self, recommendations_dict):
        self.recommendations = recommendations_dict

    def getContentBasedRecs(self):
        return self.recommendations["content_based_recs"]
    
    def getUserBasedCFRecs(self):
        return self.recommendations["user_based_collaborative_recs"]

    def getItemBasedCFRecs(self):
        return self.recommendations["item_based_collaborative_recs"]
    
    def getRecommendations(self):
        return self.recommendations
    
    def clearNoise(self):
        for key, value in self.recommendations.items():
            self.recommendations[key] = [tuple_item for tuple_item in value if tuple_item[1] <= 5.0]