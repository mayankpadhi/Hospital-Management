/* Processed by ecpg (4.11.0) */
/* These include files are added by the preprocessor */
#include <ecpglib.h>
#include <ecpgerrno.h>
#include <sqlca.h>
/* End of automatic include section */

#line 1 "embed2.pgc"
#include<stdio.h>
#include<string.h>

/* exec sql begin declare section */
   

    
    
    
  
   


#line 5 "embed2.pgc"
 char query [ 100 ] , name [ 30 ] , buf [ 20 ] ;
 
#line 7 "embed2.pgc"
 const char * target = "hospmng@localhost:5432" ;
 
#line 8 "embed2.pgc"
 const char * user = "hospmanage" ;
 
#line 9 "embed2.pgc"
 const char * passwd = "qwert" ;
 
#line 10 "embed2.pgc"
 int pid , did ;
 
#line 11 "embed2.pgc"
 char remarks [ 30 ] , pid1 [ 6 ] ;
/* exec sql end declare section */
#line 13 "embed2.pgc"


int main(void) {

	{ ECPGconnect(__LINE__, 0, target , user , passwd , NULL, 0); }
#line 17 "embed2.pgc"


	//ECPGdebug(1, stderr);

	//EXEC SQL CONNECT TO : dbname
	{ ECPGdo(__LINE__, 0, 1, NULL, 0, ECPGst_normal, "set SEARCH_PATH to hospmanage", ECPGt_EOIT, ECPGt_EORT);}
#line 22 "embed2.pgc"

	
	printf("Enter the pid to see the report: ");
	scanf("%s", &pid1);

	strcpy(query, "select pid, did, remarks from reports where pid= ");
	strcat(query, pid1);
	//EXEC SQL select pid, did, remarks from reports where pid= :pid1;
	
	//strcpy(query, "select pid, did, remarks from reports where pid= 3008");	
	//EXEC SQL :query;
	{ ECPGprepare(__LINE__, NULL, 0, "query_prep", query);}
#line 33 "embed2.pgc"

	/* declare reports cursor for $1 */
#line 34 "embed2.pgc"

	{ ECPGdo(__LINE__, 0, 1, NULL, 0, ECPGst_normal, "declare reports cursor for $1", 
	ECPGt_char_variable,(ECPGprepared_statement(NULL, "query_prep", __LINE__)),(long)1,(long)1,(1)*sizeof(char), 
	ECPGt_NO_INDICATOR, NULL , 0L, 0L, 0L, ECPGt_EOIT, ECPGt_EORT);}
#line 35 "embed2.pgc"

	//printf("patient: %d\n", c);

	while(sqlca.sqlcode== 0){
	{ ECPGdo(__LINE__, 0, 1, NULL, 0, ECPGst_normal, "fetch reports", ECPGt_EOIT, 
	ECPGt_int,&(pid),(long)1,(long)1,sizeof(int), 
	ECPGt_NO_INDICATOR, NULL , 0L, 0L, 0L, 
	ECPGt_int,&(did),(long)1,(long)1,sizeof(int), 
	ECPGt_NO_INDICATOR, NULL , 0L, 0L, 0L, 
	ECPGt_char,(remarks),(long)30,(long)1,(30)*sizeof(char), 
	ECPGt_NO_INDICATOR, NULL , 0L, 0L, 0L, ECPGt_EORT);}
#line 39 "embed2.pgc"
	
	printf("%d\t %d\t %s\n", pid, did, remarks);
	}

	{ ECPGdisconnect(__LINE__, "CURRENT");}
#line 43 "embed2.pgc"


	return 0;
}
