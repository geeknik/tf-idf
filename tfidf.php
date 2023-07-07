<?php
require_once 'vendor/autoload.php';

use Phpml\FeatureExtraction\TokenCountVectorizer;
use Phpml\Tokenization\WhitespaceTokenizer;
use Phpml\FeatureExtraction\TfIdfTransformer;

$documents = [
    'This is the first document.',
    'This document is the second document.',
    'And this is the third one.',
    'Is this the first document?'
];

$vectorizer = new TokenCountVectorizer(new WhitespaceTokenizer());
$vectorizer->fit($documents);
$vectorizer->transform($documents);

$transformer = new TfIdfTransformer($documents);
$transformer->transform($documents);

print_r($documents);
