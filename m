Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AB10CA0EE4
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 12:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjrvzRPcZv2z43Qgk6CDRknAdou+1zc0Kw9A80jjvPY=; b=Dh+HttAxxZExOe
	9ECGp8CXLVxj6BRv9XPUlB4JT/KsvSJDTbNk/QZ4peMmLyfHwzsDZ1aRaXZ2vAahvufd4qZgEnzCy
	XrqPiwlHiCuOeH965tOMXDSCoH2fj6TVU7o3xoJGgBwBEHHvgSf6Ac3jD6SaVxMw4P18FT6o0yj/v
	kK9l/ivfJFiiAnsrpMiSeMBNSZJiXRSb6G6fW5MluBFa5JK44pd1dRzomHKclMsZFtucZiqP9k/B5
	WiZKMVmj7EmO8EsXnaFIz2/sQb0qfnNQ6us0PoqIqI0/f0YKjs/99CE1kP6SWXUqp2bb6QeybM2cW
	2OwyhH8L3wktfH49KdfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohUA-0000000DUUQ-1K8I;
	Wed, 20 Aug 2025 12:00:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoh1i-0000000DPYz-0179
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 11:30:47 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K9xvVs003199
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:30:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=11qOqJ2/zlZWWFKG2Qr7IfBn
	gq7qq9U/nhTGIUfgWRE=; b=QZOKlVAg6zbinBbAlBM8YvB/mBK0kEER4HA8T0zi
	kcPs7uh7dDG0NCTzR+7taMHZZFq7OjNkCgRllYTACEqW5igjJqGBcYEWHqMy1abv
	TO91fM5R56+e5bCRMj9nm4HkY3FhDB1ohEVKvmypCbVm1hHTHfG9o/orQMdMwOzu
	z4bDpNq2lbxApwB5xy/hvpXEMPd+T6UDxPwzMahAMh/MfN5s07zX/TIlGkbQH1cc
	aSxTMk2GnNnASJBdpiK25MJRlB9C8VmHRLE5k8QWHBjSe5XHoWNK1p6ZlIgiybs6
	Td3FGMpkq4WPBgsT7vWdbwBkoK8J1+pKAuT6fRV21Yf0bQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52ahgxk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:30:44 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a88dd0193so142687346d6.0
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 04:30:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755689444; x=1756294244;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=11qOqJ2/zlZWWFKG2Qr7IfBngq7qq9U/nhTGIUfgWRE=;
        b=v6yBkQK9/j2qZl1HbAl2/QXfpSWWJGJA41pUXaJ2qs8dASTDN3m8gbdYkIWSm1mscQ
         /bvXovsFOLTf/rZ34vkGk0KUgIQpvMTXdLsGatGgnhqD2duNR2hrCED7CSn3CaG5qWQW
         4cnEWpgWZExcn3TI7Kscsu1v2mu1JbAD4rKDYLfN4gcLgNIdkXW6OMtwR30zo5HFAmXT
         oNNpd9Xwbd27hOOqeCbHF/qKDhyD5O/br6p6yPbC6BgHIyvm3ry+CIaUvLinEeUXeFGj
         DMx/cE7K43xbSVDdWY/LOuOpPATr/AXVbM5IJD7g2GzyUOVckrKdDeaY/8Ppl0z7mesR
         22jw==
X-Forwarded-Encrypted: i=1; AJvYcCUUs6xS8OzWKOAePhUXPkImzvL11PmmS2H0WWoknqwcnjb99LVg9bKiya8VluH3Dw7xQg0oixw/MUI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhsrUjIoJhhi+krw4w7ZBUejs57I80sGQ2pAIgsHCyvSjIg5iz
	P9GuNPDbdLm8NRSfUHKbH+VZQ4I9AVVrtqCuuntXM+cS8E2u1z1q30aEmHKi8NHJyyRWGVPo4yN
	bi3VZN/eQCnqLxW6XmZyxxDk+9yg4YPp59Mt4vF+PytE4BJFJGRpXsL82rIVhaAhCKqVU
