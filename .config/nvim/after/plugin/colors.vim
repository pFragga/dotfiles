" toggle light/dark theme during day/night
let &background = strftime("%H") < 20 ? "light" : "dark"

colorscheme paramount
