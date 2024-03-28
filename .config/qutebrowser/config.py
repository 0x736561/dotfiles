config.load_autoconfig()
config.source('gruvbox.py')

# Teclas de atalho
config.bind('gp', 'tab-next')
config.bind('ga', 'tab-prev')
config.bind('g1', 'tab-focus 1')
config.bind('g2', 'tab-focus 2')
config.bind('g3', 'tab-focus 3')
config.bind('g4', 'tab-focus 4')
config.bind('g5', 'tab-focus 5')
config.bind('g6', 'tab-focus 6')
config.bind('g7', 'tab-focus 7')
config.bind('g8', 'tab-focus 8')
config.bind('g9', 'tab-focus 9')
config.bind('g0', 'tab-focus 10')

# Adblock list
c.content.blocking.adblock.lists = [
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2023.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/legacy.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/badware.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/resource-abuse.txt"
]
