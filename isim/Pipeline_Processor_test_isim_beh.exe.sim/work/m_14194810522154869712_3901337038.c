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
static const char *ng0 = "/home/ise/Virtual_Machine_Shared_Folder/PDS_project_pipeline_processor/Pipeline_processor/Control_Unit.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {3, 0};
static int ng4[] = {2, 0};
static int ng5[] = {5, 0};
static int ng6[] = {4, 0};
static int ng7[] = {7, 0};
static int ng8[] = {6, 0};
static int ng9[] = {8, 0};
static int ng10[] = {9, 0};
static int ng11[] = {10, 0};
static int ng12[] = {11, 0};
static int ng13[] = {12, 0};
static int ng14[] = {32, 0};
static int ng15[] = {33, 0};
static int ng16[] = {36, 0};
static int ng17[] = {37, 0};
static int ng18[] = {40, 0};
static int ng19[] = {15, 0};
static int ng20[] = {41, 0};
static int ng21[] = {42, 0};



static void Initial_40_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(40, ng0);

LAB2:    xsi_set_current_line(41, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1768);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_43_1(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    int t37;

LAB0:    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 4368);
    *((int *)t2) = 1;
    t3 = (t0 + 4080);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);

LAB5:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB72;

LAB69:    if (t18 != 0)
        goto LAB71;

LAB70:    *((unsigned int *)t6) = 1;

LAB72:    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB73;

LAB74:
LAB75:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(45, ng0);

LAB13:    xsi_set_current_line(46, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 1, 0LL);
    t30 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t30, t28, 1, 0, 1, 0LL);
    t31 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t31, t28, 2, 0, 1, 0LL);
    t32 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t32, t28, 3, 0, 1, 0LL);
    t33 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t33, t28, 4, 0, 1, 0LL);
    t34 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t34, t28, 5, 0, 2, 0LL);
    t35 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t35, t28, 7, 0, 4, 0LL);
    t36 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t36, t28, 11, 0, 1, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);

LAB14:    t2 = ((char*)((ng2)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng3)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng5)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng5)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng7)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng9)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng10)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng11)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng12)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng13)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng14)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng15)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng16)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng17)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng18)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng20)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng21)));
    t37 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 32);
    if (t37 == 1)
        goto LAB47;

LAB48:
LAB50:
LAB49:    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    t5 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t5, t2, 1, 0, 1, 0LL);
    t7 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t7, t2, 2, 0, 1, 0LL);
    t8 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t8, t2, 3, 0, 1, 0LL);
    t21 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t21, t2, 4, 0, 1, 0LL);
    t22 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t22, t2, 5, 0, 2, 0LL);
    t28 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t28, t2, 7, 0, 4, 0LL);
    t29 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t29, t2, 11, 0, 1, 0LL);

LAB51:    goto LAB12;

LAB15:    xsi_set_current_line(49, ng0);

LAB52:    xsi_set_current_line(49, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB17:    xsi_set_current_line(50, ng0);

LAB53:    xsi_set_current_line(50, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB19:    xsi_set_current_line(51, ng0);

LAB54:    xsi_set_current_line(51, ng0);
    t4 = ((char*)((ng6)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB21:    xsi_set_current_line(52, ng0);

LAB55:    xsi_set_current_line(52, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB23:    xsi_set_current_line(53, ng0);

LAB56:    xsi_set_current_line(53, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB25:    xsi_set_current_line(54, ng0);

LAB57:    xsi_set_current_line(54, ng0);
    t4 = ((char*)((ng7)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB27:    xsi_set_current_line(55, ng0);

LAB58:    xsi_set_current_line(55, ng0);
    t4 = ((char*)((ng9)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB29:    xsi_set_current_line(56, ng0);

LAB59:    xsi_set_current_line(56, ng0);
    t4 = ((char*)((ng9)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB31:    xsi_set_current_line(57, ng0);

LAB60:    xsi_set_current_line(57, ng0);
    t4 = ((char*)((ng10)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB33:    xsi_set_current_line(58, ng0);

LAB61:    xsi_set_current_line(58, ng0);
    t4 = ((char*)((ng11)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB35:    xsi_set_current_line(60, ng0);

LAB62:    xsi_set_current_line(60, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB37:    xsi_set_current_line(61, ng0);

LAB63:    xsi_set_current_line(61, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB39:    xsi_set_current_line(63, ng0);

LAB64:    xsi_set_current_line(63, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB41:    xsi_set_current_line(64, ng0);

LAB65:    xsi_set_current_line(64, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB43:    xsi_set_current_line(66, ng0);

LAB66:    xsi_set_current_line(66, ng0);
    t4 = ((char*)((ng19)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB45:    xsi_set_current_line(67, ng0);

LAB67:    xsi_set_current_line(67, ng0);
    t4 = ((char*)((ng19)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB47:    xsi_set_current_line(68, ng0);

LAB68:    xsi_set_current_line(68, ng0);
    t4 = ((char*)((ng19)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB51;

LAB71:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB72;

LAB73:    xsi_set_current_line(72, ng0);

LAB76:    xsi_set_current_line(74, ng0);
    t22 = ((char*)((ng1)));
    t28 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t28, t22, 0, 0, 1, 0LL);
    t29 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t29, t22, 1, 0, 1, 0LL);
    t30 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t30, t22, 2, 0, 4, 0LL);
    goto LAB75;

}


extern void work_m_14194810522154869712_3901337038_init()
{
	static char *pe[] = {(void *)Initial_40_0,(void *)Always_43_1};
	xsi_register_didat("work_m_14194810522154869712_3901337038", "isim/Pipeline_Processor_test_isim_beh.exe.sim/work/m_14194810522154869712_3901337038.didat");
	xsi_register_executes(pe);
}
