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
static const char *ng0 = "/home/ise/QSwitch_Router/easy_switch_tb.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3222107050_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 6424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 7120);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 5448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 6232);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 7120);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 5448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 6232);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3222107050_2372691052_p_1(char *t0)
{
    char t8[16];
    char t10[16];
    char t15[16];
    char t20[16];
    char t22[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    char *t21;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned char t32;
    unsigned char t33;
    unsigned char t34;
    unsigned int t35;

LAB0:    t1 = (t0 + 6672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 7184);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(76, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 6480);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 7184);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(78, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 6480);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 11362);
    t4 = (t0 + 11364);
    t9 = ((IEEE_P_2592010699) + 4000);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 1;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (1 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t15 + 0U);
    t16 = (t12 + 0U);
    *((int *)t16) = 0;
    t16 = (t12 + 4U);
    *((int *)t16) = 1;
    t16 = (t12 + 8U);
    *((int *)t16) = 1;
    t17 = (1 - 0);
    t14 = (t17 * 1);
    t14 = (t14 + 1);
    t16 = (t12 + 12U);
    *((unsigned int *)t16) = t14;
    t6 = xsi_base_array_concat(t6, t8, t9, (char)97, t2, t10, (char)97, t4, t15, (char)101);
    t16 = (t0 + 11366);
    t21 = ((IEEE_P_2592010699) + 4000);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 0;
    t24 = (t23 + 4U);
    *((int *)t24) = 15;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t25 = (15 - 0);
    t14 = (t25 * 1);
    t14 = (t14 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t14;
    t19 = xsi_base_array_concat(t19, t20, t21, (char)97, t6, t8, (char)97, t16, t22, (char)101);
    t14 = (2U + 2U);
    t26 = (t14 + 16U);
    t27 = (20U != t26);
    if (t27 == 1)
        goto LAB12;

LAB13:    t24 = (t0 + 7248);
    t28 = (t24 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t19, 20U);
    xsi_driver_first_trans_fast(t24);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 7312);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);

LAB16:    t2 = (t0 + 6992);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_size_not_matching(20U, t26, 0);
    goto LAB13;

LAB14:    t4 = (t0 + 6992);
    *((int *)t4) = 0;
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 7312);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(86, ng0);
    t7 = (40 * 1000LL);
    t2 = (t0 + 6480);
    xsi_process_wait(t2, t7);

LAB20:    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB15:    t3 = (t0 + 992U);
    t27 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t27 == 1)
        goto LAB14;
    else
        goto LAB16;

LAB17:    goto LAB15;

LAB18:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4872U);
    t3 = *((char **)t2);
    t32 = *((unsigned char *)t3);
    t33 = (t32 == (unsigned char)3);
    if (t33 == 1)
        goto LAB24;

