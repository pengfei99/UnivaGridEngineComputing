% This script takes two arguments, and do addition, then write result in result.txt of the current dir
z = x+y;
fileID=fopen('result.txt','w');
fprintf(fileID,'%f \n',z);
fclose(fileID);

