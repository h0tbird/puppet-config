#------------------------------------------------------------------------------
# Class user::debo
#------------------------------------------------------------------------------

class user::debo inherits user::virtual {

    realize (
        User[ 'debo' ],
        Group[ 'debo' ],
    )
}