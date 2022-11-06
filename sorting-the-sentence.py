class Solution:
    def sortSentence(self, s: str) -> str:
        sentence = s.split()
        sortedSentence = [None] * len(sentence)
        
        for word in sentence:
            sortedSentence[int(word[-1]) - 1] = word[:-1]

        return " ".join(sortedSentence)
