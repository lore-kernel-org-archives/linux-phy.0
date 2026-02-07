Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8242FEE0AC3
	for <linux-phy@archiver.kernel.org>; Sat,  7 Feb 2026 10:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgt8fUfhp4Owy6V1eo+sPz2r+EgeAfRqw3U6ZerlhQ0=; b=mzYY5jHQksV/fR
	5fouzZOHzYnYsICd6BmzB29awPErs06NUQWqkSH310fg1O31N3VNBgsVMEcI7qbQTD5Wfvq6T/JkV
	wvuOiyZQzAqI4YF/pVtnK92OdBPac89uA9PWmA49OCbUh2ukonLe4sVh2qPmRH4xWUPT2I2kZHWpy
	VHqouK3dgKUyguu07UyT1Nl2f4CmIRUHGkx9yTVt5mPFluoEzcJi86/JBs0DqQT6aV5Ub66/NvuXq
	+TxYmuJB+N9p3rTA7NarUMYTdidpM7j62eW2FTjy93Zu4tlVWSyZgjYPZkH1PnwPxuDW4/k/mAxCE
	IKGsT9QtnvkU5Zeptblw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vofQp-0000000CJAy-0zjO;
	Sat, 07 Feb 2026 10:20:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vofQn-0000000CJAb-3IXH
	for linux-phy@lists.infradead.org;
	Sat, 07 Feb 2026 10:20:50 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6174OPlF1629664
	for <linux-phy@lists.infradead.org>; Sat, 7 Feb 2026 10:20:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MUxz9etW0UGkiS630niLQNPV
	G9GiBBz9yF1xABWgCcU=; b=fwKrO4/utfLfmkdBRFyy5ja9CbrB8E49j9+Yf6yy
	npHKzEr5LsMXT6Ofw5lIaSg+WzhHIP56rQblmX33/HX1DYz7AgLDo45UM62cSF1a
	BlgaUclOWJs+6nczdG4BCmOFZWnz6dXnmOUQZmmIX6Qzwwp+2dN8+XGeLrvWteyL
	axjvqsswtE+cvrf+YldlgAo3pUM9cz4DFuyTEsHPRRxkJ0koTFNdOU90KyvV5HNZ
	lCUgMpSnXxGpwZfpvcVEPrBhTl9NHHUnoqA8yixzKzua+T/o4RMk2Wea4Haix9SA
	jvY5LYbMOOLbNf0/SzUO+TBzUX6a7Ueo/VE4SU50201IEw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xb50ha5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 07 Feb 2026 10:20:48 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb0595def4so301289985a.0
        for <linux-phy@lists.infradead.org>; Sat, 07 Feb 2026 02:20:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770459647; x=1771064447; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MUxz9etW0UGkiS630niLQNPVG9GiBBz9yF1xABWgCcU=;
        b=ZtIhPVJVN1YYoDCOhw27qnhmbCsQqgY+jnYFOXaAR76BX22mQogpS3mW+2I0Y28+t6
         ScMQI7jntQrV85cVY5v1W+OixBnHIgL5ePYlXc4DS+2KZLXA9Xv1wkVOUNXcaBYfDW8G
         2krU0QYJKAIT2BmHhbFvxnn4ctJicTu6NxwQ1sn4lPYOU2+wwkvkM5JQ3UvprYGOYe5w
         +T0IB9Imgihmpyf+PaPnDH70C/JkmDqbBPmiFZtum/2PmcF+MtnyVzVnIH8TeQddC5i2
         DeZgkure//BGBf89XFoY/qylSYKqDXJKAF6G2Puvtxad7iWWKRGSYLpnn0E9CJIbDVTQ
         9tkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770459647; x=1771064447;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MUxz9etW0UGkiS630niLQNPVG9GiBBz9yF1xABWgCcU=;
        b=uZB/9PyPJSzrFlh/IMMhBRTa0o+TDA/88Jzx/e/cvQpHA2fRJ48nOZ4FFV2JLtu05q
         AT+DJbzqE1/GwSnXviXdL7uBZlbzZrEkY7Lpsux71KG7NC+z7CgcJFLRtgPPPUBaFkNo
         m1BHkL8TdwEj2zqKi41LHCIuGwATK8u2u5KGL3CC+ezyIyOD3yZpSsWMgZ1Mrxp51O1G
         +CIKtWR2ejltYzx/KMkZ94dSpeuNIKItRZ4nZ5f6Zdo+yMHZl4zlVJE71A8JhTGsaJuM
         Yw1OPzCQlqyU/YriOxMMdchCr0qtwIL8O/wdNz/YmUvFpj7E5i+h+KCAtCFG2deVIu6a
         dGsg==
