\version "2.22.1"

global = {
  \key f \major
  \time 4/2
  \autoBeamOff
}

nSopranI = \relative c'' {
  \global
  r1 r2 f~ | f e d2. d4 | c1 r |
  r2 c1 bes2 | a2. a4 g1 | r2 g' f e~ | e4 e d1 c2 | b( c1) \ficta b!2 |
  
  c2 c c2. c4 | c1 r | r2 bes2. c4 d2~( | d c4 bes a2) g |
  r g2. a4 bes2 | a1 r | r2 e'2. f4 g2~( | g4 \ficta fis8[ e] fis!2) g1 |
  
  R\breve | r2 c, d es~( | es d4 c bes2) es | d1 r | r r2 a~ |
  a b c1~ | c2 b c c | c2. c4 a1 | r2 c1 d2 | bes c d1 |
  
  r2 c d1 | c2 r4 c f,( g a bes | c2.) bes4 a2 a | g1 r2 c~( |
  c4 b8[ a] \ficta b!2) c a | d2. d4 g,2 c | bes1 a2 r4 c | f,( g a bes c2) a |
  
  g2. g4 g2 g~ | g4 g g g c1 | a2 a4. a8 a4 a d2~ | d b c1 |
  a2 d2.( cis8[ b] \ficta cis!2) | d1 r2 r4 \ficta c!4 | f4. f8 e2 r r4 d~ | d d d c bes2 a |
  
  b d f4. f8 e4 e~ | e f2 e4 f1 | R\breve | r2 c c4 c c c~ |
  c c c2 c f | f4 f f f2 f4 f2 | d4 f2 d4 c1 | c4 f2 d4 c1 | c\breve \bar "|."
}

nSopranII = \relative c'' {
  \global
  r2 c1 bes2 | a2. g4 a2 bes | c2. c4 c2 f~ |
  f e d2. d4 | d2 d d c | d1 r2 c~ | c bes a2. a4 | g2 g g g |
  
  g a g2. g4 | a2 a2. bes4 c2~( | c bes4 a g1) | a2 c2. d4 es2 |
  d1 r | r2 d2. e4 \ficta f!2 | e c1 g2 | d'1 bes |
  
  r r2 g | a1 bes2 g | a1 g2 a | bes2. bes4 g2 c | a d4 d f2( e |
  d1) r | r2 d e f~ | f e f1 | R\breve | r2 g, g2. g4 |
  
  g2 g bes bes | a g f f~ | f e f1 | R\breve |
  r1 r2 c' | f,4( g a bes c2) a | d2. d4 c1 | r2 f, g c~ |
  
  c c1 b2 | c2 c2. c4 c c | f1 d2 d4. d8 | d4 d g1 e2 |
  f f e1 | a,2 a bes4. bes8 a2 | r r4 g c4. c8 bes4 bes~ | bes a bes c d2 d |
  
  d b c4 c c c~ | c c c2 c c | c4. c8 b4 c2 c4 \ficta b!2 | c e f4. f8 e4 e~ |
  e f2 e4 f2 c | d4 d c d2 d4 c2 | d4 a2( g8[ f] e4) f g2 | a4 a2( g8[ f] e4) f g2 | a\breve \bar "|."
}

nAlt = \relative c' {
  \global
  f1 e2 d~ | d4 d c2 r f2~ | f c r bes' |
  a c4. c8 g2 g~ | g f f e | d2. e4 f g a2 | r1 f2. e4 | d2 c d g |
  
  e2( f1) e2 | f f1 e2 | g1. d2 | r c1 c2 |
  g'2.( f4 es2) d | r1 bes'4 c d2 | g,1 g2. a4 | bes2 a r d, |
  
  e f1 e2 | f f d g~ | g fis g r | r \ficta f! g a~ | a g a1 |
  f g2 a~( | a g4 f e2) c | c c1 d2 | e2.( d8[ e] f2. e4 | d2) e d d |
  
  e e f2.( g4 | a bes c2 bes a~ | a) g c1 | r2 g c,4( d e f |
  g2) g a1~ | a2 f e f | d4( e f g a2) g | f e4( d) e2 f~ |
  
  f e d2. d4 | e4 e2 e4 e e a2~ | a f f4. f8 f4 f | g2 g1 a2~ |
  a a a1 | fis2 fis g4. g8 c,4 \ficta f! | a b c2 r r4 g~ | g a d, a'2 g fis4 |
  
  g2 g a4 a g a~ | a a g2 a a | g4 g g g2 g4 g2 | g g a4 a g a~ |
  a a g2 a a | bes4 bes a a a bes2 a4 | bes( c2 bes8[ a] g4) f2 e4 | f c'2( bes8[ a] g4) f2 e4 | f\breve \bar "|."
}

