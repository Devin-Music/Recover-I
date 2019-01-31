\version "2.18.2"

\header {
  title = "Recover: I."
  composer = "Devin Gonzales"
  tagline = ##f
  copyright = "2018"
}

global = {
  \key ees \major
  \time 4/4
  \tempo 4 = 100
}

scoreAViolinI = \relative c'' {
  \global
  g'1~ \mf |%m1
  g2 ees4 d |%m2
  bes1 |%m3
  c4. d8 ees4. f8 |%m4
  g1~ |%m5
  g2 ees4 des |%m6
  bes1 |%m7
  aes2 \mp g |%m8
  ees4-. \p r4 bes'-. g-. |%m9
  c4-. r4 bes-. g-. |%m10
  bes4. \cresc ees8 ees4. d8 |%m11
  d4. bes'8 aes4. g8 \! \f |%m12
  f8 d aes bes ees c g bes |%m13
  d8 bes f g c aes ees f |%m14
  f2 \mp bes |%m15
  f1 |%m16
  ees4 f aes bes |%m17
  f1 |%m18
  ees2. c4 |%m19
  d4. ees8 c2 |%m20
  dis2 f4 bes |%m21
  aes1 |%m22
  aes2 \dim bes |%m23
  c1~ |%m24
  c1 \! |%m25
}

scoreAViolinII = \relative c'' {
  \global
  bes1~ \mf |%m1
  bes1 |%m2
  ees,1~ |%m3
  ees1 |%m4
  g1 |%m5
  bes1 |%m6
  aes2 g |%m7
  f2 \mp d |%m8
  g4-. \p r4 ees-. ees-. |%m9
  ees4-. r4 g-. ees-. |%m10
  aes4-. f-. d-. g-. |%m11
  d4-. \mf r4 ees-. f-. |%m12
  d4. c8 ees4. d8 |%m13
  bes4. c8 ees4. g8 |%m14
  bes2. \mp aes4 |%m15
  f1 |%m16
  bes2. g4 |%m17
  f2 aes |%m18
  g2 g~ |%m19
  g1 |%m20
  g2. ees4 |%m21
  f2. ees4 |%m22
  f1 \dim |%m23
  ees1~ |%m24
  ees1 \! |%m25 
  
}

scoreAViola = \relative c' {
  \global
  r1 |%m1
  bes1 |%m2 
  d1 |%m3
  bes4. c8 bes4. g8 |%m4
    \break
  aes1 |%m5 
  c4 aes g aes |%m6  
  c2. g4 |%m7
  aes2 \mp f |%m8
    \break
  d4-. \p g8 \cresc aes c aes ees f |%m9
  ees'8 c g aes d bes ees, g |%m10
  f8 aes d c d bes ees c |%m11
    \break
  f,4-. \! \mf r4 c'-. aes-. |%m12
  r8 bes8 f aes c bes bes4 |%m13
  r8 bes d aes bes c ees4 |%m14
    \break
  d1~ \mp |%m15
  d2 c |%m16
  d1~ |%m17
  d2 c~ |%m18
    \break
  c2 dis |%m19
  aes2 c4 bes |%m20
  bes1 |%m21
  d2 c~ |%m22
    \break
  c2 \dim bes |%m23
  c1~ |%m24
  c1 \! |%m25
}

scoreACello = \relative c {
  \global
  aes1 \mf |%1
  bes1 |%m2
  c1 |%m3
  bes1 |%m4
  aes1 |%m5
  bes1 |%m6
  g4 aes bes ees |%m7
  d2 \mp g, |%m8
  c4-. \p bes-. ees-. bes-. |%m9
  aes4-. r4 ees'-. bes-. |%m10
  f4-. aes-. c-. ees-. |%m11
  c8 \f aes ees f bes g d ees |%m12
  c'8 aes bes d ees c d bes |%m13
  c8 aes bes g aes f ees g |%m14
  bes1 \mp |%m15
  aes |%m16
  bes |%m17
  c2 aes4 g |%m18
  aes2 g4 aes4 |%m19
  bes2. aes4 |%m20
  g4 f g aes |%m21
  bes2 aes4 g |%m22
  f1 \dim  |%m23
  c1~ |%m24
  c1 \! \bar "|." |%m25
  
  
  
}

scoreAViolinIPart = \new Staff \with {
  instrumentName = "Violin I"
  midiInstrument = "violin"
} \scoreAViolinI

scoreAViolinIIPart = \new Staff \with {
  instrumentName = "Violin II"
  midiInstrument = "violin"
} \scoreAViolinII

scoreAViolaPart = \new Staff \with {
  instrumentName = "Viola"
  midiInstrument = "viola"
} { \clef alto \scoreAViola }

scoreACelloPart = \new Staff \with {
  instrumentName = "Cello"
  midiInstrument = "cello"
} { \clef bass \scoreACello }

\score {
  <<
    \scoreAViolinIPart
    \scoreAViolinIIPart
    \scoreAViolaPart
    \scoreACelloPart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