X-Forwarded-Encrypted: i=1; AJvYcCVW6ma30Ci9xcqsw408Whfk2YUCX4kuZfolJx81vz9gXgLVfB4PMbm9OPrNnsLLt0Wa36SXOGAx5UQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwuifV/KnYaGYiE3CtcfXr2bXRGb1L0IgXT75oDFEFTTsfI9lS8
	sdQ5v2GVkRzbKh/yOTNh7oMCXSCdwx5Ji59WKRNz+d/S/VyyLxJVTABKBmKFI64VCHLewylmJag
	jsf4RdV98gNznLoDMzFGNSHlFAAVeLNRMEqwsB4/bYyKkSRVoPSboyS2xKK0L5SEJtBQw
X-Gm-Gg: AZuq6aI+b4vzoFPa3+E+eatKneQNk4fZxTj+0bwLCWv7CgHRCE9qR5XNfWmD+XcMfA4
	wKIkGaS2tHlW8IUsUGzATgDqfp/3SCFodu+7GxLWY5gTKtg7E4fi58LcN8Rn8/B6vcA7c6v2BwW
	8arDKX5VXYNVwl65d90LDc7YMgZ4OBY/EWLOhUkmaCtAtRKDw7pS+/1thbve+EofVXn4SMK3ob1
	8dH/niSk79576KGeIZ5MP4+IaCV1yeT0zHSUwDqzWOV4kj22Gi4XVWIXpNgYKG7ybGqnYACkA4W
	6G+bn4FonjAdmR2vMrGeDX+mMoE4DYgL+voxzh5hXJJBEwnqYqcSwKtQhy62ebWX7la/E0G1Gsi
	uvTiOVMWcLp4ai2kwHru6eRcVBOUcPT0HyOxL3m6khi1fZJfoEf4058Yhiej3HfnjR5fIVgi5ux
	s4v+IxA91BKfV8yONMPG5TsG8=
X-Received: by 2002:a05:620a:448b:b0:8ca:3715:eea5 with SMTP id af79cd13be357-8ca40b953efmr1249053385a.14.1770459647558;
        Sat, 07 Feb 2026 02:20:47 -0800 (PST)
X-Received: by 2002:a05:620a:448b:b0:8ca:3715:eea5 with SMTP id af79cd13be357-8ca40b953efmr1249051985a.14.1770459647121;
        Sat, 07 Feb 2026 02:20:47 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44d29a2fsm1202391e87.46.2026.02.07.02.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 02:20:45 -0800 (PST)
