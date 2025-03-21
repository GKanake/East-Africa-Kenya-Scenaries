library(shiny)
library(mapgl)
mapboxgl.accessToken = Sys.getenv("MAPBOX_PUBLIC_TOKEN")


ui <- fluidPage(
  tags$link(href = "https://fonts.googleapis.com/css2?family=Cabin:ital,wght@0,400..700;1,400..700&display=swap", rel="stylesheet"),
  story_map(
    map_id = "map",
    font_family = "Cabin",
    text_color = "#013220",
    sections = list(
      "intro" = story_section(
        "Explore Breathtaking Landscapes in East Africa",
        content = list(
          tags$p("Embark on a Visual Safari: Soar Above East Africa's Majestic Peaks and Waters!"),
          tags$p("Scroll down to begin our journey..."),
          tags$img(src = "https://lh5.googleusercontent.com/p/AF1QipPVrBmg119zo-q2Udd_zRoC9aNNhjMC8qwBmZ6j=w408-h510-k-no",
                   width = "100%", 
                   alt = "Kenya")
        ),
        position = "right"
      ),
      "kenya" = story_section(
        "Mount Kenya",
        content = list(
          tags$p("At 5,199 meters, Mount Kenya is the highest mountain in Kenya and the second highest in Africa."),
          tags$p("It is an extinct stratovolcano with multiple peaks, offering breathtaking scenery and rich biodiversity."),
          tags$img(src = "https://lh5.googleusercontent.com/p/AF1QipO9_pN6-ST-Nudm98Re3Godf3sen_qUf91OeWLV=w459-h306-k-no",
                   width = "100%", 
                   alt = "Lake Naivasha view")
        )
      ),
      "elgon" = story_section(
        "Mount Elgon",
        content = list(
          tags$p("Mount Elgon (4,321 m) is an extinct shield volcano, shared between Kenya and Uganda."),
          tags$p("It features vast calderas, numerous caves, and rich flora and fauna."),
          tags$img(src = "https://imgs.search.brave.com/0m4EMsAuBk-BOblYkBgHIX3NST07gKRAbGlqpMeZE_s/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy8x/LzExL01vdW50LWVs/Z29uLW5hdGlvbmFs/LmpwZw",
                   width = "100%", 
                   alt = "")
        )
      ),
      "aberdare" = story_section(
        "Aberdare Ranges",
        content = list(
          tags$p("The Aberdare Range, with Satima Peak reaching 4,001 meters, is a beautiful mountain range in central Kenya."),
          tags$p("The range is known for its scenic landscapes and diverse wildlife."),
          tags$img(src = "https://imgs.search.brave.com/63KxV5DDvpaRkY6btRgYr_gj7n3KvY_XjzR19h_fDIU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/d2lsZGxpZmVrZW55/YXNhZmFyaS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMjAv/MTAvc2FkZi5qcGc",
                   width = "100%", 
                   alt = "")
        )
      ),
      "meru" = story_section(
        "Mount Meru",
        content = list(
          tags$p("Mount Meru (4,562 m) is located in Tanzania, near the Kenyan border."),
          tags$p("It is an active stratovolcano, offering stunning hiking experiences."),
          tags$img(src = "https://imgs.search.brave.com/eOfjmvGCK1zM7W9ARZs_U3vaGyeIwaCuESGSKszEm4k/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvODc1/NDI5OTgwL3Bob3Rv/L3RoZS1zdW1taXQt/b2YtbW91bnQtbWVy/dS5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9emFjYjRvQXNS/cjlTdlRzUGxRNG1Y/MmRkdmh5S1FQaF9t/XzJpZGFHNEVfbz0",
                   width = "100%", 
                   alt = "")
        )
      ),
      "oldonyosabuk" = story_section(
        "Ol Donyo Sabuk",
        content = list(
          tags$p("Ol Donyo Sabuk, also known as Kilimambogo, is a solitary mountain rising to 2,145 meters in central Kenya."),
          tags$p("Located northeast of Nairobi, it is part of Ol Donyo Sabuk National Park, a haven for wildlife and hiking enthusiasts."),
          tags$p("The mountain offers panoramic views of the surrounding plains and is historically significant due to Lord William Northrup McMillan’s residence at its base."),
          tags$img(src = "https://imgs.search.brave.com/pZjuc7Cd0PuVRCWUghxBZKHaxo_7etCujkUh7K_9JJA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9kMnJ1/Mm12dWg1d3gyNC5j/bG91ZGZyb250Lm5l/dC9sb2NhdGlvbl9i/b290c3RyYXAvMTUx/OS9vbF9kb255b19z/YWJ1a19fMTkyMHg4/NjQuanBn",
                   width = "100%", 
                   alt = "")
        ), position = "right"
      ),
      "kilimanjaro" = story_section(
        "Mount Kilimanjaro",
        content = list(
          tags$p("Mount Kilimanjaro, Africa’s highest peak at 5,895 meters, is a world-renowned stratovolcano located in Tanzania, near the Kenyan border."),
          tags$p("Though primarily in Tanzania, the mountain is visible from Kenya and plays a crucial role in the Amboseli ecosystem."),
          tags$p("Its snow-capped peaks and diverse climatic zones make it a popular trekking destination for climbers from around the world."),
          tags$img(src = "https://imgs.search.brave.com/Qei_aXfERvlrhEWphFrv_hFdzxOeO21Ed6aU2Pb3B8Q/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTMw/NDU2NDIwMS9waG90/by92aWV3LW9mLWtp/bGltYW5kamFyby1t/b3VudC5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9UXRDY3dQ/aGgzTDN5NHAySUVr/SGhidjZBdi1xVmhs/NGd3b214SjhPTDVC/az0",
                   width = "100%", 
                   alt = "")
        )
      ),
      "naivasha" = story_section(
        "Lake Naivasha",
        content = list(
          tags$p("Lake Naivasha is a freshwater lake in Kenya, located northwest of Nairobi, in the Great Rift Valley."),
          tags$p("The lake is famous for its rich biodiversity, supporting a variety of bird species, including fish eagles, pelicans, and flamingos."),
          tags$p("It is also home to hippos and serves as an important water source for local communities and wildlife."),
          tags$img(src = "https://lh5.googleusercontent.com/p/AF1QipNXSgfMtxmQyXk-5ASk7akcSmZpAxpqIqD4F76H=w459-h306-k-no",
                   width = "100%", 
                   alt = "Lake Naivasha view")
        )
      ),
      "longonot" = story_section(
        "Mount Longonot",
        content = list(
          tags$p("Mount Longonot (2,776 m) is a stratovolcano located in the Great Rift Valley."),
          tags$p("It features a crater at the summit and offers stunning panoramic views."),
          tags$img(src = "https://lh5.googleusercontent.com/p/AF1QipMg25IcDiH-621yyY_czHs7hdIU5SxnSyLgoFzX=w458-h306-k-no",
                   width = "100%", 
                   alt = "Mount Longonot view")
        )
      )
    )
  )
)