LAB25:    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t2 = (t0 + 11382);
    t6 = (t0 + 11384);
    t12 = ((IEEE_P_2592010699) + 4000);
    t16 = (t10 + 0U);
    t18 = (t16 + 0U);
    *((int *)t18) = 0;
    t18 = (t16 + 4U);
    *((int *)t18) = 1;
    t18 = (t16 + 8U);
    *((int *)t18) = 1;
    t13 = (1 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t18 = (t16 + 12U);
    *((unsigned int *)t18) = t14;
    t18 = (t15 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 1;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t17 = (1 - 0);
    t14 = (t17 * 1);
    t14 = (t14 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t14;
    t11 = xsi_base_array_concat(t11, t8, t12, (char)97, t2, t10, (char)97, t6, t15, (char)101);
    t19 = (t0 + 11386);
    t24 = ((IEEE_P_2592010699) + 4000);
    t28 = (t22 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 15;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t25 = (15 - 0);
    t14 = (t25 * 1);
    t14 = (t14 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t14;
    t23 = xsi_base_array_concat(t23, t20, t24, (char)97, t11, t8, (char)97, t19, t22, (char)101);
    t14 = (2U + 2U);
    t26 = (t14 + 16U);
    t34 = 1;
    if (20U == t26)
        goto LAB27;

LAB28:    t34 = 0;

LAB29:    t27 = t34;

LAB26:    if (t27 == 0)
        goto LAB22;

LAB23:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 11429);
    t4 = (t0 + 11431);
    t9 = ((IEEE_P_2592010699) + 4000);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 1;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (1 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t15 + 0U);
    t16 = (t12 + 0U);
    *((int *)t16) = 0;
    t16 = (t12 + 4U);
    *((int *)t16) = 1;
    t16 = (t12 + 8U);
    *((int *)t16) = 1;
    t17 = (1 - 0);
    t14 = (t17 * 1);
    t14 = (t14 + 1);
    t16 = (t12 + 12U);
    *((unsigned int *)t16) = t14;
    t6 = xsi_base_array_concat(t6, t8, t9, (char)97, t2, t10, (char)97, t4, t15, (char)101);
    t16 = (t0 + 11433);
    t21 = ((IEEE_P_2592010699) + 4000);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 0;
    t24 = (t23 + 4U);
    *((int *)t24) = 15;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t25 = (15 - 0);
    t14 = (t25 * 1);
    t14 = (t14 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t14;
    t19 = xsi_base_array_concat(t19, t20, t21, (char)97, t6, t8, (char)97, t16, t22, (char)101);
    t14 = (2U + 2U);
    t26 = (t14 + 16U);
    t27 = (20U != t26);
    if (t27 == 1)
        goto LAB33;

LAB34:    t24 = (t0 + 7376);
    t28 = (t24 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t19, 20U);
    xsi_driver_first_trans_fast(t24);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 7440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);

LAB37:    t2 = (t0 + 7008);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

LAB22:    t31 = (t0 + 11402);
    xsi_report(t31, 27U, (unsigned char)2);
    goto LAB23;

LAB24:    t27 = (unsigned char)1;
    goto LAB26;

LAB27:    t35 = 0;

LAB30:    if (t35 < 20U)
        goto LAB31;
    else
        goto LAB29;

LAB31:    t29 = (t4 + t35);
    t30 = (t23 + t35);
    if (*((unsigned char *)t29) != *((unsigned char *)t30))
        goto LAB28;

LAB32:    t35 = (t35 + 1);
    goto LAB30;

LAB33:    xsi_size_not_matching(20U, t26, 0);
    goto LAB34;

LAB35:    t4 = (t0 + 7008);
    *((int *)t4) = 0;
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 7440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t7 = (40 * 1000LL);
    t2 = (t0 + 6480);
    xsi_process_wait(t2, t7);

LAB41:    *((char **)t1) = &&LAB42;
    goto LAB1;

LAB36:    t3 = (t0 + 992U);
    t27 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t27 == 1)
        goto LAB35;
    else
        goto LAB37;

LAB38:    goto LAB36;

LAB39:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4552U);
    t3 = *((char **)t2);
    t32 = *((unsigned char *)t3);
    t33 = (t32 == (unsigned char)3);
    if (t33 == 1)
        goto LAB45;

LAB46:    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 11449);
    t6 = (t0 + 11451);
    t12 = ((IEEE_P_2592010699) + 4000);
    t16 = (t10 + 0U);
    t18 = (t16 + 0U);
    *((int *)t18) = 0;
    t18 = (t16 + 4U);
    *((int *)t18) = 1;
    t18 = (t16 + 8U);
    *((int *)t18) = 1;
    t13 = (1 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t18 = (t16 + 12U);
    *((unsigned int *)t18) = t14;
    t18 = (t15 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 1;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t17 = (1 - 0);
    t14 = (t17 * 1);
    t14 = (t14 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t14;
    t11 = xsi_base_array_concat(t11, t8, t12, (char)97, t2, t10, (char)97, t6, t15, (char)101);
    t19 = (t0 + 11453);
    t24 = ((IEEE_P_2592010699) + 4000);
    t28 = (t22 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 15;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t25 = (15 - 0);
    t14 = (t25 * 1);
    t14 = (t14 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t14;
    t23 = xsi_base_array_concat(t23, t20, t24, (char)97, t11, t8, (char)97, t19, t22, (char)101);
    t14 = (2U + 2U);
    t26 = (t14 + 16U);
    t34 = 1;
    if (20U == t26)
        goto LAB48;

LAB49:    t34 = 0;

LAB50:    t27 = t34;

LAB47:    if (t27 == 0)
        goto LAB43;

LAB44:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 11496);
    t4 = (t0 + 11498);
    t9 = ((IEEE_P_2592010699) + 4000);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 1;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (1 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t15 + 0U);
    t16 = (t12 + 0U);
    *((int *)t16) = 0;
    t16 = (t12 + 4U);
    *((int *)t16) = 1;
    t16 = (t12 + 8U);
    *((int *)t16) = 1;
    t17 = (1 - 0);
    t14 = (t17 * 1);
    t14 = (t14 + 1);
    t16 = (t12 + 12U);
    *((unsigned int *)t16) = t14;
    t6 = xsi_base_array_concat(t6, t8, t9, (char)97, t2, t10, (char)97, t4, t15, (char)101);
    t16 = (t0 + 11500);
    t21 = ((IEEE_P_2592010699) + 4000);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 0;
    t24 = (t23 + 4U);
    *((int *)t24) = 15;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t25 = (15 - 0);
    t14 = (t25 * 1);
    t14 = (t14 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t14;
    t19 = xsi_base_array_concat(t19, t20, t21, (char)97, t6, t8, (char)97, t16, t22, (char)101);
    t14 = (2U + 2U);
    t26 = (t14 + 16U);
    t27 = (20U != t26);
    if (t27 == 1)
        goto LAB54;

LAB55:    t24 = (t0 + 7504);
    t28 = (t24 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t19, 20U);
    xsi_driver_first_trans_fast(t24);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 7568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(107, ng0);

LAB58:    t2 = (t0 + 7024);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB40:    goto LAB39;

LAB42:    goto LAB40;

LAB43:    t31 = (t0 + 11469);
    xsi_report(t31, 27U, (unsigned char)2);
    goto LAB44;

LAB45:    t27 = (unsigned char)1;
    goto LAB47;

LAB48:    t35 = 0;

LAB51:    if (t35 < 20U)
        goto LAB52;
    else
        goto LAB50;

LAB52:    t29 = (t4 + t35);
    t30 = (t23 + t35);
    if (*((unsigned char *)t29) != *((unsigned char *)t30))
        goto LAB49;

LAB53:    t35 = (t35 + 1);
    goto LAB51;

LAB54:    xsi_size_not_matching(20U, t26, 0);
    goto LAB55;

LAB56:    t4 = (t0 + 7024);
    *((int *)t4) = 0;
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 7568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(110, ng0);
    t7 = (40 * 1000LL);
    t2 = (t0 + 6480);
    xsi_process_wait(t2, t7);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB57:    t3 = (t0 + 992U);
    t27 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t27 == 1)
        goto LAB56;
    else
        goto LAB58;

LAB59:    goto LAB57;

LAB60:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4712U);
    t3 = *((char **)t2);
    t32 = *((unsigned char *)t3);
    t33 = (t32 == (unsigned char)3);
    if (t33 == 1)
        goto LAB66;

LAB67:    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 11516);
    t6 = (t0 + 11518);
    t12 = ((IEEE_P_2592010699) + 4000);
    t16 = (t10 + 0U);
    t18 = (t16 + 0U);
    *((int *)t18) = 0;
    t18 = (t16 + 4U);
    *((int *)t18) = 1;
    t18 = (t16 + 8U);
    *((int *)t18) = 1;
    t13 = (1 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t18 = (t16 + 12U);
    *((unsigned int *)t18) = t14;
    t18 = (t15 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 1;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t17 = (1 - 0);
    t14 = (t17 * 1);
    t14 = (t14 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t14;
    t11 = xsi_base_array_concat(t11, t8, t12, (char)97, t2, t10, (char)97, t6, t15, (char)101);
    t19 = (t0 + 11520);
    t24 = ((IEEE_P_2592010699) + 4000);
    t28 = (t22 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 15;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t25 = (15 - 0);
    t14 = (t25 * 1);
    t14 = (t14 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t14;
    t23 = xsi_base_array_concat(t23, t20, t24, (char)97, t11, t8, (char)97, t19, t22, (char)101);
    t14 = (2U + 2U);
    t26 = (t14 + 16U);
    t34 = 1;
    if (20U == t26)
        goto LAB69;

LAB70:    t34 = 0;

LAB71:    t27 = t34;

LAB68:    if (t27 == 0)
        goto LAB64;

LAB65:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 11564);
    t4 = (t0 + 11566);
    t9 = ((IEEE_P_2592010699) + 4000);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 1;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (1 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t15 + 0U);
    t16 = (t12 + 0U);
    *((int *)t16) = 0;
    t16 = (t12 + 4U);
    *((int *)t16) = 1;
    t16 = (t12 + 8U);
    *((int *)t16) = 1;
    t17 = (1 - 0);
    t14 = (t17 * 1);
    t14 = (t14 + 1);
    t16 = (t12 + 12U);
    *((unsigned int *)t16) = t14;
    t6 = xsi_base_array_concat(t6, t8, t9, (char)97, t2, t10, (char)97, t4, t15, (char)101);
    t16 = (t0 + 11568);
    t21 = ((IEEE_P_2592010699) + 4000);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 0;
    t24 = (t23 + 4U);
    *((int *)t24) = 15;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t25 = (15 - 0);
    t14 = (t25 * 1);
    t14 = (t14 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t14;
    t19 = xsi_base_array_concat(t19, t20, t21, (char)97, t6, t8, (char)97, t16, t22, (char)101);
    t14 = (2U + 2U);
    t26 = (t14 + 16U);
    t27 = (20U != t26);
    if (t27 == 1)
        goto LAB75;

LAB76:    t24 = (t0 + 7632);
    t28 = (t24 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t19, 20U);
    xsi_driver_first_trans_fast(t24);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 7696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(119, ng0);

LAB79:    t2 = (t0 + 7040);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB80;
    goto LAB1;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

LAB64:    t31 = (t0 + 11536);
    xsi_report(t31, 28U, (unsigned char)2);
    goto LAB65;

LAB66:    t27 = (unsigned char)1;
    goto LAB68;

LAB69:    t35 = 0;

LAB72:    if (t35 < 20U)
        goto LAB73;
    else
        goto LAB71;

LAB73:    t29 = (t4 + t35);
    t30 = (t23 + t35);
    if (*((unsigned char *)t29) != *((unsigned char *)t30))
        goto LAB70;

LAB74:    t35 = (t35 + 1);
    goto LAB72;

LAB75:    xsi_size_not_matching(20U, t26, 0);
    goto LAB76;

LAB77:    t4 = (t0 + 7040);
    *((int *)t4) = 0;
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 7696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(122, ng0);
    t7 = (40 * 1000LL);
    t2 = (t0 + 6480);
    xsi_process_wait(t2, t7);

LAB83:    *((char **)t1) = &&LAB84;
    goto LAB1;

LAB78:    t3 = (t0 + 992U);
    t27 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t27 == 1)
        goto LAB77;
    else
        goto LAB79;

LAB80:    goto LAB78;

LAB81:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 5032U);
    t3 = *((char **)t2);
    t32 = *((unsigned char *)t3);
    t33 = (t32 == (unsigned char)3);
    if (t33 == 1)
        goto LAB87;

LAB88:    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t2 = (t0 + 11584);
    t6 = (t0 + 11586);
    t12 = ((IEEE_P_2592010699) + 4000);
    t16 = (t10 + 0U);
    t18 = (t16 + 0U);
    *((int *)t18) = 0;
    t18 = (t16 + 4U);
    *((int *)t18) = 1;
    t18 = (t16 + 8U);
    *((int *)t18) = 1;
    t13 = (1 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t18 = (t16 + 12U);
    *((unsigned int *)t18) = t14;
    t18 = (t15 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 1;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t17 = (1 - 0);
    t14 = (t17 * 1);
    t14 = (t14 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t14;
    t11 = xsi_base_array_concat(t11, t8, t12, (char)97, t2, t10, (char)97, t6, t15, (char)101);
    t19 = (t0 + 11588);
    t24 = ((IEEE_P_2592010699) + 4000);
    t28 = (t22 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 15;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t25 = (15 - 0);
    t14 = (t25 * 1);
    t14 = (t14 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t14;
    t23 = xsi_base_array_concat(t23, t20, t24, (char)97, t11, t8, (char)97, t19, t22, (char)101);
    t14 = (2U + 2U);
    t26 = (t14 + 16U);
    t34 = 1;
    if (20U == t26)
        goto LAB90;

LAB91:    t34 = 0;

LAB92:    t27 = t34;

LAB89:    if (t27 == 0)
        goto LAB85;

LAB86:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 11632);
    xsi_report(t2, 20U, (unsigned char)0);
    xsi_set_current_line(129, ng0);

LAB98:    *((char **)t1) = &&LAB99;
    goto LAB1;

LAB82:    goto LAB81;

LAB84:    goto LAB82;

LAB85:    t31 = (t0 + 11604);
    xsi_report(t31, 28U, (unsigned char)2);
    goto LAB86;

LAB87:    t27 = (unsigned char)1;
    goto LAB89;

LAB90:    t35 = 0;

LAB93:    if (t35 < 20U)
        goto LAB94;
    else
        goto LAB92;

LAB94:    t29 = (t4 + t35);
    t30 = (t23 + t35);
    if (*((unsigned char *)t29) != *((unsigned char *)t30))
        goto LAB91;

LAB95:    t35 = (t35 + 1);
    goto LAB93;

LAB96:    goto LAB2;

LAB97:    goto LAB96;

LAB99:    goto LAB97;

}


extern void work_a_3222107050_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3222107050_2372691052_p_0,(void *)work_a_3222107050_2372691052_p_1};
	xsi_register_didat("work_a_3222107050_2372691052", "isim/easy_switch_tb_isim_beh.exe.sim/work/a_3222107050_2372691052.didat");
	xsi_register_executes(pe);
}