Date: Sat, 7 Feb 2026 12:20:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] phy: qcom: edp: Add eDP phy mode switch support
Message-ID: <obxqqoaxybtaspoijvog5uruwnu22ol6jyzraetf5wo45vwyrb@63cuwmdl5oyf>
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-3-231882bbf3f1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205-edp_phy-v1-3-231882bbf3f1@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=QMBlhwLL c=1 sm=1 tr=0 ts=69871200 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=wa0nkUdPxAOmyYp0rckA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: lTgs1OhGJguqqF6ymZkRt20p6IS-k085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA3MDA4MiBTYWx0ZWRfX9UB5xPFaSJST
 QFppYPeL1yVHHU8rbZjWdgJ6RKZBN2I2H23jgFaGZDMN/YUPLgYP/6o56JF57mYWV8MSeMrrLpf
 PsFo5T4y1joCzOQGXp2POgPI/BaXdQ18pFhGoiBym56qCNIezTfKgKk61jAYpR4ieZXBWP7WtCT
 xRLeWkso7gpEhNw1mKxTUo5nzhnLBuwCmhnNERmVm3vcTclBJ7F9Z2wV6l+Gn4uVwJ1BzAVZaob
 9DgrOhRmPKbgTgcma6hLZExAHSwkeeMR+M9+NP05ynAOKEiS7tVoDiEHevJtOrxfNW+80CBBaa1
 YSt5V300f2yj+qNnn0DCBtp15QgiyxyUhvZD9pOlcQeqClnfDv9XEw+k1+xD/053lu25v3/hShQ
 QEryYsLjcuRxd/FebLl3zyJb2gbOH0grvoacCE2JIToHs9QgH9PxRNzOLfT2Y5hGyQ46kVNLR+M
 MYrcb8mI5v3o60vo+vg==
