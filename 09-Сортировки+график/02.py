from random import shuffle, choice
from time import time
import matplotlib.pyplot as pt
import multiprocessing



def bubble(llist):
    for i in range(len(llist) - 1):
        for j in range(len(llist) - i - 1):
            if llist[j] > llist[j + 1]:
                llist[j], llist[j + 1] = llist[j + 1], llist[j]
    return(llist)


def quicksort(llist):
   if len(llist) <= 1:
       return llist
   else:
       q = choice(llist)
       s_llist = []
       m_llist = []
       e_llist = []
       for n in llist:
           if n < q:
               s_llist.append(n)
           elif n > q:
               m_llist.append(n)
           else:
               e_llist.append(n)
       return quicksort(s_llist) + e_llist + quicksort(m_llist)


def time_sort(first, last, step):
    res_bubble = []
    res_quicksort = []
    count = []
    for n in range(first, last, step):
        count.append(n)
        values = [i for i in range(n)]
        shuffle(values)

        t = time()
        bubble(values)
        t_bubble = time() - t
        res_bubble.append(t_bubble)

        t = time()
        quicksort(values)
        t_quicksort = time() - t
        res_quicksort.append(t_quicksort)
    return res_bubble, res_quicksort, count


def make_graph():
    process = multiprocessing.Process(target=time_sort, args=[200, 4000, 50])
    res1_bubble, res1_quicksort, count1 = process.start()
    process = multiprocessing.Process(target=time_sort, args=[4000, 5200, 50])
    res2_bubble, res2_quicksort, count2 = process.start()
    process = multiprocessing.Process(target=time_sort, args=[5200, 6001, 50])
    res3_bubble, res3_quicksort, count3 = process.start()

    res_bubble = res1_bubble + res2_bubble + res3_bubble
    res_quicksort = res1_quicksort + res2_quicksort + res3_quicksort
    count = count1 + count2 + count3
    pt.plot(count, res_bubble, color='orange')
    pt.plot(count, res_quicksort, color='pink')
    pt.title('Comparison of bubble and quicksort')
    pt.show()



make_graph()