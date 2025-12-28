\version "2.22.1"


tGUnamK = \lyricmode { U -- nam pe -- ti -- i, }
tGUnam = \lyricmode { U -- nam pe -- ti -- i }
tUnamK = \lyricmode { u -- nam pe -- ti -- i, }
tUnam = \lyricmode { u -- nam pe -- ti -- i a Do -- mi -- no, }
tDom = \lyricmode { a Do -- mi -- no, }
tHancK = \lyricmode { hanc re -- qui -- ram, }
tHanc = \lyricmode { hanc re -- qui -- ram }
tUtK = \lyricmode { ut in -- ha -- bi -- tem, }
tUt = \lyricmode { ut in -- ha -- bi -- tem }
tInDoK = \lyricmode { in do -- mo Do -- mi -- ni, }
tInDo = \lyricmode { in do -- mo Do -- mi -- ni }
tOmniK = \lyricmode { om -- ni -- bus di -- e -- bus, }
tOmni = \lyricmode { om -- ni -- bus di -- e -- bus vi -- tae me -- ae, }
tUtVi = \lyricmode { ut vi -- de -- am vo -- lun -- ta -- tem Do -- mi -- ni }
tEtVi = \lyricmode { et vi -- si -- tem tem -- plum e -- ius, }
tTemp = \lyricmode { tem -- plum e -- ius, tem -- plum e -- ius. }



tSopranI = \lyricmode {
  \tGUnamK
  \tUnamK \tUnam 
  
  \tDom \tHancK
  \tHancK \tHanc
  
  \tUtK \tUtK
  in -- ha -- bi -- tem, \tUt 
  
  in do -- mo, \tInDoK in __
  do -- mo Do -- mi -- ni, in do -- mo, \tInDo
  
  \tOmniK \tOmni
  \tUtVi
  
  \tEtVi \tEtVi
  \tEtVi \tTemp
}

tSopranII = \lyricmode {
  \tGUnam \tDom \tUnam
  \tUnam
  
  \tDom \tHancK \tHancK
  \tHancK \tHanc
  
  \tUtK \tUtK \tUtK
  __ \tUtK in -- ha -- bi -- tem
  
  \tInDoK Do -- mi -- ni,
  \tInDoK in do -- mo __ 
  
  Do -- mi -- ni \tOmniK \tOmni
  ut vi -- de -- am, \tUtVi
  
  \tEtVi \tEtVi \tEtVi
  \tEtVi \tTemp
}



tAlt = \lyricmode {
  \tGUnamK u -- nam, \tUnamK
  \tUnam \tUnam
  
  \tHancK \tHancK
  \tHancK \tHanc \tUtK
  
  \tUtK \tUtK
  \tUtK \tUt \tInDoK
  
  \tInDoK
  \tInDoK do -- 
  
  mo Do -- mi -- ni \tOmniK \tOmni
  ut vi -- de -- am, \tUtVi
  
  \tEtVi \tEtVi \tEtVi
  \tEtVi \tTemp
}

tTenor = \lyricmode {
  \tGUnam \tDom 
  \tDom \tDom \tUnam
  
  \tHancK \tHancK re -- qui -- ram,
  \tHancK \tHancK \tHanc \tUtK
  
  \tUtK \tUtK
  \tUtK \tUtK in -- ha -- bi -- tem
  
  \tInDoK \tInDoK
  \tInDoK __ \tInDo
  
  \tOmniK om -- ni -- bus di -- e -- bus vi -- tae, vi --
  tae me -- ae, ut vi -- de -- am, ut vi -- de -- am, ut vi -- de -- am vo -- lun -- ta -- tem tu --
  
  am \tEtVi \tEtVi \tEtVi
  \tEtVi \tTemp
}

tBass = \lyricmode {
  \tGUnamK
  \tUnam
  
  \tHancK \tHancK \tHancK
  \tHancK \tHanc \tUtK
  
  \tUtK
  \tUtK __ \tUt 
  
  \tInDoK
  \tInDo __
  
  \tOmniK \tOmni
  ut vi -- de -- am, \tUtVi
  
  \tEtVi
  \tEtVi \tTemp
}
