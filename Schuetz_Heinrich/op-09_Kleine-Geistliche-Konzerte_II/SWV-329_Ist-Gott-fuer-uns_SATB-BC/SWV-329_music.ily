\version "2.27.2"

tempusImperfectum = {
  \time 4/2
  \tempo 2=72
  \set Timing.timeSignature = #'(4 . 4)
}

noTimeSignature = { \once \omit Staff.TimeSignature }

ficta = { \once \set suggestAccidentals = ##t }


submisse = \markup  { \italic { submisse. }}
fortiter = \markup  { \italic { fortiter. }}

global = {
  \key g \dorian
  \tempusImperfectum
  \autoBeamOff
}

nSopran = \relative c'' {
  \global
  d1 es2. f4 | d1 r  | r r2 a | bes2. c4 a1 |
  r4 a f d8 d f2 e | r4 a f d8 d bes'4.( c8 g2~ | g) fis r4 fis8 fis fis4 fis8 fis |
  g4 g8 g a2. a4 g fis | g2 g r4 g8 g g4 g | a a bes2 bes r | r4 d f bes, d4.( c16[ bes] a2) |
  
  b2 r8 b b b b4 b c2 | a4 bes!2 c4 a bes2( a4) | bes1 r | R\breve |
  R | a4 f a g8 f e2 d | R\breve |
  r1 r8 c' c8. d16 bes4 bes | r1 r2 d4 bes8 c |
  
  d2. c8 bes a4. a8 g bes bes8. c16 | a4 a r2 r1 |
  R\breve | r1 a8 c f,4 f8 g a f |
  g g g4 r8 g g fis g4. a8 bes4 g | r1 c8 e a,4 a8 b! c a |
  
  b!8 b b4 r8 a a gis a4 b c a | r c2 bes!4 a1 | a2 r4 d2 g,4 fis( g~ |
  g fis8[ e] fis2) g r | r1 r8 g bes d c8([ bes16 c a8 bes16 c] |
  bes8[ a16 bes g8 a16 bes] a8) d, f a g8([ f16 g \ficta es8 f16 g f8]) r r bes | g4 a bes2 r8 f a c bes([ a16 bes g8 a16 bes] |
  
  a8[ g16 a f8 g16 a] g8[ f16 g e8 f16 g] f8 e16 f d8 e16 f] e4) r8 a | f4 g a8 e f a g([ f16 g e8 f16 g] fis4) r8^\submisse d' |
  b!4 cis d8 a8^\fortiter bes d cis([ b!16 cis a8 b16 cis] b8) d,^\submisse g bes | a([ g16 a fis8 g16 a] g2) r4 g2^\fortiter g4 |\time 10/2 \noTimeSignature g4( fis8[ e] fis2) g\longa\fermata \bar "|."
}

nAlt = \relative c'' {
  \global
  R\breve | r1 r2 r4 g | f d8 d f2 e1 | r r2 r4 f |
  e c8 c d1 cis2 | r2 d4 f d8 d d4.( c!16[ bes] c4) | d1 r4 d8 d d4 d8 d |
  d4 d8 d f2. f4 d c | d2 e r4 e8 e e4 e | f f g2 g r | r r4 f a g2 fis4 |
  
  g2 r8 g g g g4 g g2 | f4 f g2 f f | f1 r | R\breve |
  R | f4 d f e8 d cis2 d | r1 g4 es8 f g2~ |
  g4 f8 es d4. c8 c2 r8 g' g8. a16 | f4 f r2  r1 |
  
  R\breve | r8 f f8. g16 es4 es r1 |
  r2 c4 a8 bes c2. bes8 a | g4 g f2 r1 |
  es'8 g c,4 c8 d es c d d d4 r8 d d c | d4. e!8 f4 d r1 |
  
  r2 r8 e e e e4 g g f | r2 r4 g2 f4 e2 | fis r4 f!2 es4 d2~ |
  d1 d2 r8 d es g | f8([ e!16 f d8 e16 f] es8[ d16 es c8 d16 es] d4) r8 g e!4 fis |
  g r r2 r r8 bes, d f | es([ d16 es c8 d16 es] d8[ c16 d bes8 c16 d] c4) r8 f d4 e! |
  
  f4 r8 d bes4 c d r r8 a c e | d([ c16 d b!8 c16 d] cis8) cis d f e8([ d16 e cis8 d16 e] d8) d^\submisse f a |
  g8([ f16 g e8 f16 g] fis4) r8 g^\fortiter e4 fis g d^\submisse | es d d2 r4 es2^\fortiter d4 | \time 10/2 \noTimeSignature d1 d\longa\fermata \bar "|." 
}

