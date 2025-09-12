Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4CE4CAC582
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 10:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVOeyPoxX9e8lpIR1YY2yWzcl2XxNi54z+TuE2BZoZE=; b=PuSJhzQV81t/Kk
	rVLKnL/bmVGibjChyS9hAS9Xu3/qHPYndminQc6p3v9Y8Z08JsNE7+lCSBz01kBf9PzugKRF1gnT5
	MYunKeLIP5ZGSJcf05WrCEPm7+SfY4yUMBrXGYMz3jT2Pf0wtICDFeUU7ARa973iTcD2PRwipiGMD
	BD+mqX5K1K1m4+LTDs0Evt9UAketl+FVEqvx4Pazx/7KZH/1aAcLQJS/AgSVldWNrbPHvtgE+Sj3w
	rS6s+CKjd1JFsoTCuE2tMnS/b/wcbdKoPPIuduQI4NaY3tDrpmc+IvPB5st4na2Vc5btapG9Qsux9
	G4t0WoxheaX8TiatwQsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux0mE-00000008Um0-1aPq;
	Fri, 12 Sep 2025 10:13:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux0mC-00000008Ukr-0eEa
	for linux-phy@bombadil.infradead.org;
	Fri, 12 Sep 2025 10:13:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=kzdgJd2b55rTyRioSKAWB5pdPujDg59niQbpGU1S8ro=; b=h0lyd+HJnUHnHB3NC7unTpDsfL
	EU7B8XHGXxUFbWJ9MwUNO9b7DwoFit1kjMWrm3K2G/B+f1gAk0HeOzTrrcHjJGcQCmUESrMazr86g
	Iv7IgCWywLXPrmGMPA9kAHGyqLAJamQa7Bd/cfRyrRyXXoo5jld6aLK1HTTCrINjaONex1kiH266I
	0Euf6qTzYCj4WjFJeZHgoPGqwuqdtLsuEr93SkD0kVdn/RnbOkqPGlGBxdaQzy1bNaeADCjS+tp1A
	tuWJTuxN3qtfkxB5Z2JLdFxc2c0MDt5j4Ha3PmXrjIUf1LlGAw1WiLc5Rf0NqIJP67EpWnjxPjiGO
	mxSRvyow==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux0m8-00000006Kv9-3p2s
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 10:13:06 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fLbi019855
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:13:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kzdgJd2b55rTyRioSKAWB5pd
	PujDg59niQbpGU1S8ro=; b=luaYgYh3uK34XTUXmCZbepDVtB5vMp+tJK+jhD7C
	KiuE0FuytV4hkOUj6v1NSkmWwqsYgPpLMhxK6mm7v0zY1x/xePA8WdOmQafzNAoV
	nyvZfWfcaHBvZd512V6E6TRWo0oxQeQsCEFLs1gicPtD+PRQ+Kp8jJpGlVBIR6aF
	iddw8xmH94pO2Dw/XlR/qMuouXXbp171rWQB+XqnQ1LWNim1DAd2/ekmIlAeEnQR
	qVxAKcbkydvUyoejufcs0TY/kwcfhJFhBvQMwdNnYLdsAN3rdcPR5l2ZCSoK/Ifk
	XgZ6o5LlYszSVwSzpoFR5vTI2wUvuEVErLfG7U09wEta8w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t387j2r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:13:02 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b62de0167aso45982901cf.0
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 03:13:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757671981; x=1758276781;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kzdgJd2b55rTyRioSKAWB5pdPujDg59niQbpGU1S8ro=;
        b=ky3cJVMqS2uqFbO+OYNcRREjI2o7irM9I2p1B6BagAb+MLIyZ5Wjea3yrE1bjI5DGN
         ivTFVofJQUUZ+IMFQbvinWCcoK6/ELb6aG68sXda2g/E7HsKxq6OGpKf9PymFb05kgEc
         fRPAPXHJJ+VFK9jTHUMubMGUid8/dQCww2l8xNZGjwDYomRooGSTDzMIgjTJxyfEDLeW
         UNoJvdicBBBtwOh8slXsQT5B53sk/L2IKrRpo3hbCuzQ8nD3xLgOC+nz9LPNd5YS2gtw
         laLpT/RVM3WyuqcYftTmupD3+x7bDTgUR024YRA3Xhs+JTJK1Pa/mpvBzzdQMzxE+PXb
         +Cxw==
