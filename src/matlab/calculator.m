% This function takes two arguments, and do addition, then write result in result.txt of the current dir
function z = add(x,y)
z = x+y;
fileID=fopen('result.txt','w');
fprintf(fileID,'%f \n',z);
fclose(fileID);
end

