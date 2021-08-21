Train-Test spliting

Regularization

Regularization reduce overfitting.

if the regularization becomes very large, the parameters W very small, so Z will be relatively small

not to use dropout at test time

The effect of implementing dropout is that its strength the ways and similar to L2 regularization, it helps to prevent overfitting, but it turns out that dropout can formally be shown to be an adaptive form of L2 regularization, 

here's one other technique that is often used called early stopping. what early stopping does is, you will say well, it looks like your neural network was doing best around that iteration, so we just want to stop trading on your neural network halfway and take whatever value achieved this dev set error

Whereas if you normalize the features, then your cost function will on average look more symmetric


One of the problems of training neural network, especially very deep neural networks, is data vanishing and exploding gradients. What that means is that when you're training a very deep network your derivatives or your slopes can sometimes get either very, very big or very, very small, maybe even exponentially small, and this makes training difficult