X-Forwarded-Encrypted: i=1; AJvYcCXQnHsDlg2L8YbH6M6tKIZ9PiLfT9W8N/Odl3pM7fnF+ESrWAns4VzMdeRLVu8f+gwJ9c1PEiqtWBQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz71J6/eursDOdLTOyUMiOUDD9gHFIQA/qZmi962bIHmjGtlnsa
	Xyfo5p4aY5lQzmyI4D9X0mGbSNRzcfUQIN4thv2Ll9fOGMMDspnisAxaIkwFW/MjFy7koVxRHJw
	8B1Z5mK4BfQVgIgn6lVaCQ9xrS48oN71R/oRayrfcTFX+7i8AebeoNt2nBsVF+I96KwisyKRr3d
	Tv
X-Gm-Gg: ASbGncs2V/GObwNVx8Zfq8toF039f8DBIdUjY+/3snRq/h2LHz6sz3cCUeK6QoBZ87W
	U1DCoeFrO+L7d1Xj4N/YP0acvNH+v3SpdfdTa8Q432MxWB5F/eHGUDADEP9CjW0hBa0RZxFktAe
	wsm7OzNBVTojQhoimk1Hj9z/vVJcI3gftU5pct0Nn3r3X0IMeHGPtVHznvxu5DRtFOoYIAiE6My
	evQPuwFVyxqV3m6ZyqTXnALovgDWE507lzmp6Yz1IugJLzCXIQEpqtwYKYLoj9VlOnXm9mNHnPn
	4XKO8hMDnzG7d/XzOoWQDWHJ5POQhmQlLCpYe1iNQCJh5GkD/fMdNIE1F2H2bKR0XMvG7Pric9g
	GLqpf2atJH9dNBqoup94Y0V/p1OxCzlnmcPJuEtF3TTSHaFPYrOFf
X-Received: by 2002:a05:622a:10:b0:4b5:d5fc:8c87 with SMTP id d75a77b69052e-4b77d0427ffmr22256581cf.26.1757671980945;
        Fri, 12 Sep 2025 03:13:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEoJukqMxUtcrDD1bS99KAwsD+FA7UYyzb5QtFfnxCg2OfyWX9XReIqdCFCIcthvMKAFFNBuQ==
X-Received: by 2002:a05:622a:10:b0:4b5:d5fc:8c87 with SMTP id d75a77b69052e-4b77d0427ffmr22256011cf.26.1757671980281;
        Fri, 12 Sep 2025 03:13:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571a0fd0825sm108277e87.125.2025.09.12.03.12.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 03:12:59 -0700 (PDT)
Date: Fri, 12 Sep 2025 13:12:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 07/13] phy: qcom: qmp-usbc: Add DP PHY configuration
 support for QCS615
Message-ID: <sy4kyh3kd6s4nr75unt5r6gxnyeqq6bfjj4tizwiw2fvbw4ala@i3theqmwiv3d>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-7-2702bdda14ed@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-7-2702bdda14ed@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: veFU_JvA9gC4q_rFufjPqDqRtHmgaAcl
X-Proofpoint-GUID: veFU_JvA9gC4q_rFufjPqDqRtHmgaAcl
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c3f22e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=MUPAedP9neNk1PPBOv8A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX6jxXWROM7TQp
 N5N1nLd7/XUDs4M/ULeL8pxrLhLXBlZc6e7n+zb8/nHwfkuG2vtv/yrfio59R9gctwcYRMJW8nF
 QCHn0GzZEjrRXlRRpsxmdh3DqEh0ppNPXmWdx3uktUsUmiMfPxlcrmvPDYhILsa/Iqp/CWn/kK6
 A9KooHTpS/6IYKcGil96SpHRj9aOdsXSKcFf0wtAYk0hK3kNhddwGsqUBRXLzDoNah0win2JZnd
 IO2JDJw+0JD+qoZ/JXv6yrQA9LNmC3fsGVLZ2t6oqJ8Z5p9xY41PM802Im9hunHW1g701UQMwhx
 CXHbvaILtO9+3x2Wo900SK6/7LgT0Iazw8ZF9Wy943kSQUlNK/JOqi4EZYDnHgJTzA/f+uyACJk
 1XfR0Qll
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_111305_391257_45E53232 
X-CRM114-Status: GOOD (  31.13  )
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

