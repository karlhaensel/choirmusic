\version "2.22.1"

global = {
  \key bes \major
  \time 4/4
  \dynamicUp
  \autoBeamOff
  \override DynamicTextSpanner.style = #'none
  \partial 4
}

dTutti = {
  \global
  \tempo "Allegro, ma molto moderato" \tag #'s \tag #'a \tag #'t { s4\f | s2 } \tag #'b { s4 | s s\f } s2 | s1*3
  | s2. s4\mf | s8 s\< s2. | s2.\> s8 s\! |
  \tag #'s \tag #'a \tag #'t { s2. s4\p | s2.\< s8 s\! | s1*2 } \tag #'b { s4 s2.\mp | s2 s\< | s4 s\! s2 | s4 s\mf s2 }
  
  | \tag #'s \tag #'a \tag #'t { s2 s\< | s4 s\! } \tag #'b { s1 | s2 } s4.\> s8\! | s2 s\cresc |
  s1*3 | s2 \breathe s\f |
  s1*2 | s1^\markup{\italic sempre \dynamic f } | \tempo "rit." s1 | \partial 2. s2. \bar "|."
}

nSopran = \relative c' {
  \global
  f4 | bes2. f4 | g4. g8 bes4 c | d2. d4 | es4. bes8
  es4 d | c4. g8 g4 c | bes a a bes | c1 |
  c2 r4 f, | g4. a8 a4 bes | c2. d4 | c4->( bes)
  
  r bes | f4. es8 f4 g | as2. bes4 | g2 c |
  bes4( a!) bes( c) | d( c) bes( c) | a1 | bes2 es |
  d4( c) d( es) | f( es) d( c) | bes1( | c) | bes2.\fermata |
}

nAlt = \relative c' {
  \global
  f4 | f2. d4 | es4. g8 f4 g8([ a]) | bes2. f4 | g4. g8
  bes4 g | g4. es8 es4 g | f4. f8 f4 f | f2.( e4) |
  f2 r4 c | d4. es!8 es4 f | g( bes) a2 | a4->( bes) 
  
  r d, | d4. c8 d4 es | es( c) d4.( f8) | f4( es) g2 |
  f g4( a!) | a2 g | g4( fis e fis) | g2 g4( c) |
  bes( a) bes( c) | d( c) bes( a) | g2( bes~ | bes4 a g a) | bes2.\fermata |
}

nTenor = \relative c {
  \global
  f4 | d'2. bes4 | bes4. es8 d4 es | f2. bes,4 | bes4. bes8
  g4 bes | es4. c8 c4 es | c c c f, | a2( g4 bes) |
  a2 r4 a | bes4. c8 c4 d | es2. f4 | es->( d) 
  
  r bes | as4. bes8 as4 g | f2 bes | bes es |
  c bes4( a!) | f'( es) d( es) | d1 | d2 c |
  f, f' | f f4( es) | d1( | f2 es) | d2.\fermata |
}

nBass = \relative c {
  \global
  r4 | r bes bes'2~ | bes2. f4 | bes,2. bes4 | es4. g8
  es4 g | c,4. es8 es4 c | f f es d | a( bes) c2
  r4 f, f'2->~ | f4 f f2~ | f1 | r4 bes,
  
  bes'2~ | bes1~ | bes2 bes, | es c |
  f2. f4 | d( f) g( c,) | d1 | g2 c, |
  f2. es4 | d( f) bes( f) | g1( | f) | bes,2.\fermata |
}
    