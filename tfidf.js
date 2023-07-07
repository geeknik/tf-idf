const natural = require('natural');
const TfIdf = natural.TfIdf;
const tfidf = new TfIdf();

const documents = [
  'This is the first document.',
  'This document is the second document.',
  'And this is the third one.',
  'Is this the first document?'
];

documents.forEach(doc => {
  tfidf.addDocument(doc);
});

tfidf.listTerms(0 /* document index */).forEach(item => {
  console.log(`${item.term}: ${item.tfidf}`);
});
