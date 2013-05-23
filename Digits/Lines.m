function lines = Lines(X, y)

lines = zeros(size(y));

for ipicture = 1:1
%for ipicture = 1:rows(X)
    picture = reshape(X(ipicture,:), 28, []);
    for irow = 1:rows(picture)
        alreadyfound=false;
    	for icolumn = 1:columns(picture)
            line=false;
            foundonline=false;
	    if(picture(irow, icolumn)>0 && line==false)  
	    	 line = true;
		 foundonline = true;
	    	 if(alreadyfound==false) 
	             lines(ipicture) = lines(ipicture) + 1;
%                     irow
%                     icolumn
	         endif
            endif            
	    if(picture(irow, icolumn)==0 && line==true)
	    	 line=false;
            endif
 	    alreadyfound = foundonline;
	end
        if(alreadyfound) irow
%    irow
%    alreadyfound
    end
%    y(ipicture)
%    picture

end
%plot(y, lines, 'rx', 'MarkerSize', 10);

end
