function saveMovie(M, title, framerate)


newVid = VideoWriter(title, 'MPEG-4');
newVid.FrameRate = framerate;
newVid.Quality = 100;
open(newVid);
for i = 1:length(M)
    writeVideo(newVid, M(i));
end
close(newVid)
end