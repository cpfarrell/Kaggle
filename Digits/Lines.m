function lines = Lines(X, y)

lines = 0;

for ipicture = 4:10
%for ipicture = 1:rows(X)
    picture = reshape(X(ipicture,:), 28, []);
    for irow = 1:rows(picture)
        alreadyfound=false;
    	for icolumn = 1:columns(picture)
            line=false;
	    if(X(irow, icolumn)>0 && line) 
	end
    end
%    y(ipicture)
%    picture
end
end
