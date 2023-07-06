use Text::TFIDF;

my @documents = (
    "This is the first document.",
    "This document is the second document.",
    "And this is the third one.",
    "Is this the first document?"
);

my $tfidf = Text::TFIDF->new(file => \@documents);

# Compute the TF-IDF value for a specific term and document
my $term = "example";
my $document_index = 0;
my $tfidf_value = $tfidf->TFIDF($documents[$document_index], $term);

print "TF-IDF value for term '$term' in document '$documents[$document_index]': $tfidf_value\n";