X-Gm-Gg: ASbGnctg/QkvOmARPXq4M0GourQUH9PLNFFTuw08fvEVbaDdwNjS7snuHFhyXzXozFV
	+kNmKjGsvaoksstha/iEra5aJ1kl2Lf+tjRP+r0yFJmrSehY4qfKitDCcHBYPSSFe5MYAba14jf
	JeUykethY5h09DWzo69m17jhy7LjSBZsQ8Sc+m2fqgW4maYFA4xNEXoSMMQ8FrlQ2PTJE5RS4cM
	1r2AkhYJlMFxtzYMjODD5gNIxrDP7GJg1IxRhRfGn31bNBc2Mvm9jdD5qrEqm7F9xpxxuC2jKJa
	/8ao3Dy0UbqKzVDTmnBQpLXYu9b0M3XI2BrXO0RV2yBTvf/348cWR+/LuWqJNfsujR51P/gfsdJ
	WS4Nvkz3SntTlYkzYxnJ6sKfjp2zLs9vZDOyyLcwMBhpFVMg/bK2p
X-Received: by 2002:a05:6214:dc6:b0:707:77be:fc76 with SMTP id 6a1803df08f44-70d7714c5b0mr23381386d6.51.1755689443621;
        Wed, 20 Aug 2025 04:30:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHCoIBzEYR/mDTVo8mBK1FNVcFSnDbMhTwv7zD/ZmeWi/75iYf9Zf+uZargQHtGNMC8Hn4UzA==
X-Received: by 2002:a05:6214:dc6:b0:707:77be:fc76 with SMTP id 6a1803df08f44-70d7714c5b0mr23380446d6.51.1755689442859;
        Wed, 20 Aug 2025 04:30:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3f3e31sm2575508e87.119.2025.08.20.04.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:30:41 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:30:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 07/14] phy: qcom: qmp-usbc: Move reset and regulator
 config into PHY cfg
Message-ID: <ofvzduf5xyip7w6yde2xwsrvv3tdh7ew3yyzeya2qzpqty3j7p@bnetyjowhdn5>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-7-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-7-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-GUID: AF4rYHEbPvNOEQlu5FdWOacYuSexVyAP
X-Proofpoint-ORIG-GUID: AF4rYHEbPvNOEQlu5FdWOacYuSexVyAP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX0GdUrLvd4NAa
 WPBoD7Z/36u2PTbE+ukZUi+wfpFsOSAOTMEHPPFVUCsNz03wGJHm9ZCKE5XcJqj62rR6YOCUoWc
 2UdHvwYGeWjCjNMCR9p4cZOTf2E9i8en5e12UfrMIb0KlXkb2k2sjcqH32PTFiWxG98dIXmysHL
 0ywtcnXIJbWEMTaYFjhysxIJUz/JUZg66ZO7lVFYiv4Pa+RYaabN8RMdLxVnZng+jq101h4PWf8
 zJquq8o5SRzxxtQaYWlyfPxGQu2Yi6jOAYqMjcKiqMEq02/kdg+3WwKqgIt/Ssgo27OQThT/0eB
 7fxxU/H0uGR2SyR3VkdSpQFH3n/2RvyAHwj06tKxL/+L3T+weJ8IcWB0TJIz+a4yr7Yst5T86r7
 fYhemDIwkKWREnDjU9g2grKgYf4XKQ==
X-Authority-Analysis: v=2.4 cv=XfbQDI55 c=1 sm=1 tr=0 ts=68a5b1e4 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Buvtj7qxYYKUlD_DlT0A:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2508110000
 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_043046_169142_7B6CC781 
X-CRM114-Status: GOOD (  27.92  )
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

On Wed, Aug 20, 2025 at 05:34:49PM +0800, Xiangxu Yin wrote:
> Refactor reset and regulator configuration to be managed via qmp_phy_cfg
> instead of hardcoded lists. This enables per-PHY customization and
> simplifies initialization logic for USB-only and USB/DP switchable PHYs.