nTenor = \relative c' {
  \global
  R\breve | r1 r4 d bes4 g8 g | bes2 a r1 | r r4 a f d8 d |
  e2 d r r4 a' | f d8 d bes'4 a r d bes g8 g | bes2 a r4 a8 a a4 a8 a |
  bes4 bes8 bes c4 c d c b( c~ | c b) c2 r4 c8 c c4 c | c c es2 es4 bes d g, | bes2 a4 d f bes, d2 |
  
  d2 r8 d d d d4 d es2 | c4 d es2. d4 c2 | bes1 r2 g | g2. fis4 fis fis g a |
  bes2 c4 d c4. c8 c2 | r1 r2 r8 a a8. bes16 | g4 g r2 r1 |
  r2 r8 f f8. g16 es4 es r2 | r1 d'4 bes8 c d2~ |
  
  d4 c8 bes a4( g2) fis4 g2 | r r8 c c8. d16 bes4 bes r2 |
  a4 f8 g a2. g8 f e4( f~ | f) e f2 r1 |
  r1 bes8 d g,4 g8 a bes g | a a a4 r8 a a g a4. b!8 c4 a |
  
  r2 r8 c c b c4 d e c | r4 a2 d4 cis( d2 cis4) | d2 r r4 c!2 bes4 |
  a1 g2 r | r r8 g a bes bes([ a16 bes g8 a16 bes] a8[ g16 a fis8 g16 a] |
  g4) r r d' bes c d8 f, bes d | c8([ bes16 c a8 bes16 c] bes8) f g bes a8([ g16 a f8 g16 a] g8[ f16 g e8 f16 g] |
  
  f2) r4 r8 c' a4 bes c r | r2 r4 r8 d b!4 cis d8 a^\submisse d f |
  e([ d16 e cis8 d16 e] d8) fis,^\fortiter g bes a([ g16 a fis8 g16 a] g8) g^\submisse bes d | c([ b16 c a8 b16 c] b2) r4 c2^\fortiter bes4 | \time 10/2 \noTimeSignature a1 b!\longa\fermata \bar "|."
}

nBass = \relative c' {
  \global
  R\breve | r2 r4 g f d8 d es2 | d1 r | r r2 r4 d |
  c a8 a bes2 a1 | r2 r4 d bes g8 g es'2 | d1 r4 d8 d d4 d8 d |
  g4 g8 g f2. f4 g a | g2 c, r4 c8 c c4 c | f f es2 es4 g bes es, | g4.( f16[ e!] d1.) |
  
  g,2 r8 g' g g g4 g c2 | f,4 bes es, c f1 | bes, r | R\breve |
  R\breve*2 | r2 es4 c8 d es2. d8 c |
  b!4( c2) b4 c2 r | r8 d d8. e16 cis4 cis r1 |
  
  R\breve | r1 r8 g'8 g8. a16 fis4 fis |
  f!4 d8 e f2. e8 d c2~ | c4 c f,2 r1 |
  R\breve | f'8 a d,4 d8 e f d e e e4 r2 |
  
  r2 r8 a a e a4 g c f, | r f2 g4 a1 | d,2 r4 bes2 c4 d16([ a8.] bes16[ g8.] |
  d'1) g,2 r | r1 r4 g c d |
  g,8 d' es g f8([ e!16 f d8 e16 f] es8[ d16 es c8 d16 es] d4) bes | es f bes,2 r4 f bes c |
  
  f,8 c' d f es([ d16 es c8 d16 es] d8[ c16 d bes8 c16 d] c8[ bes16 c a8 bes16 c] | bes8[ a16 bes g8 a16 bes] a4) d g a d, d^\submisse |
  g, a d g,^\fortiter c d g, g'^\submisse | c, d g,2 r4 c2^\fortiter g4 | \time 10/2 \noTimeSignature d'1 g,\longa\fermata \bar "|."
}

