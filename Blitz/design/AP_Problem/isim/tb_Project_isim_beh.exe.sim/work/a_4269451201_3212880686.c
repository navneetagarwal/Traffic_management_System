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
static const char *ng0 = "/home/tanmay/Downloads/Project5-4-16/dynamic_time_decider_4.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_17126692536656888728_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_1871261289446890672_1035706684(char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1306455576380142462_3965413181(char *, char *, char *, char *, char *);


static void work_a_4269451201_3212880686_p_0(char *t0)
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
    unsigned char t13;
    unsigned char t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    int t20;
    int t21;
    int t22;
    int t23;
    int t24;
    int t25;
    int t26;
    int t27;
    int t28;
    int t29;
    int t30;
    int t31;
    int t32;
    int t33;
    int t34;
    int t35;
    int t36;
    char *t37;
    int t38;
    int t39;
    int t40;
    char *t41;
    int t42;
    char *t43;
    int t44;
    int t45;
    int t46;
    char *t47;
    int t48;
    int t49;
    int t50;
    int t51;
    int t52;
    int t53;
    char *t54;
    int t55;
    int t56;
    char *t57;
    int t58;
    int t59;
    char *t60;
    int t61;
    int t62;
    int t63;
    int t64;
    int t65;
    char *t66;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 4288U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 3U);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4288U);
    t2 = *((char **)t1);
    t1 = (t0 + 9528U);
    t5 = (t0 + 9664);
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
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t10);
    if (t4 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 4288U);
    t2 = *((char **)t1);
    t1 = (t0 + 9528U);
    t5 = (t0 + 9667);
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
        goto LAB22;

