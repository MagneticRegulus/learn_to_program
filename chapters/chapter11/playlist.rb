# Find music files
$music_names = Dir['C:/Sites/workspace/learn_to_prog/chapters/chapter11/test_music/*.mp3']

def shuffler unshuffled
  filename = 'playlist.m3u'
  shuffled = []
  while unshuffled.size > 0 do
    n = unshuffled.length
    index_of_unshuffled = rand(n) - 1
    shuffled.push($music_names[index_of_unshuffled])
    unshuffled.delete_at(index_of_unshuffled)
  end
  File.open filename, 'w' do |f|
    f.write shuffled
  end
end

shuffler $music_names

# Cannot get the playlist to play, but it did what it needed to do.
# I have not created the "better" playlist as I do not have a lot of music on my computer
# And could not replicate a diverse enough pool of files to warrant an update my shuffler method.
