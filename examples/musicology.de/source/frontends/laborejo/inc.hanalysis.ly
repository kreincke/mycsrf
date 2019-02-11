\version "2.18.2"

#(define BLNK " " )

#(define-markup-command 
  (hf layout props FS ) (markup?  )
  "insert a harmony analysis symbol + ( 0 bass & 0 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
      \line {
        \override #'(baseline-skip . 1.4) {
          \center-column{       
            \line{ #FS }
            \line{ \typewriter \fontsize #-5 \BLNK }
        } }  
        \super{
          \override #'(baseline-skip . 1.5) {
            \fontsize #-4 \typewriter
            \translate #'(-2 . 1)
            \column { \BLNK \BLNK \BLNK }
        } }      
      }       
    #}
  )
)

#(define-markup-command 
  (hfOne layout props FS  Mid) (markup? markup? )
  "insert a harmony analysis symbol + ( 0 bass & 1 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
       \line {
        \override #'(baseline-skip . 1.4) {
          \center-column{       
            \line{ #FS }
            \line{ \typewriter \fontsize #-5 \BLNK }
        } }  
        \super{
          \override #'(baseline-skip . 1.5) {
            \fontsize #-4 \typewriter
            \translate #'(-2 . 1)
            \column { \BLNK #Mid \BLNK }
        } }      
      }       
    #}
  )
)

#(define-markup-command 
  (hfTwo layout props FS Mid Top) (markup? markup? markup? )
  "insert a harmony analysis symbol + ( 0 bass & 2 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
       \line {
        \override #'(baseline-skip . 1.4) {
          \center-column{       
            \line{ #FS }
            \line{ \typewriter \fontsize #-5 \BLNK }
        } }  
        \super{
          \override #'(baseline-skip . 1.5) {
            \fontsize #-4 \typewriter
            \translate #'(-2 . 1)
            \column { #Top #Mid \BLNK }
        } }      
      }       
    #}
  )
)

#(define-markup-command 
  (hfTri layout props FS Bot Mid Top) (markup? markup? markup? markup? )
  "insert a harmony analysis symbol + ( 0 bass & 3 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
      \line {
        \override #'(baseline-skip . 1.4) {
          \center-column{       
            \line{ #FS }
            \line{ \typewriter \fontsize #-5 \BLNK }
        } }  
        \super{
          \override #'(baseline-skip . 1.5) {
            \fontsize #-4 \typewriter
            \translate #'(-2 . 1)
            \column { #Top #Mid #Bot }
        } }      
      }       
    #}
  )
)
  
#(define-markup-command 
  (hfi layout props FS Sub) (markup? markup?  )
  "insert a harmony analysis symbol + ( 1 bass &  0 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
      \line {
        \override #'(baseline-skip . 1.4) {
          \center-column{       
            \line{ #FS }
            \line{ \typewriter \fontsize #-5 #Sub }
        } }  
        \super{
          \override #'(baseline-skip . 1.5) {
            \fontsize #-4 \typewriter
            \translate #'(-2 . 1)
            \column { \BLNK \BLNK \BLNK }
        } }      
      }       
    #}
  )
)

#(define-markup-command 
  (hfiOne layout props FS Sub Mid) (markup? markup? markup? )
  "insert a harmony analysis symbol + ( 1 bass &  1 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
       \line {
        \override #'(baseline-skip . 1.4) {
          \center-column{       
            \line{ #FS }
            \line{ \typewriter \fontsize #-5 #Sub }
        } }  
        \super{
          \override #'(baseline-skip . 1.5) {
            \fontsize #-4 \typewriter
            \translate #'(-2 . 1)
            \column { \BLNK #Mid \BLNK }
        } }      
      }       
    #}
  )
)

#(define-markup-command 
  (hfiTwo layout props FS Sub Mid Top) (markup? markup? markup? markup? )
  "insert a harmony analysis symbol + ( 1 bass &  2 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
       \line {
        \override #'(baseline-skip . 1.4) {
          \center-column{       
            \line{ #FS }
            \line{\typewriter \fontsize #-5 #Sub }
        } }  
        \super{
           \override #'(baseline-skip . 1.5) {
            \fontsize #-4 \typewriter
            \translate #'(-2 . 1)
            \column { #Top #Mid \BLNK }
        } }      
      }       
    #}
  )
)


#(define-markup-command 
  (hfiTri layout props FS Sub Bot Mid Top) (markup? markup? markup? markup? markup? )
  "insert a harmony analysis symbol + ( 1 bass &  3 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
      \line {
        \override #'(baseline-skip . 1.4) {
          \center-column{       
            \line{ #FS }
            \line{ \typewriter \fontsize #-5 #Sub }
        } }  
        \super{
           \override #'(baseline-skip . 1.5) {
            \fontsize #-4 \typewriter
            \translate #'(-2 . 1)
            \column { #Top #Mid #Bot }
        } }      
      }       
    #}
  )
) 
