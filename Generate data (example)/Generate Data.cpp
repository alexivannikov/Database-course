/*Генератор данных для таблицы Employees*/
#include "pch.h"

#define _CRT_SECURE_NO_WARNINGS

#include <iostream>
#include <fstream>
#include <cstdio>
#include <ctime>
#include <cstdlib>
#include <memory.h>

using namespace std;

double RandDbl(void);

int RandInt(int n);

void GenerateData(int MaxRecs);

int main()
{
	setlocale(LC_ALL, "Russian");

	GenerateData(10);
}

double RandDbl(void)
{
	return rand() / ((double)RAND_MAX + 1.0);
}

int RandInt(int n)
{
	return (int)(n * RandDbl());
}

void GenerateData(int MaxRecs)
{
	FILE *Employees = fopen("C:\\Users\\Alex\\Desktop\\Программная инженерия\\Базы данных\\Курсовой проект\\Данные\\Employees.txt", "w");

	srand(time(NULL));

	const char *E_FAMILY[] =
	{
		"Петров", "Алексеев", "Сергеев",
		"Константинов", "Андреев", "Александров",
		"Денисов", "Романов", "Павлов",
		"Викторов", "Тимофеев", "Михайлов",
		"Владимиров", "Борисов", "Иванов"
	};

	const char *E_NAME[] =
	{
		"Петр", "Алексей", "Сергей", 
		"Константин", "Евгений", "Александр", 
		"Денис", "Роман", "Павел",
		"Игорь", "Тимофей", "Даниил",
		"Владимир", "Борис", "Иван"
	};

	const char *E_SURNAME[] =
	{
		"Петрович", "Алексеевич", "Сергеевич",
		"Константинович", "Евгеньевич", "Александрович",
		"Денисович", "Романович", "Павлович",
		"Игоревич", "Тимофеевич", "Данилович",
		"Владимирович", "Борисович", "Иванович"
	};

	const char *E_POST[] =
	{
		"Менеджер", "Редактор"
	};

	size_t NumE_FAMILY = sizeof E_FAMILY / sizeof E_FAMILY[0];
	size_t NumE_NAME = sizeof E_NAME / sizeof E_NAME[0];
	size_t NumE_SURNAME = sizeof E_SURNAME / sizeof E_SURNAME[0];
	size_t NumE_POST = sizeof E_POST / sizeof E_POST[0];

	for (int i = 0; i < MaxRecs; i++) {
		fprintf(Employees, "%d\t", 100 + (int)rand() % (9999 - 100));
		fprintf(Employees, "%s\t", E_FAMILY[RandInt(NumE_FAMILY)]);
		fprintf(Employees, "%s\t", E_NAME[RandInt(NumE_NAME)]);
		fprintf(Employees, "%s\t", E_SURNAME[RandInt(NumE_SURNAME)]);
		fprintf(Employees, "%d%s%d%d%s%d%d\t", 1970 + (int)rand() % (1990 - 1970), "-", 0, (int)rand() % 8 + 1, "-",0, (int)rand() % 8+1);
		fprintf(Employees, "%d%s%d\t", 1000 + (int)rand() % (9999 - 1000), " ", 100000 + (int)rand() % (999999 - 100000));
		fprintf(Employees, "%d\t", 100000 + (int)rand() % (999999 - 100000));
		fprintf(Employees, "%s\t", E_POST[RandInt(NumE_POST)]);
		fprintf(Employees, "%d%s%d\t", 20000 + rand() % (50000 - 20000), ".", 10 + rand() % (99 - 10));
		fprintf(Employees, "%d%s%d%s%d%s%d%s%d\n", 8, "(", 900 + (int)rand()%(999-900), ")", 100 + (int)rand() % (999 - 100), "-", 10 + (int)rand() % (99 - 10), "-", 10 + (int)rand()%(99-10));
	}

	fclose(Employees);
}