On Thu, Sep 11, 2025 at 10:55:04PM +0800, Xiangxu Yin wrote:
> Introduce DisplayPort PHY configuration routines for QCS615, including
> aux channel setup, lane control, voltage swing tuning, clock config and
> calibration. These callbacks are registered via qmp_phy_cfg to enable DP
> mode on USB/DP switchable Type-C PHYs.
> 
> Add register define for QMP_DP_PHY_V2 series.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h |  21 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c      | 251 ++++++++++++++++++++++++++
>  2 files changed, 272 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..8b9572d3cdebb70a0f3811f129a40aa78e184638
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2017, The Linux Foundation. All rights reserved.
> + */
> +
> +#ifndef QCOM_PHY_QMP_DP_PHY_V2_H_
> +#define QCOM_PHY_QMP_DP_PHY_V2_H_
> +
> +// /* Only for QMP V2 PHY - DP PHY registers */
> +#define QSERDES_V2_DP_PHY_AUX_INTERRUPT_MASK		0x048
> +#define QSERDES_V2_DP_PHY_AUX_INTERRUPT_CLEAR		0x04c
> +#define QSERDES_V2_DP_PHY_AUX_BIST_CFG			0x050
> +
> +#define QSERDES_V2_DP_PHY_VCO_DIV			0x068
> +#define QSERDES_V2_DP_PHY_TX0_TX1_LANE_CTL		0x06c
> +#define QSERDES_V2_DP_PHY_TX2_TX3_LANE_CTL		0x088
> +
> +#define QSERDES_V2_DP_PHY_SPARE0			0x0ac
> +#define QSERDES_V2_DP_PHY_STATUS			0x0c0
> +
> +#endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index 663024b8c09124f2991b8e0537a9feb60baaa686..7b2b47320cbb2d16e4f316b0f52fdc1bd09fe656 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -28,6 +28,9 @@
>  #include "phy-qcom-qmp.h"
>  #include "phy-qcom-qmp-pcs-misc-v3.h"
>  
> +#include "phy-qcom-qmp-dp-phy.h"
> +#include "phy-qcom-qmp-dp-phy-v2.h"
> +
>  #define PHY_INIT_COMPLETE_TIMEOUT		10000
>  
>  /* set of registers with offsets different per-PHY */
> @@ -619,6 +622,11 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
>  };
>  
> +static void qcs615_qmp_dp_aux_init(struct qmp_usbc *qmp);
> +static void qcs615_qmp_configure_dp_tx(struct qmp_usbc *qmp);
> +static int qcs615_qmp_configure_dp_phy(struct qmp_usbc *qmp);
> +static int qcs615_qmp_calibrate_dp_phy(struct qmp_usbc *qmp);
> +
>  static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
>  	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
>  
> @@ -666,6 +674,11 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
>  	.swing_tbl		= &qmp_dp_voltage_swing_hbr2_rbr,
>  	.pre_emphasis_tbl	= &qmp_dp_pre_emphasis_hbr2_rbr,
>  
> +	.dp_aux_init		= qcs615_qmp_dp_aux_init,
> +	.configure_dp_tx	= qcs615_qmp_configure_dp_tx,
> +	.configure_dp_phy	= qcs615_qmp_configure_dp_phy,
> +	.calibrate_dp_phy	= qcs615_qmp_calibrate_dp_phy,
> +
>  	.reset_list		= usb3dpphy_reset_l,
>  	.num_resets		= ARRAY_SIZE(usb3dpphy_reset_l),
>  	.vreg_list		= qmp_phy_qcs615_vreg_l,
> @@ -736,6 +749,244 @@ static int qmp_usbc_com_exit(struct phy *phy)
>  	return 0;
>  }
>  
> +static void qcs615_qmp_dp_aux_init(struct qmp_usbc *qmp)

Please rename the functions according to their intention. Are they
common to all USBC PHYs, are they specific to v2 (or v3) PHYs or are
they specific to QCS615? At least this is the approach that has been
used inside combo and eDP PHY drivers.

