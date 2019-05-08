library(shiny)
library(shinydashboard)
library(shinydashboardPlus)

shinyUI(
    dashboardPagePlus(
        title = "CFgO | Dashboard", 
        
        enable_preloader = T,
        loading_duration = 1,
        
        ##### Header #####
        header = dashboardHeaderPlus(
            fixed = T,
            # Title
            title = "CFgO"
        ), #Closing Header
        
        ##### Dashboard Sidebar #####
        sidebar = dashboardSidebar(
            sidebarMenu(
                id = 'Tabs', 
                class = "sidebar-menu scroll-box", 
                menuItem("Dashboard", tabName = "tab_frontpage", icon = icon("dashboard")),
                menuItem(
                    "Profil", tabName = "tab_profile", icon = icon("user"),
                    badgeLabel = "online", badgeColor = "green"
                )
            )
        ), #Closing DashboardSidebar
        
        ##### Dashboard Body #####
        body = dashboardBody(
            tabItems(
                ### Tab 1:
                tabItem(
                    tabName = "tab_frontpage",
                    h1("CFgOgOgO"),
                    verbatimTextOutput("Environment")
                ),
                
                ### Tab 2:
                tabItem(
                    tabName = "tab_profile",
                    h1("Profil")
                )
                
            )#tabItems
        )#dashboardbody
        
        
    )
)