X-Proofpoint-ORIG-GUID: lTgs1OhGJguqqF6ymZkRt20p6IS-k085
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602070082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_022049_859230_5219B7EB 
X-CRM114-Status: GOOD (  29.05  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, Feb 05, 2026 at 05:20:55PM +0800, Yongxing Mou wrote:
> Add DP/eDP switch support by splitting the PHY swing/pre-emphasis tables
> into separate DP and eDP configurations. This allows the driver to select
> the correct table based on the is_edp flag.
> 
> Add a dedicated table for the SC7280/glymur platforms, as they are not
> compatible with the others.

Again, describe what is not working / broken now. Is it something that
we were supposedly supporting or not? Fixes, etc.

> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 72 ++++++++++++++++++++++++++++---------
>  1 file changed, 56 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 388226dbad7f..85caa869a8c0 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -88,7 +88,8 @@ struct qcom_edp_phy_cfg {
>  	bool is_edp;
>  	const u8 *aux_cfg;
>  	const u8 *vco_div_cfg;
> -	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
> +	const struct qcom_edp_swing_pre_emph_cfg *dp_swing_pre_emph_cfg;
> +	const struct qcom_edp_swing_pre_emph_cfg *edp_swing_pre_emph_cfg;
>  	const struct phy_ver_ops *ver_ops;
>  };
>  
> @@ -151,6 +152,20 @@ static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg = {
>  	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3,
>  };
>  
> +static const u8 dp_pre_emp_hbr_rbr_v8[4][4] = {
> +	{ 0x00, 0x0e, 0x15, 0x1a },
> +	{ 0x00, 0x0e, 0x15, 0xff },
> +	{ 0x00, 0x0e, 0xff, 0xff },
> +	{ 0x00, 0xff, 0xff, 0xff }
> +};
> +
> +static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg_v8 = {
> +	.swing_hbr_rbr = &dp_swing_hbr_rbr,
> +	.swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
> +	.pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr_v8,
> +	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3,
> +};
> +
>  static const u8 edp_swing_hbr_rbr[4][4] = {
>  	{ 0x07, 0x0f, 0x16, 0x1f },
>  	{ 0x0d, 0x16, 0x1e, 0xff },
> @@ -186,6 +201,27 @@ static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
>  	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
>  };
>  
> +static const u8 edp_swing_hbr2_hbr3_v3[4][4] = {
> +	{ 0x0b, 0x11, 0x16, 0x1b },
> +	{ 0x0b, 0x19, 0x1f, 0xff },
> +	{ 0x18, 0x1f, 0xff, 0xff },
> +	{ 0x1f, 0xff, 0xff, 0xff }
> +};
> +
> +static const u8 edp_pre_emp_hbr2_hbr3_v3[4][4] = {
> +	{ 0x0c, 0x15, 0x19, 0x1e },
> +	{ 0x09, 0x14, 0x19, 0xff },
> +	{ 0x0f, 0x14, 0xff, 0xff },
> +	{ 0x0d, 0xff, 0xff, 0xff }
> +};
> +
> +static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg_v3 = {
> +	.swing_hbr_rbr = &edp_swing_hbr_rbr,
> +	.swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3_v3,
> +	.pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
> +	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3_v3,
> +};
> +
>  static const u8 edp_phy_aux_cfg_v4[DP_AUX_CFG_SIZE] = {
>  	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x00,
>  };
> @@ -242,12 +278,7 @@ static int qcom_edp_phy_init(struct phy *phy)
>  	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
>  	       edp->edp + DP_PHY_PD_CTL);
>  
> -	/*
> -	 * TODO: Re-work the conditions around setting the cfg8 value
> -	 * when more information becomes available about why this is
> -	 * even needed.
> -	 */
> -	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
> +	if (!edp->is_edp)
>  		aux_cfg[8] = 0xb7;
>  
>  	writel(0xfc, edp->edp + DP_PHY_MODE);
> @@ -271,7 +302,7 @@ static int qcom_edp_phy_init(struct phy *phy)
>  
>  static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
>  {
> -	const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->cfg->swing_pre_emph_cfg;
> +	const struct qcom_edp_swing_pre_emph_cfg *cfg;
>  	unsigned int v_level = 0;
>  	unsigned int p_level = 0;
>  	int ret;
> @@ -279,12 +310,14 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
>  	u8 emph;
>  	int i;
>  
> +	if (edp->is_edp)
> +		cfg = edp->cfg->edp_swing_pre_emph_cfg;
> +	else
> +		cfg = edp->cfg->dp_swing_pre_emph_cfg;
> +
>  	if (!cfg)
>  		return 0;

Is it not redundant now?

>  
> -	if (edp->is_edp)
> -		cfg = &edp_phy_swing_pre_emph_cfg;
> -
>  	for (i = 0; i < dp_opts->lanes; i++) {
>  		v_level = max(v_level, dp_opts->voltage[i]);
>  		p_level = max(p_level, dp_opts->pre[i]);
> @@ -591,20 +624,24 @@ static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
>  	.is_edp = false,
>  	.aux_cfg = edp_phy_aux_cfg_v5,
>  	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
> -	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
> +	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
> +	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
>  	.ver_ops = &qcom_edp_phy_ops_v4,
>  };
>  
>  static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
>  	.aux_cfg = edp_phy_aux_cfg_v4,
>  	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
> +	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
> +	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v3,
>  	.ver_ops = &qcom_edp_phy_ops_v3,
>  };
>  
>  static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
>  	.aux_cfg = edp_phy_aux_cfg_v4,
>  	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
> -	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
> +	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
> +	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
>  	.ver_ops = &qcom_edp_phy_ops_v4,
>  };
>  
> @@ -612,7 +649,8 @@ static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
>  	.is_edp = true,
>  	.aux_cfg = edp_phy_aux_cfg_v4,
>  	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
> -	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
> +	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
> +	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
>  	.ver_ops = &qcom_edp_phy_ops_v4,
>  };
>  
> @@ -811,7 +849,8 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
>  static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
>  	.aux_cfg = edp_phy_aux_cfg_v4,
>  	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
> -	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
> +	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
> +	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
>  	.ver_ops = &qcom_edp_phy_ops_v6,
>  };
>  
> @@ -991,7 +1030,8 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
>  static struct qcom_edp_phy_cfg glymur_phy_cfg = {
>  	.aux_cfg = edp_phy_aux_cfg_v8,
>  	.vco_div_cfg = edp_phy_vco_div_cfg_v8,
> -	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
> +	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v8,
> +	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
>  	.ver_ops = &qcom_edp_phy_ops_v8,
>  };
>  
> 
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
