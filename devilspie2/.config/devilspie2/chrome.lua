if (string.match(get_window_name(),"Google Chrome") and get_window_role()=="browser") then
    set_window_workspace(1)
	maximize()
	xy(1921,0)
	change_workspace(1)
	debug_print("Chrome Properties Applied")
end
