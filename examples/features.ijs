NB. J evaluates expressions from right to left.
scores =: 72 91 83 64 100

NB. A tacit verb: sum divided by item count.
average =: +/ % #
smoutput 'scores: ', ": scores
smoutput 'average: ', ": average scores

NB. Boolean selection keeps only scores above the average.
above_average =: scores #~ scores > average scores
smoutput 'above average: ', ": above_average

NB. Reshape a range into a matrix, then sum each row with rank 1.
grid =: 3 3 $ i. 9
smoutput 'grid:'
smoutput grid
smoutput 'row sums: ', ": +/"1 grid

NB. Explicit verbs use y for their right argument.
describe =: 3 : 0
  smoutput 'item count: ', ": # y
)
describe scores