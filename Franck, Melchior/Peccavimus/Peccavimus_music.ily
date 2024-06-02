\version "2.22.1"

global = {
  \key d \dorian
  \time 4/2
  \autoBeamOff
}

nSopranI = \relative c'' {
  \global
  r2 e1 d2~ | d cis d1 | r r2 e | \ficta f!1 e |
  d r2 \ficta c!2~ | c \ficta b!2.( a4 a2~ | a) gis a1 | r2 e' f1 | e d2 d~ |
  d c1 b2 | c f2. f4 e2 | d2. d4 d2 g~ | g4 g f2 e1~  | e2 e cis1 |
  
  R\breve | r2 e f e | e d e1 | r r2 d~( | d4 cis8[ b] \ficta cis!2) d \ficta c! |
  bes2. bes4 a1 | r2 c2. c4 c2 | c c c1 | c2 c2. c4 c2 |
  c2.( d4 e f g2~ | g) g g1 | e r | R\breve | r1 r2 e |
  
  f2. f4 e2 d | cis2. d4 e2 f | e e fis2. fis4 | g2 d e2. e4 |
  c2 f2.( e4 d2~ | d4 \ficta cis!8[ b] \ficta cis!2) d1 | r2 d1 g2~ | g4 g e2 c f~ |
  f4 f f2 e1 | cis2 cis d2. d4 | e1 f | e\breve \bar "|."
}

nSopranII = \relative c'' {
  \global
  R\breve | r2 a1 g2~ | g fis g g | c a a a |
  f( e4 d e2) \ficta c! | d1 r | r2 e1 d2~ | d cis d a' | a2.( g4 f2) d |
  g a a g4( f) | e2 a2. a4 g2 | g2. g4 g2 bes2~ | bes4 bes a2 gis( a~ | a) gis a1 |
  
  R\breve | r2 b c b | a2. a4 a2 r4 a | bes2 a a g | a a f a |
  g2. g4 fis1 | g2. g4 g2 a~ | a g1 f2~( | f4 e8[ d] e2) f a~ |
  a4 a g2 c d~ | d c2.( b8[ a] b2) | c c c2. c4 | c2 a a a | a a a \ficta c! |
  
  c2. c4 c2 a | a a a d | cis1 r2 a | b2. b4 \ficta c!2 g |
  a2. a4 a1 | a fis | r2 fis g2. g4 | g2 c a2. a4 |
  a2 a2.( gis8[ fis] \ficta gis!2 | a\breve) | a\breve~ | a \bar "|."
}

nAlt = \relative c' {
  \global
  R\breve*2 | a1 bes | a a2 a'~ |
  a g1 fis2 | g2.( \ficta f!4 e1) | r2 e c d | e1 r | r2 e f1 |
  e d | r2 c2. c4 c2 | b2. b4 b2 d~ | d4 g, d'2 \ficta b! e | e1. e2 |
  
  f e e d | e r4 e a2 g | f2. f4 e1 | R\breve | r2 e d f |
  d2. d4 d1 | e2. e4 e2 \ficta f!~ | f g a1 | g r2 f~ |
  f4 f e2 e d | g\breve | g2 g a2. a4 | g2 f e f | e d cis a' |
  
  a2. a4 g2 f | e f e a | a1. d,2~ | d g2. g4 e2 |
  f a2. g4 f2 | e1 d | r r2 d | e g \ficta f!4 f a2~ |
  a4 a, a2 e'1 | e2 e f2. f4 | e2 e2.( d4 d2~ | d cis4 b) \ficta cis!1 \bar "|."
}

nTenor = \relative c' {
  \global
  e1 f | e d2 d | \ficta c!2. c4 d2 e~ | e d1 cis2 |
  d1 r | r2 \ficta b! c1 | b a2 a | \ficta g!2. g4 a1 | R\breve |
  r2 e' f d | c1 r | r2 d2. d4 g,2 | d'1.( c2 | b) b a a |
  
  \ficta c! b a2. a4 | b1 r | r r2 e | f e d2. d4 | e1 r |
  R\breve | c2. c4 c1 | c2 c c1~ | c a2 c~ |
  c4 c c2 g'2.( f4 | e2) e d1 | c2 e f2. f4 | e2 d c2. d4 | e2 f e a, |
  
  f2. f4 c'2 d | a2. b4 cis2 d | a a d2. d4 | b2 d c1~ |
  c2 c d1 | e2( a,) a a | d a b b | c2. c4 c1 |
  d2.( c4 b1) | a2 e' d a | a1 a | a\breve \bar "|."
}

nBass = \relative c' {
  \global
  R\breve | a1 bes | a g | r a |
  bes a | g r | e f | e d2 d'~ | d \ficta c!1 b2 |
  c a f g | a f2. f4 c2 | g'2. g4 g2 g~ | g4 g d2 e1~ | e2 e a, a' |
  
  a \ficta g! f2. f4 | e1 r | r2 d'2.( cis8[ b] \ficta cis!2) | d \ficta c! bes2. bes4 | a2 a bes f |
  g2. g4 d1 | c2. c4 c2 \ficta f!~ | f e f1 | c f2. f4 |
  f2 c'1 b2 | c1 g | r2 c f,2. f4 | c2 d a'2. b4 | cis2 d a1 |
  
  R\breve*2 | r1 r2 d, | g2. g4 c,2 c |
  f2. f4 d1 | a' d, | r2 d g2. g4 | c,2 c f2. f4 |
  d1 e | a,2 a d2. d4 | cis1 d | a\breve \bar "|."
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
      \new Lyrics \lyricsto "vSopranI" {\keepWithTag #'sI \tTutti}
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
      \new Lyrics \lyricsto "vSopranII" {\keepWithTag #'sII \tTutti}
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
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tTutti}
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
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tTutti}
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
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tTutti}
    >>
    