## Word embedding 

learn word embeddings from a large text corpus. One nice thing also about this is you can now use relatively lower dimensional feature vectors. So rather than using a 10,000 dimensional one-hot vector, you can now instead use maybe a 300 dimensional dense vector.
one hot representation 
t-SAE use to visualize words. it takes 300-D data, and it maps it in a very non-linear way to a 2D space. t-SAE's is non-linear mapping. many of the parallelogram analogy relationships will be broken by t-SAE

the most commonly used similarity function is called cosine similarity.
one of the remarkable results about word embeddings is the generality of analogy relationships they can learn

## complex algorithms

word2vec 

problem with softmax classification : it is be quite slow, but it makes even harder to scale to larger vocabularies.  Its solution is using hierarchal softmax. In fact, the computational classifying tree like this scales like log of the vocab size rather than linear in vocab size.

skip-gram model because is taking as input one word like orange and then trying to predict some words skipping a few words from the left or the right side. 

negative sampling : 

In this algorithm is create a new supervised learning problem

GloVe word vectors

Sentiment classification: RNN for sentiment classification



 


