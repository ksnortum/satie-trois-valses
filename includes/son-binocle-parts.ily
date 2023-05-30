\version "2.24.0"
\language "english"
\include "includes/shape-tie-column.ily"

% ------------------------------
% --- Changes from the score ---
% ------------------------------

% Bar 1: s'il vous plaît s/b š'il vous plaît
% Bar 31: rallentir s/b ralentir

% ----------------
% --- Preamble ---
% ----------------

markupSonBinocle = \markup {
  \column {
    \fill-line { \large \bold "II. Son Bincole" }
    \fill-line { "à Mademoiselle Linette CHALUPT" "" "Erik Satie (1866-1925)" }
    \line { \hspace #32 Nos vieilles moeurs intèrdisaient au jeune homme }
    \line { \hspace #30 pubère de se montrer nu dans le bain, et la pudeur }
    \line { \hspace #30 jetait ainsi de profondes racines dans les âmes. }
    \line { \hspace #28 "(CICERON: \"De la République\", traduction Victor POUPIN)." } 
    \vspace #1
  }
}

% -------------------
% --- Definitions ---
% -------------------

forceHShift = \once \override NoteColumn.force-hshift = 0.25
tweakPliez = \once \override TextScript.extra-offset = #'(0 . -4.25) 
tweakP = \once \override DynamicText.extra-offset = #'(-1.5 . -6) 
tweakPTwo = \once \override DynamicText.extra-offset = #'(-1 . -5)
tweakPp = \once \override DynamicText.extra-offset = #'(0 . -5)
tweakAmi = \once \override TextScript.extra-offset = #'(0 . 0)
tweakRal = \once \override TextScript.extra-offset = #'(0 . -4)
shapeOne = { \shape #'((0 . 0) (0 . 1) (0 . 4) (0 . 4)) Slur }
shapeTwo = \shapeTieColumn #' (
             (( (2 . 0.25) (1.25 . 0.5) (0.5 . 0.5) (0 . 0.25) ))
           )

% --- Text
nettoie = \markup { \upright "Il le nettoie tous les jours." }
binocole = \markup { \upright "C'est un binocle d'argent avec des verres en or fumé." }
dame = \markup { \upright "Il lui été donné par une belle Dame." }
beaux = \markup { \upright "Se sont de beaux souvenirs! Mais...:" }
ami = \markup { \upright "Une grande tristesse règne sur notre ami:" }
etui = \markup { \upright "Il a perdu l'étui de ce binocle!" }

% --- Musical terms
lent = \markup { \bold "Très lent, š'il vous plaît" }
pliez = "pliez doucement"
changez = "Ne changez pas de physionomie"
pale = "devenez pâle"
creux = "dans le creux de l'estomac."
ral = "ralentir et diminuer"
mg = "m.g."

% -------------
% --- Music ---
% -------------

highVoice = \relative {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 120
  \partial 4 d''4 -\lent (
  d2 b4 ~ |
  b2 a4 |
  b2 a4 |
  b2 a4 |
  b4 c d |
  b4 c d |
  b4 c d |
  b2 b4 |
  
  \barNumberCheck 9
  e2 b4 ~ |
  b2 a4 |
  gs2 fs4 |
  gs2 fs4 |
  gs2 fs4 |
  gs4 b2 |
  gs4 b2 |
  gs4 b2 |
  
  \barNumberCheck 17
  c4 a bf |
  c4 d e |
  c2 a4 |
  c2 ) b4\rest |
  b4\rest b,? ( cs |
  e2 cs4 |
  e2 cs4 |
  e2 ) b'4\rest |
  
  \barNumberCheck 25
  b4\rest b\rest e, ( |
  d4 g e |
  d4 g e |
  d2 ) \shapeOne d'4 ( |
  d2 b4 ~ |
  b2 a4 |
  \tempo 4 = 110
  b2 a4 |
  \tempo 4 = 100
  b2 a4 |
  \forceHShift b2. _~ |
  b2 ) s4 |
}

upperMiddle = \relative {
  \partial 4 g4\rest
  g4 <d' fs>2 |
  c4 <d g>2 |
  g,4 <d' fs>2 |
  c4 <d g>2 |
  g,4 <d' fs>2 |
  c4 <d g>2 |
  g,4 <d' fs>2 |
  c4 <d g>2 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 4 |
  g,4 <d' fs>2 |
  c4 <d g>2 |
  g,4 <d' fs>2 |
  c4 <d g>2 |
  \tag #'written { <fs'~ a~ cs^~ fs^~>2. \shapeTwo |
                   q2 s4 | }
  \tag #'played { <fs' a cs fs>2. ~ |
                  q2 s4 | }
}

lowerMiddle = \relative {
  % unused
}

lowVoice = \relative {
  \partial 4 s4
  s2. * 8 |
  
  \barNumberCheck 9
  e4 <b' ds>2 |
  a4 <b e>2 |
  e,4 <b' ds>2 |
  a4 <b e>2 |
  e,4 <b' ds>2 |
  a4 <b e>2 |
  e,4 <b' ds>2 |
  a4 <b e>2 |
  
  \barNumberCheck 17
  f?4 <c' e>2 |
  bf4 <c f>2 |
  f,4 <c' e>2 |
  bf4 <c f>2 |
  a,4 <e' gs>2 |
  d4 <e a>2 |
  a,4 <e' gs>2 |
  d4 <e a>2 |
  
  \barNumberCheck 25
  f,?4 <c'? e>2 |
  bf4 <c f>2 |
  f,4 <c' e>2 |
  bf4 <c f>2 |
  s2. * 5 |
  s2. |
}

% --- Dynamics, text, and musical terms

dynamicsHigh = {
  \partial 4 \tweakP s4 \p 
  s2. * 2 |
  s4 \tweakPliez s2 -\pliez |
  s2. * 5 |
  
  \barNumberCheck 9
  s2. -\binocole |
  s2. * 7 |
  
  \barNumberCheck 17
  s2. -\dame |
  s2. * 3 |
  s4 s -\beaux s |
  s2. * 3 |
  
  \barNumberCheck 25
  \tweakAmi s2 -\ami \tweakPp s4 \pp 
  s2. * 2 |
  s2 \tweakPTwo s4 \p 
  s2. |
  s2 \tweakRal s4 -\ral |
  s2. * 2 |
  s2. -\mg |
  s2. |
}

dynamics = {
  \partial 4 s4 |
  s4 s -\nettoie s |
  s2. * 7 |
  
  \barNumberCheck 9
  s2. -\changez |
  s2. * 7 |
  
  \barNumberCheck 17
  s2. -\pale |
  s2. * 4 |
  s2. -\creux |
  s2. * 2 |
  
  \barNumberCheck 25
  s2. * 4 |
  s4 s -\etui s |
}

% -----------------------
% --- Layout and MIDI ---
% -----------------------

global = {
  \key c \major
  \time 3/4
}

upper = {
  \global
  \clef treble
  <<
    \new Voice { \voiceOne \highVoice }
    \new Voice { \voiceTwo \upperMiddle }
  >>
}

lower = {
  \global
  \clef bass
  <<
    \new Voice { \voiceThree \lowerMiddle }
    \new Voice { \voiceFour \lowVoice }
  >>
}

musicSonBinocle = \score {
  \keepWithTag #'written
  \new PianoStaff <<
    \new Dynamics { \global \dynamicsHigh }
    \new Staff = "upper" \upper
    \new Dynamics { \global \dynamics }
    \new Staff = "lower" \lower
  >>
  \layout {
    \context {
      \Staff
      \override VerticalAxisGroup.staff-staff-spacing.padding = #5
    }
  }
}

midiSonBinocle = \book {
  \bookOutputName "son-binocle-music"
  \score {
    \keepWithTag #'played
    <<
      \new Staff ="upper" << \upper \dynamicsHigh \dynamics >>
      \new Staff = "lower" << \lower \dynamicsHigh \dynamics >>
    >>
    \midi {}
  }
}
