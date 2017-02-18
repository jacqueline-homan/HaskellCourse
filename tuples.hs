{- Lists can only be of elements that have the same type
but can be infinite in length. Lists are evaluated lazily -}

list1 = ["Little Willy Willy Won't Go Home", "Wig Wam Bam"]
headAndLength list1 = (head list1, length list1)

list2 = [3.14, 2.06, 7.0]
headAndLength2 list2 = (head list2, length list2)

{-Tuples have a fixed number of elements, so you
can't cons a tuple. You would use tuples when you
know in advance how many values are to be stored.
Unlike lists, tuples can contain values of 
different types -}
 
contacts = ("names", 2.5, 7)

myTuple = (("hello", 4), True)
headAndTail list = (head list, tail list)
fifthElem list = head(tail(tail(tail(tail list))))