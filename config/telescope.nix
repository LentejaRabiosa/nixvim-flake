{
	plugins.telescope = {
		enable = true;

		extensions = {
			fzf-native = {
				enable = true;
			};
			ui-select = {
				settings = {
					specific_opts = {
						codeactions = true;
					};
				};
			};
			undo = {
				enable = true;
			};
		};
		# If you'd prefer Telescope not to enter a normal-like mode when hitting escape (and instead exiting), you can map <Esc> to do so via:
		settings = {
			defaults = {
				color_devicons = false;
        border = true;
        prompt_title = "";
        results_title = null;
				mappings = {
					i = {
						"<esc>" = {
							__raw = ''
								function(...)
									return require("telescope.actions").close(...)
								end'';
						};
					};
				};
			};
		};
		keymaps = {
			"<leader><space>" = {
				action = "find_files";
				options.desc = "Find project files";
			};
			"<leader>/" = {
				action = "live_grep";
				options.desc = "Grep (root dir)";
			};
			"<leader>:" = {
				action = "command_history";
				options.desc = "Command History";
			};
			"<leader>b" = {
				action = "buffers";
				options.desc = "+buffer";
			};
			"<leader>ff" = {
				action = "find_files";
				options.desc = "Find project files";
			};
			"<leader>fr" = {
				action = "oldfiles";
				options.desc = "Recent";
			};
			"<leader>fb" = {
				action = "buffers";
				options.desc = "Buffers";
			};
			"<leader>gf" = {
				action = "git_files";
				options.desc = "Search git files";
			};
			"<leader>gc" = {
				action = "git_commits";
				options.desc = "Commits";
			};
			"<leader>gs" = {
				action = "git_status";
				options.desc = "Status";
			};
			"<leader>sa" = {
				action = "autocommands";
				options.desc = "Auto Commands";
			};
			"<leader>sb" = {
				action = "current_buffer_fuzzy_find";
				options.desc = "Buffer";
			};
			"<leader>d" = {
				action = "diagnostics";
				options.desc = "Workspace diagnostics";
			};
      "<leader>ds" = {
        action = "lsp_document_symbols";
        options.desc = "Lsp document symbols";
      };
			"<leader>sh" = {
				action = "help_tags";
				options.desc = "Help pages";
			};
			"<leader>sH" = {
				action = "highlights";
				options.desc = "Search Highlight Groups";
			};
			"<leader>km" = {
				action = "keymaps";
				options.desc = "Keymaps";
			};
			"<leader>sM" = {
				action = "man_pages";
				options.desc = "Man pages";
			};
			"<leader>sm" = {
				action = "marks";
				options.desc = "Jump to Mark";
			};
			"<leader>so" = {
				action = "vim_options";
				options.desc = "Options";
			};
		};
	};
  extraConfigLua = ''
    local telescope = require('telescope')
    telescope.setup{
        defaults = {
          disable_devicons = true,
        }
    }
  '';
}
