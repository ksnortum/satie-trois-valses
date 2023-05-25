\version "2.24.0"

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

octaveUp = {
  \ottava #1
  \set Staff.ottavation = #"8"
}
octaveBack = \ottava #0

markupTitle = \markup {
  \column {
    \fill-line { \fontsize #3 \bold "Les Trois Valses Distinguées du Précieux Dégoûté" }
    \vspace #1
  }
}