Please split into two patches in order to simplify reviewing.

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 108 +++++++++++++++----------------
>  1 file changed, 53 insertions(+), 55 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index 61128d606238321d1b573655b3b987226aa2d594..4e797b7e65da0e3a827efa9a179f1c150c1b8b00 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -421,8 +421,9 @@ struct qmp_phy_cfg {
>  	int (*configure_dp_phy)(struct qmp_usbc *qmp);
>  	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
>  
> -	/* regulators to be requested */
> -	const char * const *vreg_list;
> +	const char * const *reset_list;
> +	int num_resets;
> +	const struct regulator_bulk_data *vreg_list;
>  	int num_vregs;
>  
>  	/* array of registers with different offsets */
> @@ -453,7 +454,6 @@ struct qmp_usbc {
>  	struct clk_hw dp_pixel_hw;
>  	struct clk_bulk_data *clks;
>  	int num_clks;
> -	int num_resets;
>  	struct reset_control_bulk_data *resets;
>  	struct regulator_bulk_data *vregs;
>  
> @@ -514,9 +514,18 @@ static const char * const usb3phy_reset_l[] = {
>  	"phy_phy", "phy",
>  };
>  
> -/* list of regulators */
> -static const char * const qmp_phy_vreg_l[] = {
> -	"vdda-phy", "vdda-pll",
> +static const char * const usb3dpphy_reset_l[] = {
> +	"phy_phy", "dp_phy",
> +};
> +
> +static const struct regulator_bulk_data qmp_phy_usb_vreg_l[] = {
> +	{ .supply = "vdda-phy" },
> +	{ .supply = "vdda-pll" },

Please fill in the values for all platforms. It well might be that they
all share the same current requirements.

> +};
> +
> +static const struct regulator_bulk_data qmp_phy_usbdp_vreg_l[] = {
> +	{ .supply = "vdda-phy", .init_load_uA = 21800 },
> +	{ .supply = "vdda-phy", .init_load_uA = 36000 },

Typo

>  };
>  
>  static const struct qmp_usbc_offsets qmp_usbc_offsets_v3_qcm2290 = {
> @@ -569,8 +578,10 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
>  	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
>  	.pcs_tbl                = msm8998_usb3_pcs_tbl,
>  	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
> -	.vreg_list              = qmp_phy_vreg_l,
> -	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> +	.reset_list		= usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
> +	.vreg_list              = qmp_phy_usb_vreg_l,
> +	.num_vregs              = ARRAY_SIZE(qmp_phy_usb_vreg_l),
>  	.regs                   = qmp_v3_usb3phy_regs_layout,
>  };
>  
> @@ -586,8 +597,10 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
>  	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
> -	.vreg_list		= qmp_phy_vreg_l,
> -	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.reset_list		= usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
> +	.vreg_list		= qmp_phy_usb_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_usb_vreg_l),
>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
>  };
>  
> @@ -603,8 +616,10 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
>  	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
> -	.vreg_list		= qmp_phy_vreg_l,
> -	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.reset_list		= usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
> +	.vreg_list		= qmp_phy_usb_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_usb_vreg_l),
>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
>  };
>  
> @@ -637,6 +652,11 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
>  
>  	.swing_tbl		= &qmp_dp_voltage_swing_hbr2_rbr,
>  	.pre_emphasis_tbl	= &qmp_dp_pre_emphasis_hbr2_rbr,
> +
> +	.reset_list		= usb3dpphy_reset_l,
> +	.num_resets		= ARRAY_SIZE(usb3dpphy_reset_l),
> +	.vreg_list		= qmp_phy_usbdp_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_usbdp_vreg_l),
>  };
>  
>  static int qmp_usbc_com_init(struct phy *phy)
> @@ -653,13 +673,13 @@ static int qmp_usbc_com_init(struct phy *phy)
>  		return ret;
>  	}
>  
> -	ret = reset_control_bulk_assert(qmp->num_resets, qmp->resets);
> +	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>  	if (ret) {
>  		dev_err(qmp->dev, "reset assert failed\n");
>  		goto err_disable_regulators;
>  	}
>  
> -	ret = reset_control_bulk_deassert(qmp->num_resets, qmp->resets);
> +	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
>  	if (ret) {
>  		dev_err(qmp->dev, "reset deassert failed\n");
>  		goto err_disable_regulators;
> @@ -682,7 +702,7 @@ static int qmp_usbc_com_init(struct phy *phy)
>  	return 0;
>  
>  err_assert_reset:
> -	reset_control_bulk_assert(qmp->num_resets, qmp->resets);
> +	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>  err_disable_regulators:
>  	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>  
> @@ -694,7 +714,7 @@ static int qmp_usbc_com_exit(struct phy *phy)
>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  
> -	reset_control_bulk_assert(qmp->num_resets, qmp->resets);
> +	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>  
>  	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
>  
> @@ -921,42 +941,22 @@ static const struct dev_pm_ops qmp_usbc_pm_ops = {
>  			   qmp_usbc_runtime_resume, NULL)
>  };
>  
> -static int qmp_usbc_vreg_init(struct qmp_usbc *qmp)
> +static int qmp_usbc_reset_init(struct qmp_usbc *qmp)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> -	struct device *dev = qmp->dev;
> -	int num = cfg->num_vregs;
> -	int i;
> -
> -	qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
> -	if (!qmp->vregs)
> -		return -ENOMEM;
> -
> -	for (i = 0; i < num; i++)
> -		qmp->vregs[i].supply = cfg->vreg_list[i];
> -
> -	return devm_regulator_bulk_get(dev, num, qmp->vregs);
> -}
> -
> -static int qmp_usbc_reset_init(struct qmp_usbc *qmp,
> -			      const char *const *reset_list,
> -			      int num_resets)
> -{
>  	struct device *dev = qmp->dev;
>  	int i;
>  	int ret;
>  
> -	qmp->resets = devm_kcalloc(dev, num_resets,
> +	qmp->resets = devm_kcalloc(dev, cfg->num_resets,
>  				   sizeof(*qmp->resets), GFP_KERNEL);
>  	if (!qmp->resets)
>  		return -ENOMEM;
>  
> -	for (i = 0; i < num_resets; i++)
> -		qmp->resets[i].id = reset_list[i];
> +	for (i = 0; i < cfg->num_resets; i++)
> +		qmp->resets[i].id = cfg->reset_list[i];
>  
> -	qmp->num_resets = num_resets;
> -
> -	ret = devm_reset_control_bulk_get_exclusive(dev, num_resets, qmp->resets);
> +	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_resets, qmp->resets);
>  	if (ret)
>  		return dev_err_probe(dev, ret, "failed to get resets\n");
>  
> @@ -1146,11 +1146,6 @@ static int qmp_usbc_parse_usb_dt_legacy(struct qmp_usbc *qmp, struct device_node
>  
>  	qmp->num_clks = ret;
>  
> -	ret = qmp_usbc_reset_init(qmp, usb3phy_legacy_reset_l,
> -				 ARRAY_SIZE(usb3phy_legacy_reset_l));
> -	if (ret)
> -		return ret;
> -
>  	return 0;
>  }
>  
> @@ -1187,14 +1182,9 @@ static int qmp_usbc_parse_usb_dt(struct qmp_usbc *qmp)
>  	qmp->pipe_clk = devm_clk_get(dev, "pipe");
>  	if (IS_ERR(qmp->pipe_clk)) {
>  		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
> -				     "failed to get pipe clock\n");
> +					"failed to get pipe clock\n");

