use ndarray::Array2;
use rust_tfidf::TfidfVectorizer;

fn main() {
    let documents = vec![
        "This is the first document.",
        "This document is the second document.",
        "And this is the third one.",
        "Is this the first document?",
    ];

    let vectorizer = TfidfVectorizer::new();
    let matrix: Array2<f64> = vectorizer.fit_transform(&documents);

    println!("{:?}", matrix);
}
