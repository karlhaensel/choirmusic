\version "2.22.1"

global = {
  \key f \major
  \time 3/4
  \autoBeamOff
}

common = {
  \global
  \dynamicUp
  \tempo "Etwas gehend"
  \partial 4 \tag #'s \tag #'a \tag #'t {s4\p | s4 s4 s4\<} \tag #'b {s4 | s4 s4 s4\p\< } |  s4 s16\! s16 s8 s4 | s4\> s4 s8 s16 s16\! | s2. | s2.\< | s2\> s8. s16\! | 
  s2. | \tag #'b {s2\< s8 s16 s16\! | s2 s4\> | s4 s16\! s16 s8 s4} | \tag #'s \tag #'a \tag #'t { s2. | s4\< s4 s4\! | s2. } s2\> s8 s16 s16\! | s2. | s2\< s8 s16 s16\! | 
  s2\> s8 s16 s16\! | \tag #'s { s2. | s2 s4^\markup{\italic dolce} } \tag #'t { s2 s4\pp | s2. } \tag#'a \tag #'b {s2. | s2. }| s2. | s2.\< | s16 s\! s8 s2 | s2. |
  s2. | s2 s4\> | s2 s4\! | \tag #'s \tag #'a \tag #'t { s2. | s2.\p | s2. | s2.\pp } \tag #'b { s2 s4\p | s2.*3 } |
  s2. | s2\< s8 s\! | s2. | s2.\> | s2\! \bar ":|." s4\f \bar "||" \key f \minor | s2\< s4\! | s2. |
  s2. | s2 s4\< | s4. s8\! s4 | s2\> s8 s\! | \tag #'s \tag #' a \tag #'t { s2. } \tag #'b { s2 s4^\markup{\dynamic f \italic marcato} } | s2. | s2\< s8 s\! | s2. |
  s2.*4 | \tag #'s \tag #'a \tag #'b { s2. } \tag #'t { s2 s4\p } | \bar "||" \key f \major \tag #'s { s2 s4^\markup{\dynamic p \italic dolce} } \tag #'t { s2. } \tag #'a \tag #'b { s2 s4\p } | s2. |
  s2.*3 | s2.\< | s8 s\! s2 | s2.\> | s2\!
  \tag #'s \tag #'a \tag #'t { s4 | s2.\p | s2. | s2.\pp | s2. } \tag #'b { s4\p | s2.\< | s16 s\! s8 s4 s\pp | s2.\> | s2.\! } | \tag #'s { s2.^\markup{\dynamic ppp \italic { sehr ruhig } } } \tag #'a \tag #'t \tag #'b { s2.\ppp } | s2. | s2.\> | s4\! s4 s4 \bar "|." 
              
}