> +{
> +	writel(DP_PHY_PD_CTL_AUX_PWRDN |
> +	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
> +	       DP_PHY_PD_CTL_PLL_PWRDN,
> +	       qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
> +
> +	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> +	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
> +	       DP_PHY_PD_CTL_PLL_PWRDN,
> +	       qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
> +
> +	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG0);
> +	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
> +	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG2);
> +	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG3);
> +	writel(0x0a, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG4);
> +	writel(0x26, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG5);
> +	writel(0x0a, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG6);
> +	writel(0x03, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG7);
> +	writel(0xbb, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG8);
> +	writel(0x03, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG9);
> +	qmp->dp_aux_cfg = 0;
> +
> +	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
> +	       PHY_AUX_SYNC_ERR_MASK | PHY_AUX_ALIGN_ERR_MASK |
> +	       PHY_AUX_REQ_ERR_MASK,
> +	       qmp->dp_dp_phy + QSERDES_V2_DP_PHY_AUX_INTERRUPT_MASK);
> +}
> +
> +static int qcs615_qmp_configure_dp_swing(struct qmp_usbc *qmp)
> +{
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
> +	void __iomem *tx = qmp->dp_tx;
> +	void __iomem *tx2 = qmp->dp_tx2;
> +	unsigned int v_level = 0, p_level = 0;
> +	u8 voltage_swing_cfg, pre_emphasis_cfg;
> +	int i;
> +
> +	if (dp_opts->lanes > 4) {
> +		dev_err(qmp->dev, "Invalid lane_num(%d)\n", dp_opts->lanes);
> +		return -EINVAL;
> +	}
> +
> +	for (i = 0; i < dp_opts->lanes; i++) {
> +		v_level = max(v_level, dp_opts->voltage[i]);
> +		p_level = max(p_level, dp_opts->pre[i]);
> +	}
> +
> +	if (v_level > 4 || p_level > 4) {
> +		dev_err(qmp->dev, "Invalid v(%d) | p(%d) level)\n",
> +			v_level, p_level);
> +		return -EINVAL;
> +	}
> +
> +	voltage_swing_cfg = (*cfg->swing_tbl)[v_level][p_level];
> +	pre_emphasis_cfg = (*cfg->pre_emphasis_tbl)[v_level][p_level];
> +
> +	voltage_swing_cfg |= DP_PHY_TXn_TX_DRV_LVL_MUX_EN;
> +	pre_emphasis_cfg |= DP_PHY_TXn_TX_EMP_POST1_LVL_MUX_EN;
> +
> +	if (voltage_swing_cfg == 0xff && pre_emphasis_cfg == 0xff)
> +		return -EINVAL;
> +
> +	writel(voltage_swing_cfg, tx + QSERDES_V3_TX_TX_DRV_LVL);
> +	writel(pre_emphasis_cfg, tx + QSERDES_V3_TX_TX_EMP_POST1_LVL);
> +	writel(voltage_swing_cfg, tx2 + QSERDES_V3_TX_TX_DRV_LVL);
> +	writel(pre_emphasis_cfg, tx2 + QSERDES_V3_TX_TX_EMP_POST1_LVL);

If QCS615 is a V2 PHY, why are you using V3 registers here?

> +
> +	return 0;
> +}
> +
> +static void qmp_usbc_configure_dp_mode(struct qmp_usbc *qmp)
> +{
> +	bool reverse = (qmp->orientation == TYPEC_ORIENTATION_REVERSE);
> +	u32 val;
> +
> +	val = DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> +	      DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN;
> +
> +	writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
> +
> +	if (reverse)
> +		writel(0xc9, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);
> +	else
> +		writel(0xd9, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);
> +}
> +
> +static int qmp_usbc_configure_dp_clocks(struct qmp_usbc *qmp)
> +{
> +	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
> +	u32 phy_vco_div;
> +	unsigned long pixel_freq;
> +
> +	switch (dp_opts->link_rate) {
> +	case 1620:
> +		phy_vco_div = 0x1;
> +		pixel_freq = 1620000000UL / 2;
> +		break;
> +	case 2700:
> +		phy_vco_div = 0x1;
> +		pixel_freq = 2700000000UL / 2;
> +		break;
> +	case 5400:
> +		phy_vco_div = 0x2;
> +		pixel_freq = 5400000000UL / 4;
> +		break;
> +	default:
> +		dev_err(qmp->dev, "link rate:%d not supported\n", dp_opts->link_rate);
> +		return -EINVAL;
> +	}
> +	writel(phy_vco_div, qmp->dp_dp_phy + QSERDES_V2_DP_PHY_VCO_DIV);
> +
> +	clk_set_rate(qmp->dp_link_hw.clk, dp_opts->link_rate * 100000);
> +	clk_set_rate(qmp->dp_pixel_hw.clk, pixel_freq);
> +
> +	return 0;
> +}
> +
> +static void qcs615_qmp_configure_dp_tx(struct qmp_usbc *qmp)
> +{
> +	void __iomem *tx = qmp->dp_tx;
> +	void __iomem *tx2 = qmp->dp_tx2;
> +
> +	/* program default setting first */
> +	writel(0x2a, tx + QSERDES_V3_TX_TX_DRV_LVL);
> +	writel(0x20, tx + QSERDES_V3_TX_TX_EMP_POST1_LVL);
> +	writel(0x2a, tx2 + QSERDES_V3_TX_TX_DRV_LVL);
> +	writel(0x20, tx2 + QSERDES_V3_TX_TX_EMP_POST1_LVL);

Same question here.

> +
> +	qcs615_qmp_configure_dp_swing(qmp);
> +}
> +
> +static int qcs615_qmp_configure_dp_phy(struct qmp_usbc *qmp)
> +{
> +	u32 status;
> +	int ret;
> +
> +	qmp_usbc_configure_dp_mode(qmp);
> +
> +	writel(0x05, qmp->dp_dp_phy + QSERDES_V2_DP_PHY_TX0_TX1_LANE_CTL);
> +	writel(0x05, qmp->dp_dp_phy + QSERDES_V2_DP_PHY_TX2_TX3_LANE_CTL);
> +
> +	ret = qmp_usbc_configure_dp_clocks(qmp);
> +	if (ret)
> +		return ret;
> +
> +	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +	writel(0x05, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +
> +	writel(0x20, qmp->dp_serdes + QSERDES_COM_RESETSM_CNTRL);
> +
> +	if (readl_poll_timeout(qmp->dp_serdes + QSERDES_COM_C_READY_STATUS,
> +			       status,
> +			       ((status & BIT(0)) > 0),
> +			       500,
> +			       10000)) {
> +		dev_err(qmp->dev, "C_READY not ready\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	if (readl_poll_timeout(qmp->dp_serdes + QSERDES_COM_CMN_STATUS,
> +			       status,
> +			       ((status & BIT(0)) > 0),
> +			       500,
> +			       10000)){
> +		dev_err(qmp->dev, "FREQ_DONE not ready\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	if (readl_poll_timeout(qmp->dp_serdes + QSERDES_COM_CMN_STATUS,
> +			       status,
> +			       ((status & BIT(1)) > 0),
> +			       500,
> +			       10000)){
> +		dev_err(qmp->dev, "PLL_LOCKED not ready\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	writel(0x19, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +
> +	if (readl_poll_timeout(qmp->dp_dp_phy + QSERDES_V2_DP_PHY_STATUS,
> +			       status,
> +			       ((status & BIT(0)) > 0),
> +			       500,
> +			       10000)){
> +		dev_err(qmp->dev, "TSYNC_DONE not ready\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	if (readl_poll_timeout(qmp->dp_dp_phy + QSERDES_V2_DP_PHY_STATUS,
> +			       status,
> +			       ((status & BIT(1)) > 0),
> +			       500,
> +			       10000)){
> +		dev_err(qmp->dev, "PHY_READY not ready\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	writel(0x3f, qmp->dp_tx + QSERDES_V3_TX_TRANSCEIVER_BIAS_EN);
> +	writel(0x10, qmp->dp_tx + QSERDES_V3_TX_HIGHZ_DRVR_EN);
> +	writel(0x0a, qmp->dp_tx + QSERDES_V3_TX_TX_POL_INV);
> +	writel(0x3f, qmp->dp_tx2 + QSERDES_V3_TX_TRANSCEIVER_BIAS_EN);
> +	writel(0x10, qmp->dp_tx2 + QSERDES_V3_TX_HIGHZ_DRVR_EN);
> +	writel(0x0a, qmp->dp_tx2 + QSERDES_V3_TX_TX_POL_INV);

And here

> +
> +	writel(0x18, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +	writel(0x19, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +
> +	if (readl_poll_timeout(qmp->dp_dp_phy + QSERDES_V2_DP_PHY_STATUS,
> +			       status,
> +			       ((status & BIT(1)) > 0),
> +			       500,
> +			       10000)){
> +		dev_err(qmp->dev, "PHY_READY not ready\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	return 0;
> +}
> +
> +static int qcs615_qmp_calibrate_dp_phy(struct qmp_usbc *qmp)
> +{
> +	static const u8 cfg1_settings[] = {0x13, 0x23, 0x1d};

Are these the actual values or is it a C&P from the combo PHY?

> +	u8 val;
> +
> +	qmp->dp_aux_cfg++;
> +	qmp->dp_aux_cfg %= ARRAY_SIZE(cfg1_settings);
> +	val = cfg1_settings[qmp->dp_aux_cfg];
> +
> +	writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
> +
> +	return 0;
> +}
> +
>  static int qmp_usbc_usb_power_on(struct phy *phy)
>  {
>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);
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
