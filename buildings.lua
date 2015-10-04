BUILDINGS = {
	{
		name = 'wooden_house',
		size = {
			x = 8,
			y = 5,
			z = 7,
		},
		odds = 5,
		building_surfaces = {
			'default:dirt_with_grass',
		},
		structure = {
			{
				{nil,    nil,    nil,   nil,     nil,    nil,    nil,    nil},
				{'tree', 'wood', 'wood', nil,    nil,    'wood', 'wood', 'tree'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'tree', 'wood', 'wood', 'wood', 'wood', 'wood', 'wood', 'tree'},
			},
			{
				{nil,    nil,    'torch',   nil,     nil,    'torch',    nil,    nil},
				{'tree', 'glass', 'tree', nil, nil, 'tree', 'glass', 'tree'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'glass', nil,    nil,    nil,    nil,    nil,    nil,    'glass'},
				{'glass', nil,    nil,    nil,    nil,    nil,    nil,    'glass'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'tree', 'wood', 'glass', 'wood', 'wood', 'glass', 'wood', 'tree'},
			},
			{
				{nil,    nil,    nil,   nil,     nil,    nil,    nil,    nil},
				{'tree', 'wood', 'wood', 'wood', 'wood', 'wood', 'wood', 'tree'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'tree', 'wood', 'wood', 'wood', 'wood', 'wood', 'wood', 'tree'},
			},
			{
				{nil,    nil,    nil,   nil,     nil,    nil,    nil,    nil},
				{'wood', 'wood', 'wood', 'wood', 'wood', 'wood', 'wood', 'wood'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'wood', nil,    nil,    nil,    nil,    nil,    nil,    'wood'},
				{'wood', 'wood', 'wood', 'wood', 'wood', 'wood', 'wood', 'wood'},
			},
			{
				{nil,    nil,    nil,   nil,     nil,    nil,    nil,    nil},
				{nil,    nil,    nil,   nil,     nil,    nil,    nil,    nil},
				{nil,    'wood', 'wood', 'wood', 'wood', 'wood', 'wood', nil},
				{nil,    'wood', 'wood', 'wood', 'wood', 'wood', 'wood', nil},
				{nil,    'wood', 'wood', 'wood', 'wood', 'wood', 'wood', nil},
				{nil,    'wood', 'wood', 'wood', 'wood', 'wood', 'wood', nil},
				{nil,    nil,    nil,   nil,     nil,    nil,    nil,    nil},
			},
		},
	},
	{
		name = 'cobblestone_watchtower',
		size = {
			x = 4,
			y = 9,
			z = 4,
		},
		odds = 20,
		building_surfaces = {
			'default:dirt_with_grass',
			'default:sand',
		},
		structure = {
			{
				{nil, 'cobble', 'cobble', nil},
				{'cobble', nil, nil, 'cobble'},
				{'cobble', nil, nil, 'cobble'},
				{nil, 'cobble', 'cobble', nil},
			},
			{
				{nil, nil, nil, nil},
				{nil, 'cobble', 'cobble', nil},
				{nil, 'cobble', 'cobble', nil},
				{nil, nil, nil, nil},
			},
			{
				{nil, nil, nil, nil},
				{nil, 'cobble', 'cobble', nil},
				{nil, 'cobble', 'cobble', nil},
				{nil, nil, nil, nil},
			},
			{
				{nil, nil, nil, nil},
				{nil, 'cobble', 'cobble', nil},
				{nil, 'cobble', 'cobble', nil},
				{nil, nil, nil, nil},
			},
			{
				{nil, nil, nil, nil},
				{nil, 'cobble', 'cobble', nil},
				{nil, 'cobble', 'cobble', nil},
				{nil, nil, nil, nil},
			},
			{
				{'cobble', 'cobble', 'cobble', 'cobble'},
				{'cobble', 'cobble', 'cobble', 'cobble'},
				{'cobble', 'cobble', 'cobble', 'cobble'},
				{'cobble', 'cobble', 'cobble', 'cobble'},
			},
			{
				{'default:fence_wood', 'default:fence_wood', 'default:fence_wood', 'default:fence_wood'},
				{'default:fence_wood', 'torch', 'torch', 'default:fence_wood'},
				{'default:fence_wood', 'torch', 'torch', 'default:fence_wood'},
				{'default:fence_wood', 'default:fence_wood', 'default:fence_wood', 'default:fence_wood'},
			},
			{
				{'wood', 'wood', 'wood', 'wood'},
				{'wood', 'wood', 'wood', 'wood'},
				{'wood', 'wood', 'wood', 'wood'},
				{'wood', 'wood', 'wood', 'wood'},
			},
			{
				{nil, nil, nil, nil},
				{nil, 'wood', 'wood', nil},
				{nil, 'wood', 'wood', nil},
				{nil, nil, nil, nil},
			},
		},
	},
	{
		name = 'cobblestone_watchtower_ruin',
		size = {
			x = 4,
			y = 9,
			z = 4,
		},
		odds = 2,
		building_surfaces = {
			'default:dirt_with_grass',
			'default:sand',
		},
		structure = {
			{
				{nil, nil, 'mossycobble', nil},
				{'cobble', nil, nil, nil},
				{'cobble', nil, nil, nil},
				{nil, 'mossycobble', 'mossycobble', nil},
			},
			{
				{nil, nil, nil, nil},
				{nil, 'mossycobble', 'cobble', nil},
				{nil, 'cobble', nil, nil},
				{nil, nil, nil, nil},
			},
			{
				{nil, nil, nil, nil},
				{nil, 'cobble', 'mossycobble', nil},
				{nil, nil, 'mossycobble', nil},
				{nil, nil, nil, nil},
			},
			{
				{nil, nil, nil, nil},
				{nil, nil, 'mossycobble', nil},
				{nil, nil, nil, nil},
				{nil, nil, nil, nil},
			},
			{
				{nil, nil, nil, nil},
				{nil, 'mossycobble', 'cobble', nil},
				{nil, 'cobble', nil, nil},
				{nil, nil, nil, nil},
			},
			{
				{'cobble', nil, 'cobble', nil},
				{'cobble', 'cobble', nil, 'cobble'},
				{'cobble', 'mossycobble', nil, 'cobble'},
				{'cobble', nil, nil, 'cobble'},
			},
			{
				{nil, nil, 'default:fence_wood', nil},
				{'default:fence_wood', 'torch', nil, nil},
				{'default:fence_wood', nil, nil, nil},
				{nil, nil, nil, 'default:fence_wood'},
			},
			{
				{nil, nil, 'wood', nil},
				{'wood', nil, nil, 'wood'},
				{'wood', nil, nil, 'wood'},
				{nil, 'wood', 'wood', 'wood'},
			},
			{
				{nil, nil, nil, nil},
				{nil, nil, nil, nil},
				{nil, 'wood', 'wood', nil},
				{nil, nil, nil, nil},
			},
		},
	},
}