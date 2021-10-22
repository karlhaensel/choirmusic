\version "2.20.00"

global = {
  \key es \major
  \time 3/4
  \dynamicUp
  \autoBeamOff
  \tempo "Moderato"
}

nSopran = \relative c'' {
  \global
  g2\mf f8([ bes]) | es,2 es8 es | as2 g8([ es]) | g([ f]) es4 r | r bes' as | f2 f8([ as]) |
  g2 r4 | R2.*2 | g2\mf\< f8([ bes]) | <<es,2 {s8 s\! s4}>> es'8([ c]) | as2 g8([ es]) | g([ f]) es4 r | r r es'8\f c |
  f2 a,4 | bes2 r4 | R2.*2 \bar ".|:"  bes2\mf es4 | es( d) as | as( g) c |
  
  f,2. | bes2 es4 | es( d) as | g2 c8([ as]) | g4 f r | r es des'^\markup{\italic cresc.} | des( c) c |
  r f, es' | es( d) d | d2\f d4 | d4. c8 bes4 | d2 d4 | f4. es8 d4 | r es\pp c8 as |
  g2( f8[ as]) | g2. \bar ":|." | es'4( d8[ c]) bes as | g2.( | f) | es~ | es~ | es~\fermata \bar "|."
}

nAlt = \relative c' {
  \global
  es2\mf d4 | es2 des8 des | c4( bes) bes8([ es]) | d4 es es8 es | es2 es4 | es( d8[ c]) d4 |
  es2 g8\pp es | g4( f) d | es2 r4 | es2\mf es8([ d]) | es2 es4 | c( ces) bes8([ es]) | d4 es r | r r es8\f es |
  d4( f) f8([ es]) | d2 f8\pp f | f4.( d8) c([ es]) | d2 r4 \bar ".|:" es4\mf( g) bes | as2 f4 | f( es) ges |
  
  f2 d4~( | d es8[ f]) g([ a]) | bes2 f4 | f( es) es8([ f]) | es4 d r | r es^\markup{\italic cresc.} es | es2 es8([ e]) | 
  f2 f4 | f2 f4 | bes2\f bes4 | bes4. f8 f4 | bes2 bes4 | b4. c8 b4 | r g\pp as8 f |
  es2( d8[ f]) | es2. \bar ":|." es2 es8 es | es2.~( | es4 d8[ c] d4) | es bes des8 des | des4( c8[ bes] c4)  | << bes2.\fermata {s8\< s\!\> s s\! s} >> \bar "|."
}

nTenor = \relative c' {
  \global
  bes2\mf as4 | g2 g8 g | es4( f) g8([ bes]) | ces4 bes r | r des c | c( bes8[ a]) bes4 |
  bes2 bes8\pp g | bes4( as! ) f | g2 r4 | bes2\mf bes8([ as]) | g2 g4 | es( f) g8([ bes]) | bes4 bes bes8^\markup{\italic cresc.} bes | bes2.~( |
  bes4 d) c | bes2 d8\pp d | d4.( bes8) a([ c]) | bes2 r4 \bar ".|:" R2.*2   bes2\f es4 |
  
  es( d) as | as( g) c | f,2 bes4~ | bes2 as8([ c]) | bes4 bes r | r bes\mf^\markup{\italic cresc.} bes | bes( as) as |
  r c c | c( bes) bes | f'2\f f4 | f4. es8 d4 | f2 f4 | d4. es8 f4 | r es\pp es8 c |
  bes2. | bes \bar ":|." c4( g) es8 f | g([ as] bes4 a | as2.) | g4 g bes8 bes | bes4( as8[ g] as4) | g2.\fermata \bar "|."
}

nBass = \relative c {
  \global
  es2\mf bes4 | c2 bes8 bes | as([ c] d4) es8([ g]) | as4 g r | r g, as | bes2 bes4 |
  es2 es8\pp g | bes2 bes,4 | es2 r4 | es2\mf bes4 | c2 c4 | c( d) es8([ g]) | as4 g r | r r g8\f ges |
  f2 f4 | bes,2 bes8\pp d | f2 f4 | bes, bes'\mf as \bar ".|:" g( es) g | f2 d4 | es2 a,4 |
  
  bes2. | bes2 bes4 | bes2 c8([ d]) | es2 as,4 | bes2 as4 | <<g2{s4 s^\markup{\italic cresc.}}>> g4 | as2 as4 |
  a2 a4 | bes2 bes4 | bes'2\f bes4 | bes4. bes8 bes4 | as2 as4 | g4. g8 g4 | r c,\pp as8 as |
  bes2. | es \bar ":|." c2 c8 c | bes2.~ | bes | es4 es g,8 g | as2~( as8[ c]) | << es2.\fermata {s8\< s\!\> s s\! s} >> \bar "|."
}
