/* Processed by ecpg (4.11.0) */
/* These include files are added by the preprocessor */
#include <ecpglib.h>
#include <ecpgerrno.h>
#include <sqlca.h>
/* End of automatic include section */

#line 1 "embedSQL.pgc"
#include<stdio.h>
#include<string.h>

/* exec sql begin declare section */
   

    
    
    
  


#line 5 "embedSQL.pgc"
 char query [ 100 ] , name [ 30 ] , buf [ 20 ] ;
 
#line 7 "embedSQL.pgc"
 const char * target = "hospmng@localhost:5432" ;
 
#line 8 "embedSQL.pgc"
 const char * user = "hospmanage" ;
 
#line 9 "embedSQL.pgc"
 const char * passwd = "qwert" ;
 
#line 10 "embedSQL.pgc"
 int pid , age ;
/* exec sql end declare section */
#line 12 "embedSQL.pgc"


int main(void) {

	{ ECPGconnect(__LINE__, 0, target , user , passwd , NULL, 0); }
#line 16 "embedSQL.pgc"


	//ECPGdebug(1, stderr);

	//EXEC SQL CONNECT TO : dbname

	{ ECPGdo(__LINE__, 0, 1, NULL, 0, ECPGst_normal, "set SEARCH_PATH to hospmanage", ECPGt_EOIT, ECPGt_EORT);}
#line 22 "embedSQL.pgc"

	strcpy(query, "select pid, age from patient");	
	//EXEC SQL :query;
	{ ECPGprepare(__LINE__, NULL, 0, "query_prep", query);}
#line 25 "embedSQL.pgc"

	/* declare patient cursor for $1 */
#line 26 "embedSQL.pgc"

	{ ECPGdo(__LINE__, 0, 1, NULL, 0, ECPGst_normal, "declare patient cursor for $1", 
	ECPGt_char_variable,(ECPGprepared_statement(NULL, "query_prep", __LINE__)),(long)1,(long)1,(1)*sizeof(char), 
	ECPGt_NO_INDICATOR, NULL , 0L, 0L, 0L, ECPGt_EOIT, ECPGt_EORT);}
#line 27 "embedSQL.pgc"

	//printf("patient: %d\n", c);

	while(sqlca.sqlcode== 0){
	{ ECPGdo(__LINE__, 0, 1, NULL, 0, ECPGst_normal, "fetch patient", ECPGt_EOIT, 
	ECPGt_int,&(pid),(long)1,(long)1,sizeof(int), 
	ECPGt_NO_INDICATOR, NULL , 0L, 0L, 0L, 
	ECPGt_int,&(age),(long)1,(long)1,sizeof(int), 
	ECPGt_NO_INDICATOR, NULL , 0L, 0L, 0L, ECPGt_EORT);}
#line 31 "embedSQL.pgc"
	
	printf("%d\t %d\n", pid, age);
	}

	{ ECPGdisconnect(__LINE__, "CURRENT");}
#line 35 "embedSQL.pgc"


	return 0;
}