nTenor = \relative c' {
  \global
  R\breve | r2 c1 bes2 | a2. a4 g2 f |
  f g g g | d'2.( c4 b2) c | g' g c,2. c4 | g'1 r2 f~ | f e d2. d4 |
  
  c2 a c2. c4 | f,1 c'2. d4 | es2 d d2. \ficta e!4 | f2 e4 d e2 c |
  r1 r2 bes4 c | d2 a r a4 bes | c2 g r bes4 c | d1 g,2 bes~ |
  
  bes c d bes | c1 r2 c~ | c d es c | bes d1 \ficta e!2 | f d2.( cis8[ b] \ficta cis!2) |
  d1 r | r2 f,4 f g2 a | g1 a | b2 c1 a2 | g4 g c1 b2 |
  
  c c bes4( c d e | f2) e d2. d4 | c1 c2 c4( d | e2) d e c |
  d d f2.( e4 | d2) d c c | f( d) r g, | a f c'1~ |
  
  c2 c g g4. g8 | g4 g c1 a2 | a4. a8 a4 a d1 | b2 d g, c~ |
  c a a1 | a2. d4 d4. e8 f4 f | d4. d8 c4 e e fis g d~ | d4 d2 f d4 d2 |
  
  d2 g, f4 a8([ bes]) c4 a~ | a f c'2 f, c' | c4 e d c2 e4 d2 | e c a4. bes8 c4 a~ |
  a f c'2 f, c' | bes4 f f2 f4 f f2 | f r4 bes2 a4 g2 | f2 r4 bes2 a4 g2 | f\breve \bar "|."
}

nBass = \relative c {
  \global
  R\breve*2 | f1 e2 d~ |
  d4 d c2 r1 | r r2 c'~ | c bes a2. a4 | g1 f | g2. g4 g1 |
  
  R\breve | r2 f2. g4 a2 | g g2. a4 bes2 | a a2. bes4 c2~( |
  c4 b8[ a] \ficta b2) c g~ | g fis g d | r c2. d4 es2 | d1 r2 g~ |
  
  g a bes g | f1 r | R\breve | r2 bes,1 c2 | d bes a1 |
  r2 d e f~ | f d c1~ | c f | g2 a1 f2 | g\breve |
  
  R\breve*2 | r2 c f,4( g a bes | c2) bes a2. a4 |
  g1 r | r r2 f | bes,4( c d e f2) e | d2. d4 c1~ |
  
  c r | c2. c4 c c f2~ | f d d4. d8 d4 d | g1 e2 a~ |
  a d, a1 | d2 d g4. g8 \ficta f!2 | r r4 c' a4. a8 g4 g~ | g fis g a bes4.( c8 d4) d, |
  
  g1 r | r r2 f | e4. f8 g4 e2 c4 g'2 | c,1 r |
  r r2 f | d4. e8 f4 d2 bes4 f'2 | bes,4 a2 bes4 c1 | f4 a,2 bes4 c1 | f\breve \bar "|."
}


sSopranI = 
  \new Staff  = "zSopranI"
    \with {
      instrumentName = "Sopran I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranI" {\nSopranI}
      }
      \new Lyrics \lyricsto "vSopranI" {\tSopranI}
    >>
    
sSopranII = 
  \new Staff  = "zSopranII"
    \with {
      instrumentName = "Sopran II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranII" {\nSopranII}
      }
      \new Lyrics \lyricsto "vSopranII" {\tSopranII}
    >>

sAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vAlt" {\nAlt}
      }
      \new Lyrics \lyricsto "vAlt" {\tAlt}
    >>

sTenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vTenor" {\clef "violin_8" \nTenor}
      }
      \new Lyrics \lyricsto "vTenor" {\tTenor}
    >>

sBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\tBass}
    >>
    