nSopran = \relative c' {
  \global
  c4 | f2 a4 | c2 a4 | g4( f) g | a r4 g4 | a( c) f, | g( bes) e, | f2 r4 | r4 r4 c4 |
  f2 a4 | c2 a4 | g( f) g | a r4 g4 | a( g) a | b( a) b | c2 r4 | r4 r4 c4 | 2 4 | a2 4 |
  
  c( bes) bes | g2 4 | a2 f4 | bes2 a4 | a( g) g | 2 r4 | c2. | a4 r4 r4 | c2. | a4 r4 r4 |
  a2 c4 | c( bes) g | g2. | f4 r4 c4 | f2 as4 | c2 as4 | g( f) g | as2 g4 | as( c) f,4 |
  g( bes) e,4 | f2 r4 | r4 r4 c4 | f2 as4 | c2 as4 | g( f) g | as4 r4 g4 | as( g) as | b( a) b |
  
  c2 r4 | r4 r4 c4  c2 4 | a2 4 | c( bes) bes | g2 4 | a2 f4 | bes2 a4 | a( g) g |
  g2 r4 | c2. | a4 r4 r4 | c2. | a4 r4 r4 | a2 c4 | c( bes) g | g2. | f4 r4 r4 |
}
nAlt = \relative c' {
  \global
 c4 | 2 f4 | a2 f4 | e( d) e | f4 r4 e4 | 2 d4 | 2 c4 | c2 r4 | r4 r4 c4 |
 c2 f4 | a2 f4 | e4( d4) e4 | f4 r4 g4 | c2 a4 | g2 f4 | e2 r4 | r4 r4 f4 | e4( d4) e4 | f2 f4 |
 
 2 4 | e2 d4 | e2 f4 | g2 f4 | 2 4 | e2 r4 | a2. | e4 r4 r4 | bes'2. | a4 r4 r4 |
 f2 4 | 2 4 | e( d e) | f r4 c4 | f2 as4 | c2 f,4 | e( d) e | f2 e4 | es2 des4 |
 des2 c4 | c2 r4 | r4 r4 c4 | c2 f4 | 2 4 | e( d) e | f r4 g4 | c2 as4 | g2 f4 | 
 
 e2 r4 | r4 r4 f4 | e( d) e | f2 4 | 2 4 | e2 d4 | e2 f4 | g2 f4 | 2 4 |
 e2 r4 | a2. | e4 r4 r4 | bes'2. | a4 r4 r4 | f2 4 | 2 4 | e( d e) | f r4 r4
}

nTenor = \relative c' {
  \global
  c4 | a2 c4 | f2 c4 | 2 4 | 4 r4 c4 | 2 a4 | bes2 g4 a2 r4 | r4 r4 c4|
  a2 c4 | f2 c4 | 2 4 | 4 r4 c4 | 2 4 | e2 d4 | c2 4 | 2 4 | bes( a) bes | c2.( |
  
  f,2) bes4 | c2 d4 | cis2 d4 | 2 4 | 2 4 | c2 r4 | f2. | c4 r4 r4 | e2. | f4 r4 r4 |
  c2 a4 | a( bes) d | c2( bes4) a4 r4 c,4 | f2 as4 | c2 4 | 2 4 | 2 4 | 2 as4 |
  bes2 g4 | as2 r4 | r4 r4 c4 | as2 c4 | as2 c4 | 2 4 | 4 r4 c4 | c2 f4 | es2 d4 |
  
  c2 c4 | c2 4 | bes( a) bes | c2.( | f,2) bes4 | c2 d4 | cis2 d4 | 2 4 | 2 4 |
  c2 r4 | f2. | c4 r4 r4 | e2. | f4 r4 r4 | c2 a4 | a( bes) d | << {\voiceOne c2. | c4 r4 r4 |} \new Voice {\voiceTwo c2( bes4) | a4 r4 r4 |} >> \oneVoice
}

nBass = \relative c' {
  \global
  r4 | r4 r4 c4 | f,2 a4 | c2 c,4 | f( a) c | a2 d,4 | g2 c,4 | f2 c4 | f2 a4 |
  c2 a4 | f2 a4 | c2 c,4 | f4 r4 e | f( e) f | g2 4 | c,2 r4 | r4 r4 a'4 | g( f) g | f( e) es |
  
  d2 des4 | c2 bes'4| a2 d,4 | g2 a 4 | bes2 b4 | c2 c,4 | f2 a4 | c2 a4 | g( f) g | f r4 r4|
  f2 f4 | es( d) bes | c2. | f4 r4 c4 | f2 as4| c2 f,4 | c'2 c,4 | f( as) c | as2 des,4 |
  g2 c,4 | f2 c4 | f2 as4 | c2 as4 | f2( as4 | c2) c,4 | f4 r4 e4 | f( e) f | g2 4 |
  
  c2 r4 | r4 r4 a4 | g( f) g | f( e) es | d2 des4 | c2 bes'4| a2 d,4 | g2 a4 | bes2 b4 |
  c2 c,4 | f2 a4 | c2 a4 | g( f) g | f r4 r4 | f2 4 | es( d) bes | c2. | <c f,>4 r4 r4 |
}