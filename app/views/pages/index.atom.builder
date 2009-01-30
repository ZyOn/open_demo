atom_feed do |feed|
	feed.title("Open Source Has Never Been Better")
	feed.upated(@pages.first.created_at)
	
	@pages.each do |page|
		feed.entry(page.title) do |entry|
		  entry.title(page.title)
		  entry.content(page.body, :type => 'html')
		  entry.author {|author| author.name("M. Zyon McCalley-S.")}
	  end
  	end
  end
  