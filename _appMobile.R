# top-level framework for mobile version
# last update:2017-03-01

source('uiPiaConfig.R')

appMobile <- function(){
        navbarPage(
                uiOutput('hdrImageLinkMobile'),
                id='page',
                collapsible=TRUE,
                inverse=FALSE,
                windowTitle=paste0(appTitle, ' | OwnYourData'),
                tabPanel('Tab #1',
                         p('hello mobile world')
                ),
                uiPiaConfig()
        )
}