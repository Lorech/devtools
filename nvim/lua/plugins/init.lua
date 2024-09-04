-- Configures subdirectories of `plugins` to load into Lazyvim,
-- ensuring cleaner directory structure with working plugins.
return {
	{ import = "plugins.colorschemes" },
	{ import = "plugins.development" },
	{ import = "plugins.editing" },
	{ import = "plugins.ui" },
}
