#!/bin/bash

#script that computes the observed coherence (pointwise mutual information, normalised pmi or log
#conditional probability)
#steps:
#1. sample the word counts of the topic words based on the reference corpus
#2. compute the observed coherence using the chosen metric

for METRIC in "pmi" "npmi" "lcp"
do
  #input
  topic_file="data/dib_online_topics.txt"
  #specfic to my file system - make the file path below refer to
  #the ref_corpus folder
  ref_corpus_dir="../../clean_data/ref_corpus"
  #output
  wordcount_file="wordcount/wc-oc_"$METRIC"_dib_online.txt"
  oc_file="results/topics-oc_"$METRIC"_dib_online.txt"

  #compute the word occurrences
  echo "Computing word occurrence..."
  python2 ComputeWordCount.py $topic_file $ref_corpus_dir > $wordcount_file

  #compute the topic observed coherence
  echo "Computing the observed coherence..."
  python2 ComputeObservedCoherence.py $topic_file $METRIC $wordcount_file > $oc_file
done