server <- function(input, output, session) {
  output$map <- renderMapboxgl({
    mapboxgl(
      style = "mapbox://styles/mapbox/satellite-streets-v12",
      center = c(37.905117,  -0.023790),  # Center of Kenya roughly
      zoom = 7,
      pitch = 0,
      bearing = 0,
      scrollZoom = FALSE,
      access_token = Sys.getenv("MAPBOX_PUBLIC_TOKEN")
    ) |>
      add_raster_dem_source(
        id = "mapbox-dem",
        url = "mapbox://mapbox.mapbox-terrain-dem-v1",
        tileSize = 512,
        maxzoom = 14
      ) |>
      set_terrain(
        source = "mapbox-dem",
        exaggeration = 2
      ) |> 
      add_navigation_control(visualize_pitch = TRUE)
  })
  
  # Intro section - wide view of Kenya
  on_section("map", "intro", {
    mapboxgl_proxy("map") |>
      fly_to(
        center = c(37.308403,  -0.152138),
        zoom = 7,
        pitch = 45,
        bearing = 0,
        duration = 3000
      )
  })
  
  # Mount Kenya
  on_section("map", "kenya", {
    mapboxgl_proxy("map") |>
      ease_to(
        center = c(37.308403, -0.152138),
        zoom = 12,
        pitch = 90,
        bearing = 45,
        duration = 5000
      )
  })
  
  # Mount Elgon
  on_section("map", "elgon", {
    mapboxgl_proxy("map") |>
      ease_to(
        center = c(34.554238, 1.097456),
        zoom = 12,
        pitch = 75,
        bearing = -30,
        duration = 5000
      )
  })
  
  # Aberdare Range (Satima)
  on_section("map", "aberdare", {
    mapboxgl_proxy("map") |>
      ease_to(
        center = c(36.665671, -0.415281),
        zoom = 12,
        pitch = 70,
        bearing = 130,
        duration = 5000
      )
  })
  
  # Mount Longonot
  on_section("map", "longonot", {
    mapboxgl_proxy("map") |>
      ease_to(
        center = c(36.447260, -0.920998),
        zoom = 13,
        pitch = 20,
        bearing = 120,
        duration = 5000
      )
  })
  # Mount Meru
  on_section("map", "meru", {
    mapboxgl_proxy("map") |>
      ease_to(
        center = c(36.762698, -3.239276),
        zoom = 12,
        pitch = 75,
        bearing = 30,
        duration = 5000
      )
  })
  # Lake Nakuru - Top View
  on_section("map", "naivasha", {
    mapboxgl_proxy("map") |>
      ease_to(
        center = c(36.354148,  -0.766694),  # Lake Naivasha's coordinates
        zoom = 12,   # Increased zoom for a better top view
        pitch = 0,   # Set pitch to 0 for a direct top-down view
        bearing = 0, # North-up standard orientation
        duration = 5000
      )
  })
  # Lake Turkana
  on_section("map", "oldonyosabuk", {
    mapboxgl_proxy("map") |>
      ease_to(
        center = c(37.258906, 1.138329),
        zoom = 12,
        pitch = 75,
        bearing = 30,
        duration = 5000
      )
  })
  # Lake Nakuru
  on_section("map", "kilimanjaro", {
    mapboxgl_proxy("map") |>
      ease_to(
        center = c( 37.355627, -3.067425),
        zoom = 11.5,
        pitch = 75,
        bearing = 330,
        duration = 5000
      )
  })
}


shinyApp(ui, server)

