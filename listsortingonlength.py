import pandas as pd

# function to write input
def sortingfun(word):
    # Original list of strings
    word = ["apple", "banana", "kiwi", "orange", "grape"]

    # Sorting by length using the len() function as the key
    word.sort(key=len)

    # Displaying the sorted list
    print("Sorted by Length:", word)

    return word

def list_to_df(list):
    df = pd.DataFrame(list)
    return df

if __name__ == "__main__":
    words = ["apple", "banana", "kiwi", "orange", "grape"]
    sorted_list = list_to_df(sortingfun(words))
    print("Returning sorted list in dataframe format : ",sorted_list)