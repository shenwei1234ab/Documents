


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <mysql/mysql.h>

////unsigned int mysql_errno(MYSQL *mysql)

int main()
{
	
	int 	ret = 0;
	
	MYSQL 	mysql;
	MYSQL	*connect = NULL;
	
	connect = mysql_init(&mysql) ;
	if (connect == NULL)
	{
		ret =  mysql_errno(&mysql) ;
		printf("func mysql_init() err \n");
		return ret;
	}
	printf("func mysql_init() ok \n");
	
	
	connect = mysql_real_connect(connect, "localhost", "root", "123456", "mydb61", 0, NULL, 0);
	if (connect == NULL)
	{
		ret =  mysql_errno(&mysql) ;
		printf("func mysql_init() err \n");
		return ret;	
	}
	printf("func mysql_real_connect() ok \n");
	
	//��ѯ
	const char *query = "select *from emp";
	ret = mysql_query(&mysql, query);
	if (ret != 0)
	{
		ret =  mysql_errno(&mysql) ;
		printf("func mysql_query() err \n");
		return ret;	
	}
	
	//typedef char **MYSQL_ROW;               /* return data as array of strings */
	//typedef unsigned int MYSQL_FIELD_OFFSET; /* offset to current field */

	//��ȡ������� 
	//��������� ���Ժ���10������
	MYSQL_RES *result = mysql_store_result(&mysql);
	
	MYSQL_ROW row = NULL;
	while (row = mysql_fetch_row(result) ) 
	{
		// �Լ����� ��� ��ȡ selct��ѯ �ж�����
		//�Լ����� ��ȡ��ͷ�ĺ��� ...
		printf("%s, %s, %s, %s, %s, %s, %s, %s \n", row[0], row[1],row[2],row[3],row[4],row[5],row[6],row[7]);
	}
	
	mysql_free_result(result);
	

	mysql_close(&mysql);
	
	printf("hello...\n");
	return ret;
}

//����ָ�� �����ڴ�ģ��

//����ָ�� �ӷ����ڴ�� �Ƕ� ��������...

/*
char ** mysql_store_result (MYSQL_RES *res)
{
	int i = 0;
	char **p = (char **) malloc(sizeof(char *)  * 7);
	for (i=0; i<7 ; i++)
	{
		p[i] = (char *)malloc(100*sizeof(char) )_;
		strcpy(p[i], "aaaaaa") ;
	}
	
}

int  mysql_store_result (MYSQL_RES *res, char ***myp)
{
	int i = 0;
	char **p = (char **) malloc(sizeof(char *)  * 7);
	for (i=0; i<7 ; i++)
	{
		p[i] = (char *)malloc(100*sizeof(char) )_;
		strcpy(p[i], "aaaaaa") ;
	}
	*myp = p;
}
*/

 