LAB23:
LAB6:
LAB3:    t1 = (t0 + 5704);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5784);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5848);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 9632);
    t5 = (t0 + 5912);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 9640);
    t5 = (t0 + 5976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 9648);
    t5 = (t0 + 6040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 9656);
    t5 = (t0 + 6104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(68, ng0);
    t8 = (t0 + 1512U);
    t15 = *((char **)t8);
    t8 = (t0 + 9400U);
    t16 = ieee_p_1242562249_sub_1871261289446890672_1035706684(IEEE_P_1242562249, t15, t8);
    t17 = (t0 + 4048U);
    t18 = *((char **)t17);
    t17 = (t18 + 0);
    *((int *)t17) = t16;
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 9416U);
    t11 = ieee_p_1242562249_sub_1871261289446890672_1035706684(IEEE_P_1242562249, t2, t1);
    t5 = (t0 + 4168U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((int *)t5) = t11;
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 9432U);
    t11 = ieee_p_1242562249_sub_1871261289446890672_1035706684(IEEE_P_1242562249, t2, t1);
    t5 = (t0 + 3328U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((int *)t5) = t11;
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t16 = (t11 + 5);
    t19 = (t16 / 6);
    t1 = (t0 + 4168U);
    t5 = *((char **)t1);
    t20 = *((int *)t5);
    t21 = (t20 + 5);
    t22 = (t21 / 5);
    t3 = (t19 > t22);
    if (t3 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4168U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t16 = (t11 + 5);
    t19 = (t16 / 5);
    t1 = (t0 + 3928U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t19;

LAB12:    xsi_set_current_line(77, ng0);
    t11 = (7 * 60);
    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    t16 = *((int *)t2);
    t19 = (t11 / t16);
    t20 = (t19 + 2);
    t1 = (t0 + 3568U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t20;
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3928U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = (t0 + 3568U);
    t5 = *((char **)t1);
    t16 = *((int *)t5);
    t1 = (t0 + 3328U);
    t6 = *((char **)t1);
    t19 = *((int *)t6);
    t20 = (t16 * t19);
    t1 = (t0 + 3328U);
    t7 = *((char **)t1);
    t21 = *((int *)t7);
    t22 = (t20 * t21);
    t1 = (t0 + 3328U);
    t8 = *((char **)t1);
    t23 = *((int *)t8);
    t24 = (t23 - 5);
    t25 = (t22 * t24);
    t1 = (t0 + 3568U);
    t9 = *((char **)t1);
    t26 = *((int *)t9);
    t27 = (40 * t26);
    t1 = (t0 + 3328U);
    t15 = *((char **)t1);
    t28 = *((int *)t15);
    t29 = (t27 * t28);
    t30 = (t25 - t29);
    t31 = (280 * 60);
    t32 = (t30 + t31);
    t33 = (t11 * t32);
    t1 = (t0 + 3328U);
    t17 = *((char **)t1);
    t34 = *((int *)t17);
    t1 = (t0 + 3328U);
    t18 = *((char **)t1);
    t35 = *((int *)t18);
    t36 = (t35 - 5);
    t1 = (t0 + 3928U);
    t37 = *((char **)t1);
    t38 = *((int *)t37);
    t39 = (t36 - t38);
    t40 = (t34 * t39);
    t1 = (t0 + 3328U);
    t41 = *((char **)t1);
    t42 = *((int *)t41);
    t1 = (t0 + 3328U);
    t43 = *((char **)t1);
    t44 = *((int *)t43);
    t45 = (t44 - 5);
    t46 = (t42 * t45);
    t1 = (t0 + 3328U);
    t47 = *((char **)t1);
    t48 = *((int *)t47);
    t49 = (t48 - 5);
    t50 = (8 * t49);
    t51 = (t46 - t50);
    t52 = (t51 - 40);
    t53 = (t40 * t52);
    t1 = (t0 + 3328U);
    t54 = *((char **)t1);
    t55 = *((int *)t54);
    t56 = (8 * t55);
    t1 = (t0 + 3328U);
    t57 = *((char **)t1);
    t58 = *((int *)t57);
    t59 = (t56 * t58);
    t1 = (t0 + 3928U);
    t60 = *((char **)t1);
    t61 = *((int *)t60);
    t62 = (t59 * t61);
    t63 = (t53 - t62);
    t64 = (t33 / t63);
    t65 = (t64 + 8);
    t1 = (t0 + 3448U);
    t66 = *((char **)t1);
    t1 = (t66 + 0);
    *((int *)t1) = t65;
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 3448U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t4 = (t11 > 90);
    if (t4 == 1)
        goto LAB17;

LAB18:    t1 = (t0 + 3448U);
    t5 = *((char **)t1);
    t16 = *((int *)t5);
    t13 = (t16 < 0);
    t3 = t13;

LAB19:    if (t3 != 0)
        goto LAB14;

LAB16:    t1 = (t0 + 3448U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t3 = (t11 < 20);
    if (t3 != 0)
        goto LAB20;

LAB21:
LAB15:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t16 = (8 * t11);
    t1 = (t0 + 3448U);
    t5 = *((char **)t1);
    t19 = *((int *)t5);
    t1 = (t0 + 3568U);
    t6 = *((char **)t1);
    t20 = *((int *)t6);
    t21 = (t19 + t20);
    t1 = (t0 + 3328U);
    t7 = *((char **)t1);
    t22 = *((int *)t7);
    t23 = (t22 - 5);
    t24 = (t21 * t23);
    t1 = (t0 + 3448U);
    t8 = *((char **)t1);
    t25 = *((int *)t8);
    t26 = (5 * t25);
    t27 = (t24 + t26);
    t28 = (t16 * t27);
    t29 = (35 * 60);
    t30 = (t28 + t29);
    t1 = (t0 + 3328U);
    t9 = *((char **)t1);
    t31 = *((int *)t9);
    t1 = (t0 + 3328U);
    t15 = *((char **)t1);
    t32 = *((int *)t15);
    t33 = (t31 * t32);
    t1 = (t0 + 3328U);
    t17 = *((char **)t1);
    t34 = *((int *)t17);
    t35 = (t34 - 5);
    t36 = (t33 * t35);
    t1 = (t0 + 3328U);
    t18 = *((char **)t1);
    t38 = *((int *)t18);
    t39 = (8 * t38);
    t1 = (t0 + 3328U);
    t37 = *((char **)t1);
    t40 = *((int *)t37);
    t42 = (t40 - 5);
    t44 = (t39 * t42);
    t45 = (t36 - t44);
    t1 = (t0 + 3328U);
    t41 = *((char **)t1);
    t46 = *((int *)t41);
    t48 = (40 * t46);
    t49 = (t45 - t48);
    t50 = (t30 / t49);
    t51 = (t50 + 1);
    t1 = (t0 + 3688U);
    t43 = *((char **)t1);
    t1 = (t43 + 0);
    *((int *)t1) = t51;
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 3448U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = (t0 + 3568U);
    t5 = *((char **)t1);
    t16 = *((int *)t5);
    t19 = (t11 + t16);
    t1 = (t0 + 3688U);
    t6 = *((char **)t1);
    t20 = *((int *)t6);
    t21 = (t19 + t20);
    t22 = (5 * t21);
    t1 = (t0 + 3328U);
    t7 = *((char **)t1);
    t23 = *((int *)t7);
    t24 = (t23 - 5);
    t25 = (t22 / t24);
    t26 = (t25 + 1);
    t1 = (t0 + 3808U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = t26;
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 3448U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_17126692536656888728_1035706684(IEEE_P_1242562249, t10, t11, 8);
    t5 = (t0 + 5912);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 3568U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_17126692536656888728_1035706684(IEEE_P_1242562249, t10, t11, 8);
    t5 = (t0 + 5976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 3688U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_17126692536656888728_1035706684(IEEE_P_1242562249, t10, t11, 8);
    t5 = (t0 + 6040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_17126692536656888728_1035706684(IEEE_P_1242562249, t10, t11, 8);
    t5 = (t0 + 6104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 5784);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 5848);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    t8 = (t0 + 2792U);
    t9 = *((char **)t8);
    t13 = *((unsigned char *)t9);
    t14 = (t13 == (unsigned char)2);
    t3 = t14;
    goto LAB10;

LAB11:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 4048U);
    t6 = *((char **)t1);
    t23 = *((int *)t6);
    t24 = (t23 + 5);
    t25 = (t24 / 6);
    t1 = (t0 + 3928U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = t25;
    goto LAB12;

LAB14:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3448U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = 90;
    goto LAB15;

LAB17:    t3 = (unsigned char)1;
    goto LAB19;

LAB20:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 3448U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 20;
    goto LAB15;

LAB22:    xsi_set_current_line(100, ng0);
    t8 = (t0 + 5784);
    t9 = (t8 + 56U);
    t15 = *((char **)t9);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 5848);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}


extern void work_a_4269451201_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4269451201_3212880686_p_0};
	xsi_register_didat("work_a_4269451201_3212880686", "isim/tb_Project_isim_beh.exe.sim/work/a_4269451201_3212880686.didat");
	xsi_register_executes(pe);
}
