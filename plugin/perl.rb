plugin {
	match_command_line /^(perl|\S+\.pl)(\s|$)/
	solution_for /\bCan't locate (\S+)\.pm in \@INC/ do
		module_name = @m[1].gsub /\//, "::"
		run("cpanm #{module_name}");
	end
}

