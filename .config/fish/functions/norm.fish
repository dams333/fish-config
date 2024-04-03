function norm
	find . -path ./libs/*minilibx-linux -prune -o -name "mlx.h" -prune -o \( -name "*.c" -o -name "*.h" \) -exec norminette {} \+
end
