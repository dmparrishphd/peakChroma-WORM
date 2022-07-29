function ( h = 0 , l = 85 , tolerance = 1 ) {
    stopifnot (
        is.numeric ( h ) ,
        length ( h ) == 1 ,
        is.numeric ( l ) ,
        length ( l ) == 1 )
    CHROMA <- seq ( from = 0 , to = 180 , by = tolerance )
    HCL <- hcl ( h = h , l = l , c = CHROMA , fixup = FALSE )
    CHROMA [ sum ( ! is.na ( HCL ) ) ] }