unrelated

>  	}
>  
> -	ret = qmp_usbc_reset_init(qmp, usb3phy_reset_l,
> -				 ARRAY_SIZE(usb3phy_reset_l));
> -	if (ret)
> -		return ret;
> -
>  	return 0;
>  }
>  
> @@ -1228,6 +1218,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>  	struct phy_provider *phy_provider;
>  	struct device_node *np;
>  	struct qmp_usbc *qmp;
> +	const struct qmp_phy_cfg *cfg;
>  	int ret;
>  
>  	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
> @@ -1239,13 +1230,20 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>  
>  	qmp->orientation = TYPEC_ORIENTATION_NORMAL;
>  
> -	qmp->cfg = of_device_get_match_data(dev);
> -	if (!qmp->cfg)
> +	cfg = of_device_get_match_data(dev);
> +	if (!cfg)
>  		return -EINVAL;
>  
> +	qmp->cfg = cfg;

Why? This doesn't seem related at all.

> +
>  	mutex_init(&qmp->phy_mutex);
>  
> -	ret = qmp_usbc_vreg_init(qmp);
> +	ret = qmp_usbc_reset_init(qmp);
> +	if (ret)
> +		return ret;
> +
> +	ret = devm_regulator_bulk_get_const(qmp->dev, cfg->num_vregs,
> +					 cfg->vreg_list, &qmp->vregs);
>  	if (ret)
>  		return ret;
>  
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
