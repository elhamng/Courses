## Word embedding 

It’s a fact that computers don’t understand words, it works on numbers, vectors or matrices. So, we do need to convert our words to a vector. But how this can be possible. So, here the concept of Embedding Space comes. So, here we convert our words to vectors.
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

Machine translation as building a conditional language model  


Sequence to sequence model

We have encoder network is built as a RNN this could be a feeding the input french words one word at a time.  Then outputs a vector that represents the input sentence. After that, you can build a decoded network, then can be trained to output the translation one word at a time. 

machine translation as building a conditional language model. And this model allows you to estimate the probability of a sentence.

what you do not want is to sample outputs at random. y, that maximizes that conditional probability.

Greedy search does not work : 
the greedy approach, where you just pick the best first word, and then, after having picked the best first word, try to pick the best second word, and then, after that, try to pick the best third word, that approach doesn't really work

Beam search algorithm:  The first thing Beam search has to do is try to pick the first words of the English translation, that's going to operate. Beam Search algorithm has a parameter called B, which is called the beam width
find the pair of the first and second words that is most likely it's not just a second where is most likely that the pair of the first and second whereas the most likely and by the rules of conditional probability. if you increase the beam width B, Beam search will generally find better solutions. and Beam search will use up more memory. Beam search will run more slowly.

Length normalization is a small change to the beam search algorithm that can help you get much better results.  

error analysis can help you focus your time on doing the most useful work for your project

There is a neural network model, the sequence to sequence model. We shall just call this your RNN model. It's really an encoder and a decoder. And you have your beam search algorithm, which you're running with some beam width b. 

it's always tempting to increase the beam width that never hurts or pretty much never hurts.

error analysis using beam search:
you can try to figure out which of these two components is responsible for more errors. And only if you find that beam search is responsible for a lot of errors, then maybe is we're working hard to increase the beam width. Whereas in contrast, if you find that the RNN model is at fault, then you could do a deeper layer of analysis to try to figure out if you want to add regularization, or get more training data, or try a different network architecture, or something else. 

## Attention model :

attention model allows a neural network to pay attention to only part of an input sentence while it's generating a translation, Attention in neural networks is somewhat similar to what we find in humans. They focus on the high resolution in certain parts of the inputs while the rest of the input is in low resolution

![image](https://user-images.githubusercontent.com/64529936/128594089-1f26e461-a3f0-4de4-a70b-e6786488b9c2.png)

 CTC stands for Connection is Temporal Classification :
 
 
 One of the most exciting developments in deep learning has been the transformer Network, or sometimes called Transformers. The Transformer Neural Network is a novel architecture that aims to solve sequence-to-sequence tasks while handling long-range dependencies with ease.
 
 We have started this course with the RNN and found that it had some problems with vanishing gradients, which made it hard to capture long range dependencies and sequences. We then looked at the GRU and then the LSTM model as a way to resolve many of those problems where you may use of gates to control the flow of information. Long Short Term Memory- Special kind of RNN, specially made for solving vanishing gradient problems. They are capable of learning Long-Term Dependencies. 
 
 The first is self attention. The goal of self attention is, if you have, say, a sentence of five words will end up computing five representations for these five words, was going to write A1,A2,A3, A4 and A5. And this will be an attention based way of computing representations for all the words in your sentence in parallel.
 
 Then multi headed attention is basic A for loop over the self attention process. So you end up with multiple versions of these representations. 
 
 you have three values called the query, key, and value. These vectors are the key inputs to computing the attention value for each words.
 So what are these query key and value vectors supposed to do?
 Q3 may represent a question like, what's happening there?
 
the inner product between q^3 and k^1, between Query 3 and Key 1, and this will tell us how good is an answer where it's one to the question of what's happening in Africa.

Q = interesting questions about the words in a sentence, K = qualities of words given a Q, V = specific representations of words given a Q

The concept of Self-Attention is that: Given a word, its neighbouring words are used to compute its context by summing up the word values to map the Attention related to that given word.











 


