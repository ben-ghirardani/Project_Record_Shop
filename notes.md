from albums.index

<h1>Stock List</h1>

<% for album in @albums %>

<p>artist name<%= album.artists.name %></p>
<p>album name<%= album.name %></p>
<% end %>