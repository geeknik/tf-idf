require 'tf-idf-similarity'

documents = [
  "This is the first document.",
  "This document is the second document.",
  "And this is the third one.",
  "Is this the first document?"
]

corpus = documents.map { |d| TfIdfSimilarity::Document.new(d) }
model = TfIdfSimilarity::TfIdfModel.new(corpus)

corpus.each do |doc|
  puts doc.terms.zip(model.tfidf_weights(doc)).to_h
end
