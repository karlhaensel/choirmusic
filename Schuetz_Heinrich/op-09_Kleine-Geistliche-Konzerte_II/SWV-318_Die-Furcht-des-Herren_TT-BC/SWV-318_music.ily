\version "2.24.4"

tempusImperfectum = {
  \time 4/2
  \set Timing.timeSignatureFraction = #'(4 . 4)
}

tempusPerfectumLong =  {
  \time 6/1
  \set Timing.timeSignatureFraction = #'(3 . 1)
  \once \override Staff.TimeSignature.style = #'single-digit
}
tempusPerfectumShort =  {
  \time 3/1
  \set Timing.timeSignatureFraction = #'(3 . 1)
  \once \override Staff.TimeSignature.style = #'single-digit
}

noTimeSignature = { \once \omit Staff.TimeSignature }

ficta = { \once \set suggestAccidentals = ##t }

global = {
  \key g \dorian
  \tempusImperfectum
  \autoBeamOff
}

nTenorI = \relative c' {
  \global
  d1 fis,2 bes | a1 g | R\breve | r2 bes4. bes8 bes4 g c2 | d d4. d8 g,4 bes2 a4 |
  
  bes2 r4 bes a a8 bes c4( bes8[ a] | g[ a g a] bes4 a8[ g] f[ g f g ] a4) f | e2 d r1 | d' fis,2 bes | a1 g |
  r r2 bes4. bes8 | bes4 g c2 d1 | R\breve*2 |
  r2 bes2. a4 g2 | fis1 r2 d'~ | \noTimeSignature \time 2/2 d4 c bes2 \bar "" \tempusPerfectumShort \set Score.currentBarNumber = #17 a\breve d1 | \noTimeSignature \time 6/1 c1 c bes a2 a a1 f' | es es d c1. c2 d1 |
  d\breve.~ d\breve cis1 | \tempusImperfectum d2 r4 d c c8 d es4( d8[ c] | bes[ c bes c] d4 c8[ bes] a[ bes a bes] c4) bes | a2 g r1 | R\breve |
  r2 a2. g4 f2 | \tempusPerfectumLong e\breve r1 r\breve. | r1 r a g g f | e2 e e1 c' bes bes a | g\breve g1 f\breve. |
  
  r\breve. r1 r d' | c c bes a2 a a1 d | \tempusImperfectum c2 c4 bes a1~ | \noTimeSignature \time 6/2 a2 a g\breve\fermata \bar "|."
}

nTenorII = \relative c' {
  \global
  R\breve r1 d1 | fis,2 bes a1 | g r | r2 bes4. bes8 bes4 g c2 |
  
  d1 r | R\breve | r1 d | fis,2 bes a( g~ | g4 fis8[ e] fis2) g bes4. bes8 |
  bes4 g c2 d d4. d8 | g,4 bes2 a4 bes2 r4 bes | a a8 bes c4( bes8[ a] g[ a g a] bes4 a8[ g] | f[ g f g] a4) f e2 d |
  R\breve | r1 r2 bes'2~ | \noTimeSignature \time 2/2 bes4 a g2 \bar "" \tempusPerfectumShort \set Score.currentBarNumber = #17 fis\breve r1 | \noTimeSignature \time 6/1 r\breve. r1 r d' | c c bes a2 a a1 a |
  g g f e\breve e1 | \tempusImperfectum d2 r4 bes' a a8 bes c4( bes8[ a] | g[ a g a] bes4 a8[ g] f[ g f g] a4) g | fis2 g r a~ | a4 g f2 e1 |
  r2 c'2. bes4 a2 | \tempusPerfectumLong g\breve a1 g g f | e2 e e1 c' bes bes a | g1. g2 a1 f\breve.~ | f\breve e1 f\breve. |
  
  r1 r d' c c bes | a2 a a1 d c c bes | \tempusImperfectum a4( g g1 fis4 e | \noTimeSignature \time 6/2 fis2) fis g\breve\fermata \bar "|." 
}

nBC = \relative c {
  \global
  g1 d' | d g, | d' d | g, g'2 f | bes, bes es4 g f2 |
  
  bes, g d' a | c g bes f4 d | a'2 d, g1 | d'1  d | d g, |
  g'2 f bes, bes | es4 g f2 bes, g | d' a c g | bes f4 d a'2 d, |
  r2 g2. fis4 g2 | d'1 r2 g,~ | \noTimeSignature \time 2/2 g4 a bes2 \bar "" \tempusPerfectumShort \set Score.currentBarNumber = #17 d\breve bes1 | \noTimeSignature \time 6/1 c\breve. d | es f\breve d1 |
  g,\breve. a | \tempusImperfectum d2 bes f' c | es bes d a4 bes | d2 g, r f~ | f4 e f2 c'1 |
  r2 f,2. g4 a2 | \tempusPerfectumLong c\breve f,1 g\breve. | a bes | c\breve a1 bes\breve. | c\breve c1 f,\breve. |
  
  bes\breve. a\breve bes1 | f'\breve bes,1 f\breve bes1 | \tempusImperfectum f'2 c d1 | \noTimeSignature \time 6/1 d1 g,\breve\fermata \bar "|."
}

nBCfigured = \figuremode {
  \global
  <_>1 <_+>2 <6 4> | <4> <_+> <_>1 | <_+>2 <6 4> <[4]> <_+> | <_>\breve | <_>1. <4>4 <3> |
  
  <_>\breve*2 | <_+>\breve | <_+>2 <6 4> <_+> <6 4> | <4> <_+> <_>1 |
  <_>\breve | <_>2 <4>4 <3> <_>1 | <_>\breve | <_>1 <_+> |
  <_>\breve | <_+> | <_>2 <6> | <_+>\breve. | <_> <_+>\breve <_!>1 | <6>\breve <5>1 <_>\breve. |
  <_> <4>\breve <_+>1 | <_>1. <_->2 | <_>1. <_>4 <6> | <_+>\breve | <_> |
  <_>1. <6>2 | <_>\breve.*2 | <_>\breve. <6>\breve <5>1 | <_>\breve.*2 | <4>\breve <3>1 <_>\breve. |
  
  <_>\breve.*4 | <_>2 <_-> <4> <_+> | <_+>1 <_>\breve \bar "|."
}
