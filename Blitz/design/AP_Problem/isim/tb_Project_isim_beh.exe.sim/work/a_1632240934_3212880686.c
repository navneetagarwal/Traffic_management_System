/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/tanmay/Downloads/Project5-4-16/MarketGateJunction.vhd";



static void work_a_1632240934_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 5064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 5128);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 5192);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 4984);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void work_a_1632240934_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1632240934_3212880686_p_0};
	xsi_register_didat("work_a_1632240934_3212880686", "isim/tb_Project_isim_beh.exe.sim/work/a_1632240934_3212880686.didat");
	xsi_register_executes(pe);
}
