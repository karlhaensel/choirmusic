\version "2.24.3"

tText = \lyricmode {
  % Text laut Erstdruck, orthografisch leicht angepasst
  Hörst du nicht die Bäu -- me rau -- schen, drau -- \tag #'s \tag #'t { ßen __ } \tag #'a \tag #'b { ßen }
  durch die stil -- le Rund'? Lockt dichs nicht hin -- ab -- zu lau -- schen von dem
  Söl -- ler in den Grund, \tag #'s { lockt dichs nicht hin -- ab zu __ lau -- schen von __ dem __ } \tag #'a \tag #'b { nicht } \tag #'t { nicht __ }
  
  \tag #'a \tag #'t \tag #'b { von dem } Söl -- ler \tag #'s \tag #'a { in den Grund, __ } \tag #'t { in __ den Grund, __ } \tag #'b { in den Grund, } wo die vie -- len Bä -- che
  ge -- hen, wun -- der -- bar im Mon -- den -- \tag #'s \tag #'t { schein, __ } \tag #'a \tag #'b { schein, }
  und die stil -- len Bur -- gen se -- hen, in den Fluss vom ho -- hen
  
  Stein, in den Fluss vom ho -- hen \tag #'s { Stein, __ vom ho -- hen Stein. } \tag #'a \tag #'t { Stein, vom ho -- hen Stein. __ } \tag #'b { Stein. __ }
  Kennst du noch die sü -- ßen Lie -- der aus \tag #'s \tag #'t { der __ } \tag #'a \tag #'b { der } al -- ten schö -- nen
  Zeit? Sie er -- wa -- chen al -- le wie -- der nachts in Wal -- des -- ein -- sam -- 
  
  keit, \tag #'s { sie er -- wa -- chen al -- le __ wie -- der Nachts __ in __ } \tag #'a \tag #'t \tag #'b { wie -- der Nachts in } Wal -- des --
  ein -- sam -- \tag #'s \tag #'a \tag #'t { keit, __ } \tag #'b { keit, } wenn die Bäu -- me träu -- mend lau -- schen
  und der Flie -- der duf -- tet \tag #'s \tag #'t { schwül __ } \tag #'a \tag #'b { schwül, } und im Fluss die Ni -- xen
  
  lau -- schen, komm her -- ab, hier ist's so kühl, komm her --
  ab, hier ist's so \tag #'s \tag #'a \tag #'t { kühl, __ } \tag #'b { kühl, } komm her -- ab, komm her --
  ab, komm her -- ab hier ist's \tag #'s { so __ } \tag #'a \tag #'t \tag #'b { so } \tag #'s \tag #'a \tag #'t { kühl. __ } \tag #'b { kühl. }
}

tTextOriginal = {
  % Text von Joseph von Eichendorff
  \override LyricText.font-size = #-1
  \override LyricText.font-shape = #'italic
  
  \lyricmode {
  \repeat unfold 15 { \skip 1 } Lockt's dich \repeat unfold 13 { \skip 1 } \tag #'s { lockt's dich \repeat unfold 5 {\skip 1} }
  \repeat unfold 27 { \skip 1 }  Schlös -- ser
  \tag #'s \tag #'a \tag #'t { \repeat unfold 4 {\skip 1} } \repeat unfold 20 { \skip 1 } ir -- ren
  \tag #'s {\repeat unfold 6 {\skip 1 } } \repeat unfold 54 { \skip 1 } rau -- schen
  }
}