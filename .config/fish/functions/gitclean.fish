function gitclean
	if [ (count $argv) -eq 1 -a "$argv[1]" = "--dry" ];
		git branch --merged | grep -Ev "(^\*|master|main|dev)"
	else
		git branch --merged | grep -Ev "(^\*|master|main)" | xargs git branch -d
	end
end
