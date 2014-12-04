#' count_upperC 
#'
#' @description Count uppercase char in a string 
#' 
#' @param string
#' 
#' 
#' @references 
#' Istituto di Biometeorologia Firenze Italy
#' @author  Alfonso crisci \email{a.crisci@@ibimet.cnr.it} Valentina Grasso \email{v.grasso@ibimet.cnr.it} 
#' @keywords 
#' @examples 
#' fava="Attento CADE!";
#' count_uppercase(fava) #5
#' @export



count_upperC=function(string) {
 res=nchar(string)-nchar(gsub("[A-Z]", "",string))
 return(res)
}





