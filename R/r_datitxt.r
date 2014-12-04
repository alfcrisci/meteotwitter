#' r_datitxt
#'
#' @description Wrapper for Dandelion API Nex service to recognize  entity in a text string
#' 
#' @param chartext
#' @param language
#' @param apiid
#' @param apikey
#' 
#' @references 
#' Istituto di Biometeorologia Firenze Italy
#' @author  Alfonso crisci \email{a.crisci@@ibimet.cnr.it} Valentina Grasso \email{v.grasso@ibimet.cnr.it} 
#' @keywords 
#' @examples 
#' testo="Andavano in tre in francia e siamo tornati in quattro".
#' r_datitxt(testo) 

#' @export


r_datitxt<-function(chartext,language="it",appid="XXXX",apikey="XXXXX") {
                
require(RCurl)
require(jsonlite)
chartext=gsub(" ","%20",chartext,ignore.case = FALSE,fixed=TRUE)

urlp=paste0("https://api.dandelion.eu/datatxt/nex/v1/?lang=",language,"&text=",chartext,"&","include=types%2Cabstract%2Ccategories%2Clod","&","$app_id=",appid,"&","$app_key=",apikey)

content=getURL(urlp,ssl.verifypeer = FALSE)
res=fromJSON(content)
return(list(entity=res$annotations$spot,confidenza=res$annotations$confidence,tipo=res$annotations$types,wiki=res$annotations$lod$wikipedia))

} 

