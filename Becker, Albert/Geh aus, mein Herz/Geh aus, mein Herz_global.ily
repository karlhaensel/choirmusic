\version "2.22.1"


chormidi = \with {midiInstrument = "choir aahs"}

ficta = { \once \set suggestAccidentals = ##t } % für vogeschlagene Vorzeichen in Alter Musik über Noten -> VOR der Note setzen

global = {
  \key e \major
  \dynamicUp
  \autoBeamOff
}

global_zwei = {
  \global
  \time 2/2
  \partial 2
}

global_vier = {
  \global
  \time 4/4
  \partial 2
}

melodie = {
  \tag #'s {gis2 } \tag #'t {gis2^\markup{\italic "c.f. evtl. verstärkt durch einige hohe Bässe"}} | fis e | gis a | gis fis | e b' | cis e |
  b gis | a gis | fis fis | gis fis | gis b | cis1 | \tag #'s {b2\fermata } \tag #'t {b1~ | b2 } gis |
  fis e | gis a | gis fis | e b' | cis e | b gis |
  
  a gis | fis b | e, fis | gis a | fis1 | e2\fermata
}