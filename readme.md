Extends the ruby Array class to provide a method that solves the problem: "Find the smallest K elements in an array"

First, it uses the median of medians selection algorithm to find the kth smallest element, then it iterates through the original array one more time to push all elements that are smaller than our previous result into an array, which we return. The main goal of this exercise was to implement the algorithm in linear (On) time .
