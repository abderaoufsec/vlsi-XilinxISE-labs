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
static const char *ng0 = "/home/ise/ALU/alu_4bit.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1006216973935724872_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1701011461141789389_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439767405979520975_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989833707593767_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_207919886985903570_503743352(char *, char *, char *, char *);


static void work_a_1542279369_3212880686_p_0(char *t0)
{
    char t26[16];
    char t29[16];
    char t34[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    int t22;
    char *t23;
    int t25;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t3 = (t0 + 3384);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(50, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)2, 5U);
    t3 = (t0 + 3512);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 5U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5233);
    t8 = xsi_mem_cmp(t1, t2, 4U);
    if (t8 == 1)
        goto LAB3;

LAB12:    t4 = (t0 + 5237);
    t9 = xsi_mem_cmp(t4, t2, 4U);
    if (t9 == 1)
        goto LAB4;

LAB13:    t6 = (t0 + 5241);
    t10 = xsi_mem_cmp(t6, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB14:    t11 = (t0 + 5245);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB15:    t14 = (t0 + 5249);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB16:    t17 = (t0 + 5253);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB17:    t20 = (t0 + 5257);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB9;

LAB18:    t23 = (t0 + 5261);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB10;

LAB19:
LAB11:    xsi_set_current_line(89, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t3 = (t0 + 3384);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 3448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t1 = (t0 + 3304);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(54, ng0);
    t27 = (t0 + 1032U);
    t28 = *((char **)t27);
    t30 = ((IEEE_P_2592010699) + 4000);
    t31 = (t0 + 5128U);
    t27 = xsi_base_array_concat(t27, t29, t30, (char)99, (unsigned char)2, (char)97, t28, t31, (char)101);
    t32 = (t0 + 1192U);
    t33 = *((char **)t32);
    t35 = ((IEEE_P_2592010699) + 4000);
    t36 = (t0 + 5144U);
    t32 = xsi_base_array_concat(t32, t34, t35, (char)99, (unsigned char)2, (char)97, t33, t36, (char)101);
    t37 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t26, t27, t29, t32, t34);
    t38 = (t26 + 12U);
    t39 = *((unsigned int *)t38);
    t40 = (1U * t39);
    t41 = (5U != t40);
    if (t41 == 1)
        goto LAB21;

LAB22:    t42 = (t0 + 3512);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t37, 5U);
    xsi_driver_first_trans_fast(t42);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t39 = (4 - 3);
    t40 = (t39 * 1U);
    t47 = (0 + t40);
    t1 = (t2 + t47);
    t3 = (t0 + 3384);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t8 = (4 - 4);
    t39 = (t8 * -1);
    t40 = (1U * t39);
    t47 = (0 + t40);
    t1 = (t2 + t47);
    t41 = *((unsigned char *)t1);
    t3 = (t0 + 3448);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t41;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB4:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4000);
    t4 = (t0 + 5128U);
    t1 = xsi_base_array_concat(t1, t29, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t7 = ((IEEE_P_2592010699) + 4000);
    t11 = (t0 + 5144U);
    t5 = xsi_base_array_concat(t5, t34, t7, (char)99, (unsigned char)2, (char)97, t6, t11, (char)101);
    t12 = ieee_p_1242562249_sub_1701011461141789389_1035706684(IEEE_P_1242562249, t26, t1, t29, t5, t34);
    t14 = (t26 + 12U);
    t39 = *((unsigned int *)t14);
    t40 = (1U * t39);
    t41 = (5U != t40);
    if (t41 == 1)
        goto LAB23;

LAB24:    t15 = (t0 + 3512);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 5U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t39 = (4 - 3);
    t40 = (t39 * 1U);
    t47 = (0 + t40);
    t1 = (t2 + t47);
    t3 = (t0 + 3384);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t8 = (4 - 4);
    t39 = (t8 * -1);
    t40 = (1U * t39);
    t47 = (0 + t40);
    t1 = (t2 + t47);
    t41 = *((unsigned char *)t1);
    t3 = (t0 + 3448);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t41;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4000);
    t4 = (t0 + 5128U);
    t1 = xsi_base_array_concat(t1, t29, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t5 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t26, t1, t29, 1);
    t6 = (t26 + 12U);
    t39 = *((unsigned int *)t6);
    t40 = (1U * t39);
    t41 = (5U != t40);
    if (t41 == 1)
        goto LAB25;

LAB26:    t7 = (t0 + 3512);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t39 = (4 - 3);
    t40 = (t39 * 1U);
    t47 = (0 + t40);
    t1 = (t2 + t47);
    t3 = (t0 + 3384);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t8 = (4 - 4);
    t39 = (t8 * -1);
    t40 = (1U * t39);
    t47 = (0 + t40);
    t1 = (t2 + t47);
    t41 = *((unsigned char *)t1);
    t3 = (t0 + 3448);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t41;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB6:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4000);
    t4 = (t0 + 5128U);
    t1 = xsi_base_array_concat(t1, t29, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t5 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t26, t1, t29, 1);
    t6 = (t26 + 12U);
    t39 = *((unsigned int *)t6);
    t40 = (1U * t39);
    t41 = (5U != t40);
    if (t41 == 1)
        goto LAB27;

LAB28:    t7 = (t0 + 3512);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t39 = (4 - 3);
    t40 = (t39 * 1U);
    t47 = (0 + t40);
    t1 = (t2 + t47);
    t3 = (t0 + 3384);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t8 = (4 - 4);
    t39 = (t8 * -1);
    t40 = (1U * t39);
    t47 = (0 + t40);
    t1 = (t2 + t47);
    t41 = *((unsigned char *)t1);
    t3 = (t0 + 3448);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t41;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB7:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5128U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 5144U);
    t5 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t26, t2, t1, t4, t3);
    t6 = (t26 + 12U);
    t39 = *((unsigned int *)t6);
    t40 = (1U * t39);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB29;

LAB30:    t7 = (t0 + 3384);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 4U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB8:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5128U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 5144U);
    t5 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t26, t2, t1, t4, t3);
    t6 = (t26 + 12U);
    t39 = *((unsigned int *)t6);
    t40 = (1U * t39);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB31;

LAB32:    t7 = (t0 + 3384);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 4U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB9:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5128U);
    t3 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t26, t2, t1);
    t4 = (t26 + 12U);
    t39 = *((unsigned int *)t4);
    t40 = (1U * t39);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB33;

LAB34:    t5 = (t0 + 3384);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB2;

LAB10:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5128U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 5144U);
    t5 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t26, t2, t1, t4, t3);
    t6 = (t26 + 12U);
    t39 = *((unsigned int *)t6);
    t40 = (1U * t39);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB35;

LAB36:    t7 = (t0 + 3384);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 4U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB20:;
LAB21:    xsi_size_not_matching(5U, t40, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(5U, t40, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(5U, t40, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(5U, t40, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(4U, t40, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(4U, t40, 0);
    goto LAB32;

LAB33:    xsi_size_not_matching(4U, t40, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(4U, t40, 0);
    goto LAB36;

}


extern void work_a_1542279369_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1542279369_3212880686_p_0};
	xsi_register_didat("work_a_1542279369_3212880686", "isim/alu_4bit_tb_isim_beh.exe.sim/work/a_1542279369_3212880686.didat");
	xsi_register_executes(pe);
}
