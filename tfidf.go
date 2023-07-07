package main

import (
	"fmt"
	"github.com/james-bowman/nlp"
	"github.com/james-bowman/sparse"
	"strings"
)

func main() {
	documents := []string{
		"This is the first document.",
		"This document is the second document.",
		"And this is the third one.",
		"Is this the first document?",
	}

	vectorizer := nlp.NewTfidfVectorizer()
	matrix, _ := vectorizer.FitTransform(strings.NewReader(strings.Join(documents, "\n")))

	fmt.Println(matrix.(*sparse.CSR).ToDense())
}
