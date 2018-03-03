/* Processed by ecpg (4.11.0) */
/* These include files are added by the preprocessor */
#include <ecpglib.h>
#include <ecpgerrno.h>
#include <sqlca.h>
/* End of automatic include section */

#line 1 "embedUp.pgc"
#include<stdio.h>
#include<string.h>

/* exec sql begin declare section */
   

    
    
    
 
   


#line 5 "embedUp.pgc"
 char query [ 100 ] , name [ 30 ] , buf [ 20 ] ;
 
#line 7 "embedUp.pgc"
 const char * target = "hospmng@localhost:5432" ;
 
#line 8 "embedUp.pgc"
 const char * user = "hospmanage" ;
 
#line 9 "embedUp.pgc"
 const char * passwd = "qwert" ;
 
#line 10 "embedUp.pgc"
 int pid ;
 
#line 11 "embedUp.pgc"
 char M_Name [ 30 ] , qry_upd [ 30 ] , rate [ 10 ] ;
/* exec sql end declare section */
#line 13 "embedUp.pgc"



void update_medcost(){
	printf("Enter The medicine name and the rate: ");
	scanf("%s", M_Name);
	
	printf("Enter the rate: ");
	scanf("%s", rate);

	printf("%s \n %s", M_Name, rate);
	/*
	strcpy(qry_upd, "Update available_medicines SET rate = ");
	strcat(qry_upd, rate);
	strcat(qry_upd, "where M_Name= ");
	strcat(qry_upd, M_Name);
	*/
	
	/* exec sql whenever not found  continue ; */
#line 31 "embedUp.pgc"

	//EXEC SQL EXECUTE STMT;
	{ ECPGdo(__LINE__, 0, 1, NULL, 0, ECPGst_normal, "update available_medicine set M_rate = $1  where M_Name = $2 ", 
	ECPGt_char,(rate),(long)10,(long)1,(10)*sizeof(char), 
	ECPGt_NO_INDICATOR, NULL , 0L, 0L, 0L, 
	ECPGt_char,(M_Name),(long)30,(long)1,(30)*sizeof(char), 
	ECPGt_NO_INDICATOR, NULL , 0L, 0L, 0L, ECPGt_EOIT, ECPGt_EORT);}
#line 33 "embedUp.pgc"

	{ ECPGtrans(__LINE__, NULL, "commit");}
#line 34 "embedUp.pgc"

}

void update_testcost(){
	printf("Enter The test name: ");
	scanf("%s", M_Name);
	
	printf("Enter the rate: ");
	scanf("%s", rate);

	/*
	strcpy(qry_upd, "Update available_medicines SET rate = ");
	strcat(qry_upd, rate);
	strcat(qry_upd, "where M_Name= ");
	strcat(qry_upd, M_Name);
	*/
	
	/* exec sql whenever not found  continue ; */
#line 51 "embedUp.pgc"

	//EXEC SQL EXECUTE STMT;
	{ ECPGdo(__LINE__, 0, 1, NULL, 0, ECPGst_normal, "update available_test set T_rate = $1  where T_Name = $2 ", 
	ECPGt_char,(rate),(long)10,(long)1,(10)*sizeof(char), 
	ECPGt_NO_INDICATOR, NULL , 0L, 0L, 0L, 
	ECPGt_char,(M_Name),(long)30,(long)1,(30)*sizeof(char), 
	ECPGt_NO_INDICATOR, NULL , 0L, 0L, 0L, ECPGt_EOIT, ECPGt_EORT);}
#line 53 "embedUp.pgc"

	
	{ ECPGtrans(__LINE__, NULL, "commit");}
#line 55 "embedUp.pgc"

}

int main(void) {

	{ ECPGconnect(__LINE__, 0, target , user , passwd , NULL, 0); }
#line 60 "embedUp.pgc"


	ECPGdebug(1, stderr);

	int ch;
	//EXEC SQL CONNECT TO : dbname

	{ ECPGdo(__LINE__, 0, 1, NULL, 0, ECPGst_normal, "set SEARCH_PATH to hospmanage", ECPGt_EOIT, ECPGt_EORT);}
#line 67 "embedUp.pgc"

	
	printf("Enter your to update:\n1. Medicine Rate\n2. Test Rate");
	scanf("%d", &ch);
	
	switch(ch){
	case 1: update_medcost();
		break;
	
	case 2: update_testcost();
		break;

	default:
		printf("exit");
		//exit(0);
	}
	
//	strcpy(query, "select pid, did, remarks from reports where pid= 3008");	
	//EXEC SQL :query;
//	EXEC SQL PREPARE query_prep FROM :query;
//	EXEC SQL DECLARE reports CURSOR FOR query_prep;
	//EXEC SQL OPEN reports;
	/* exec sql whenever not found  break ; */
#line 89 "embedUp.pgc"

	
//	while(1){
//	EXEC SQL FETCH reports INTO :pid, :did, :remarks;	
//	printf("%d\t %d\t %s\n", pid, did, remarks);
	
//	}

	{ ECPGdisconnect(__LINE__, "CURRENT");}
#line 97 "embedUp.pgc"


	return 0;
}
