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
static const char *ng0 = "/home/tanmay/Downloads/Project5-4-16/dynamic_time_decider_31.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_17126692536656888728_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_1871261289446890672_1035706684(char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1306455576380142462_3965413181(char *, char *, char *, char *, char *);


static void work_a_0433637151_3212880686_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t11;
    unsigned int t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    int t18;
    int t19;
    int t20;
    int t21;
    int t22;
    int t23;
    int t24;
    int t25;
    char *t26;

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 4008U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 3U);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t1 = (t0 + 9048U);
    t5 = (t0 + 9172);
    t7 = (t10 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t11 = (2 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t12;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t10);
    if (t3 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t1 = (t0 + 9048U);
    t5 = (t0 + 9175);
    t7 = (t10 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t11 = (2 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t12;
    t3 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t2, t1, t5, t10);
    if (t3 != 0)
        goto LAB17;

LAB18:
LAB6:
LAB3:    t1 = (t0 + 5424);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 5504);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5568);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 9148);
    t5 = (t0 + 5632);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 9156);
    t5 = (t0 + 5696);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 9164);
    t5 = (t0 + 5760);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(66, ng0);
    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t8 = (t0 + 8936U);
    t13 = ieee_p_1242562249_sub_1871261289446890672_1035706684(IEEE_P_1242562249, t9, t8);
    t14 = (t0 + 3768U);
    t15 = *((char **)t14);
    t14 = (t15 + 0);
    *((int *)t14) = t13;
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 8952U);
    t11 = ieee_p_1242562249_sub_1871261289446890672_1035706684(IEEE_P_1242562249, t2, t1);
    t5 = (t0 + 3888U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((int *)t5) = t11;
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 8968U);
    t11 = ieee_p_1242562249_sub_1871261289446890672_1035706684(IEEE_P_1242562249, t2, t1);
    t5 = (t0 + 3168U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((int *)t5) = t11;
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3768U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t13 = (t11 + 10);
    t16 = (t13 / 6);
    t1 = (t0 + 3888U);
    t5 = *((char **)t1);
    t17 = *((int *)t5);
    t18 = (t17 / 5);
    t3 = (t16 > t18);
    if (t3 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t13 = (t11 / 5);
    t1 = (t0 + 3648U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t13;

LAB9:    xsi_set_current_line(75, ng0);
    t11 = (7 * 60);
    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    t13 = *((int *)t2);
    t16 = (t11 / t13);
    t17 = (t16 + 2);
    t1 = (t0 + 3408U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t17;
    xsi_set_current_line(76, ng0);
    t11 = (7 * 60);
    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    t13 = *((int *)t2);
    t16 = (t11 / t13);
    t17 = (t16 + 2);
    t1 = (t0 + 3528U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t17;
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = (t0 + 3648U);
    t5 = *((char **)t1);
    t13 = *((int *)t5);
    t3 = (t11 > t13);
    if (t3 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 3288U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 90;

LAB12:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 3288U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_17126692536656888728_1035706684(IEEE_P_1242562249, t10, t11, 8);
    t5 = (t0 + 5632);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 3408U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_17126692536656888728_1035706684(IEEE_P_1242562249, t10, t11, 8);
    t5 = (t0 + 5696);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 3528U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_17126692536656888728_1035706684(IEEE_P_1242562249, t10, t11, 8);
    t5 = (t0 + 5760);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 5504);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 5568);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3768U);
    t6 = *((char **)t1);
    t19 = *((int *)t6);
    t20 = (t19 + 10);
    t21 = (t20 / 6);
    t1 = (t0 + 3648U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = t21;
    goto LAB9;

LAB11:    xsi_set_current_line(82, ng0);
    t16 = (14 * 60);
    t1 = (t0 + 3648U);
    t6 = *((char **)t1);
    t17 = *((int *)t6);
    t18 = (t16 * t17);
    t1 = (t0 + 3168U);
    t7 = *((char **)t1);
    t19 = *((int *)t7);
    t1 = (t0 + 3168U);
    t8 = *((char **)t1);
    t20 = *((int *)t8);
    t1 = (t0 + 3648U);
    t9 = *((char **)t1);
    t21 = *((int *)t9);
    t22 = (t20 - t21);
    t23 = (t19 * t22);
    t24 = (t18 / t23);
    t25 = (t24 + 4);
    t1 = (t0 + 3288U);
    t14 = *((char **)t1);
    t1 = (t14 + 0);
    *((int *)t1) = t25;
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 3288U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t3 = (t11 > 90);
    if (t3 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3288U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 90;
    goto LAB15;

LAB17:    xsi_set_current_line(98, ng0);
    t8 = (t0 + 5504);
    t9 = (t8 + 56U);
    t14 = *((char **)t9);
    t15 = (t14 + 56U);
    t26 = *((char **)t15);
    *((unsigned char *)t26) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 5568);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}


extern void work_a_0433637151_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0433637151_3212880686_p_0};
	xsi_register_didat("work_a_0433637151_3212880686", "isim/tb_Project_isim_beh.exe.sim/work/a_0433637151_3212880686.didat");
	xsi_register_executes(pe);
}