nBC = \relative c' {
  \global
  g1 es2 c | g'2. g4 f d es2 | d1 a' | g d2 d |
  c4 a bes2 a1 | d2 d bes4 g es'2 | d1 r4 d d2 |
  g2 f2. f4 g a | g2 c, r4 c c2 | f es es4 g bes es, | g4.( f16[ e!] d1.) |
  
  g,2 g' g c | f,4 bes es, c f1 | bes, g | g2. d'4 d2 g4 f |
  bes,2 a4 bes f'2 f | d d a' d, | b! es4 c8[ d] es2. d8[ c] |
  b!4( c2) b4 c2 g | d' cis bes4 a g2 |
  
  g2 d'1 g,2 | f c' g d' |
  f4 d8[ e] f2. e8[ d] c2~ | c f, f' d |
  c1 g | d' a2 a |
  
  e'2 a4 a8[ e] a4 g c f, | r f2 g4 a1 | d,2 r4 bes2 c4 d2~ |
  d1 g,2 g'4 c, | d bes c f bes, g c d |
  g, es' f d es c8[ es] d4 bes | es f bes, g a f bes c |
  
  f, d' es c8[ es] d4 bes8[ d] c4 a8[ c] | bes4 g8[ bes] a4 d g a d, d |
  g, a d g, c d g, g' | c, d g,2 r4 c2 g4 | \time 10/2 \noTimeSignature d'1 g,\longa\fermata \bar "|."
}

nBCfigured = \figuremode {
  \global
  <_>1. <_->2 | <_>\breve | <6>2 <5> <_+>1 | <_> <_+>2 <_-> |
  <_>1 <6 4>2 <5 _+> | <_> <6>4 <5> <_>2 <7>4 <6> | <6 4>2 <5 _+> <_>4 <_+> <_>2 |
  <_>1 <6>2 <_+>4 <6[+]> | <4> <_+> <_>1. | <_>\breve | <_>2 <5>4 <6> <3> <4> <4> <_+> |
  
  <_+>2 <_+> <_> <_-> | <_>2. <_->4 <7 3> <6 4> <4> <3> | <_>\breve | <_>2. <_+>4 <_>1 |
  <_>\breve | <_>1 <_+>2 <_+> | <_>2. <_->4 <_>1 |
  <_>4 <_-> <2>2 <_->1 | <_>\breve |
  
  <_>2 <_+>4 <4>2 <_+>4 <_>2 | <_> <_-> <_> <_+> |
  <_>1. <3>4 <4> | <_> <3> <_>1. |
  <_->\breve | <_> |
  
  <_+>2. <_>8 <_+>4. <_!>2. | <_>1 <7 _+>4 <6 4> <4> <_+> | <_+>1 <_>4 <_-> <7 _+> <6 4> |
  <4>2 <_+> <_+> <_+>4 <_-> | <_>2 <_->1 <6>4 <_+> |
  <_>1 <_>4. <6>8 <6>2 | <6>1. <6>2 |
  
  <_>2. <_>8 <6> <_>4. <6>8 <6>4. <6>8 | <_>4 <_+>8 <6> <_+>2 <6 _+>4 <_+> <_+> <_-> |
  <_[+]> <_+> <_+> <_-> <6> <_+> <_+> <_-> | <_-> <_+> <_+>2. <_-> | <[4]>2 <_+> <_>\longa  
  
}
