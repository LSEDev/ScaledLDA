# ST446 Course Project

This is the repository for the course project – please keep anything project related in this repository.

**Project Deadline: 30th April 2020, 5 pm London time.**

Please add the following information:

## Project title:

Distributed LDA: Balancing accuracy and efficiency on big data

## Summary 

As the quantity of relevant data increases, it becomes impossible for experts to sift through all this information. LDA puts forward a method to group data into relevant categories making it easier for experts to extract relevant information. The problem we face is the computational time taken to run LDA due to increasingly large datasets.

My aim for this is to model topics from the Covid-19 Open Research Dataset. I want to explore the computational complexity improvements of using a distributed system. The three main ideas I want to explore are:

1. Analysis of LDA and algorithms used to optimise results
2. Comparison between LDA on a single machines vs a distributed system
3. Improving accuracy of the LDA algorithm by implementing a distributed algorithm that does not exist on Spark and achieving this without too much computational cost (Gibbs sampling would be the algorithm to be implemented)


This project relates to week 9, topic modelling. 

## References
Online Learning for Latent Dirichlet Allocation: https://papers.nips.cc/paper/3902-online-learning-for-latent-dirichlet-allocation  
Collapsed Gibbs Sampling for Latent Dirichlet Allocation on Spark        https://pdfs.semanticscholar.org/0925/4f9f52a7738fa80b7db7215ab9c57d3d0fe7.pdf?_ga=2.222096536.1488756987.1585943526-80995354.1578049084  
Distributed Inference for Latent Dirichlet Allocation: https://www.ics.uci.edu/~asuncion/pubs/NIPS_07.pdf  
On Smoothing and Inference for Topic Models: https://arxiv.org/pdf/1205.2662.pdf  

## Notes

[MV - 8 April 2020] Approved. Sounds interesting. Good to see that you intend to consider various LDA topic modeling algorithms, and not only apply LDA algorithms that are already implemented in Spark. It would be nice to well understand, explain, implement, and evaluate different variants. I assume you will develop your own implementations in Spark. You may want to see how far you can go with regard to data volume - you may want to start working with a sample of data, and then try scale up to larger data size by using distributed computing in Spark on a cluster with multiple machines. 

---
## Marking criteria
![marking](./ST446-final-coursework-rubric.png)

## Candidate topics
[Project.md](https://github.com/lse-st446/lectures2020/blob/master/Projects.md)
