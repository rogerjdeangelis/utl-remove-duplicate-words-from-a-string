Remove duplicate words from a string

github
https://tinyurl.com/y9oe38t4
https://github.com/rogerjdeangelis/utl-remove-duplicate-words-from-a-string

SAS Forum
https://tinyurl.com/y77f7ysq
https://communities.sas.com/t5/SAS-Programming/De-dup-a-list-of-values-stored-in-a-variable-separated-by-commas/m-p/514931


INPUT
=====

 roger,roger,mary,stan,george,mike,stan,mike


EXAMPLE OUTPUT
--------------

 roger,roger,mary,stan,george,mike,stan,mike


PROCESS
=======

data want;

  retain lst "roger,roger,mary,stan,george,mike,stan,mike";
  length want $200;
  do idx=1 to countc(lst,',')+1;
      wrd=scan(lst,idx);
      * if not in want add it to want - want is initially empty;
      if index(want,strip(wrd))=0 then want=catx(',',want,wrd);
  end;
  drop idx;

run;quit;
