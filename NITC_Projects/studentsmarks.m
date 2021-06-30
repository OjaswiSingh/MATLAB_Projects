%Random Marks Generation
Marks = rand(50,5)*100;
Grades= null(50,5);


%Assigning Grade Points to corresponding Marks
for i=1:50   
    for j= 1:5  
        if Marks(i,j)>=90
            Grades(i,j)='S';
        elseif Marks(i,j)>=80
            Grades(i,j)='A';
        elseif Marks(i,j)>=70
            Grades(i,j)='B';
        elseif Marks(i,j)>=60
            Grades(i,j)='C';
        elseif Marks(i,j)>=50
            Grades(i,j)='D';
        elseif Marks(i,j)>=40
            Grades(i,j)='E';
        elseif Marks(i,j)>=35
            Grades(i,j)='R';
        else
            Grades(i,j)='F';
        end
    end
end
Credits=Grades;
Grades=char(Grades);

%Total marks obtained by each student
Total=sum(Marks,2);

%Average marks and standard deviation of each student 
Average=mean(Marks,2);
Standard_deviation=std(Marks);
countlessthan40=[0,0,0,0,0];
countmorethan85=[0,0,0,0,0];

%No. of students scoring less than 40 and more than 85
for i=1:50   
    for j=1 
        if Marks(i,j)<40
            countlessthan40(1,1)=countlessthan40(1,1)+1;
        elseif Marks(i,j)>85
            countmorethan85(1,1)=countmorethan85(1,1)+1;
        end
    end
     for j=2 
        if Marks(i,j)<40
            countlessthan40(1,2)=countlessthan40(1,2)+1;
        elseif Marks(i,j)>85
            countmorethan85(1,2)=countmorethan85(1,2)+1;
        end
     end
     for j=3 
        if Marks(i,j)<40
            countlessthan40(1,3)=countlessthan40(1,3)+1;
        elseif Marks(i,j)>85
            countmorethan85(1,3)=countmorethan85(1,3)+1;
        end
     end
     for j=4 
        if Marks(i,j)<40
            countlessthan40(1,4)=countlessthan40(1,4)+1;
        elseif Marks(i,j)>85
            countmorethan85(1,4)=countmorethan85(1,4)+1;
        end
     end
     for j=5 
        if Marks(i,j)<40
            countlessthan40(1,5)=countlessthan40(1,5)+1;
        elseif Marks(i,j)>85
            countmorethan85(1,5)=countmorethan85(1,5)+1;
        end
    end
end

%Calculating Sgpa of each student
for i=1:50
    for j=1:5
        if Credits(i,j)==83
            Credits(i,j)=10;
        elseif Credits(i,j)==82
            Credits(i,j)=4;
        elseif Credits(i,j)==70
            Credits(i,j)=0;
        elseif Credits(i,j)==69
            Credits(i,j)=5;
        elseif Credits(i,j)==68
            Credits(i,j)=6;
        elseif Credits(i,j)==67
            Credits(i,j)=7;
        elseif Credits(i,j)==66
            Credits(i,j)=8;
        elseif Credits(i,j)==65
            Credits(i,j)=9;
        end
    end
end
SGPA=(3*sum(Credits,2))/15;

%histogram of grades secured in each subject
Histo =[sum(Grades=='S');
    sum(Grades=='A');
    sum(Grades=='B');
    sum(Grades=='C');
    sum(Grades=='D');
    sum(Grades=='E');
    sum(Grades=='R');
    sum(Grades=='F')];
bar(Histo); % drawing of Graph

% rank list based on GPA.
S_No=null(50,1);
Rank=sort(SGPA,'descend');
 for i=1:50
    S_No(i,1)=i;
 end
Rank=[S_No Rank];


