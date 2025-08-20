Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 600C4CA0EE4
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 11:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rC14dA/xqI1oG1kVzMD5fNcrDjnSGmrAIgV6W5oBL7E=; b=wOYwoqH/nYYC4m
	cK6JJsRDkOc0s5DrtlRLHia3vOJ/QTzujRRl6+5r8Pf2H2rBdO4LrWSPib0WfB8G6n3U9MswEWhey
	YzxyAI1xvZJR4MnOydGEGIBSPldzJU6yg0bsfb+xWDtuqX8MGXwEYkiVcr6iu395VpG53MHNZhbN7
	SDM6mZtT6OLEpCYclqqeUBWYRoCJ3WMH04AtBRFz5oX/e/EwWOvSl5ApMvqdBEgpZIvUeN2KqYWGR
	O3rCtdTpQeItwKLglhP/9eeCyHzvDnSegxPRySERhPk8iFLOxKy5mUIT/cZvTO2QPaMA14VEbS/Dh
	AmOsgeuUsYsVL/hEv4UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohP2-0000000DTyv-0LXE;
	Wed, 20 Aug 2025 11:54:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogvF-0000000DNqC-0SIo
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 11:24:06 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57KA1FxX031593
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:24:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EuD+Bc6KdiQI4X6+HM5Q47sW
	/v3v69hO/DD7lycWQNc=; b=pkTjb6l/5sHY7Nta+gekct4ANscCgigVpoFzyGwV
	u3kPDnBbdIq0RT9odv2wBpXPPRUVzxAMOSsBFcqFqBr3OVi/JmwA/5ncHJGcWsgw
	d13ZJ3Wbpl7ApBJbNhfe0/EK+TgcS/7WzIUAUEvMTdCcfAPLVk0+NmQMtqx3Oy5T
	0hRGw1uvPRIApF0F1z/uwKJtyRAwCdb8Plr/ZN1K3RZElolv5TGU1Bc1SB+kVEgz
	cUcpEz3A1jOCkH1oMZFdJFoDa8hqMrYu2gB9RJDIx0r6q3hjiATsoduRUZIBd3uc
	ixHKOOg/ulWMVBMsuY88qHjlYnYVOUzHHwwd4Vnk3nqryQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52dhfr5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:24:04 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a88dd0193so142557836d6.0
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 04:24:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755689043; x=1756293843;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EuD+Bc6KdiQI4X6+HM5Q47sW/v3v69hO/DD7lycWQNc=;
        b=QBVrovEc0BtncRQUqmN7pPoNgXvYp0/nckubQPx3Lrqx8078dL1+qqhOWxklgvdh/B
         LTY364ilqL9lrPnoxS9S/dsUeYfTDuZ2SNfoYgX7mo3/qJXGN9vV5TCcelyMq+7rb9Vb
         xFYxeZxdFftJdJjXvaGYzvTAismk6dGPytiQ8UMTJEXVaQbOFGpmGxsuX7ECQzXobEn3
         vlOcljKJHfok4syLj2zUIS871Z9qWK9l/1UQlPtRPbU60aAtOIS6f2yrGwWCArBsIH3c
         4kG0jSxGCo0rZteav5/QZD9wRUejP7vYbBGLVkskIp2R6BADS6ONV5DjTa7QGcrA4zdn
         /zzA==
X-Forwarded-Encrypted: i=1; AJvYcCVaz35G8EdGFOW2BbJsHHMRRy46tVqkbdrhbR7exW3OppYNm/qsOfgmJ+LPM08P3WDPAxAXJl7qlPQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzfHuXS/3vBsvRCobAF+6fFgasCBkWoObr4VgqPxTQ+xNwxojDC
	JffpjN5RFNMhYzqP3p/izA/VguSuddQTZxMM7qsojc3fGONyD2vubeYmsoZPzOyr+O+zMpUB0Te
	/4qo0aUDY3soKPshvYR5/fpIzXS7c3gKwF36HjYx2EZHKEPTy3b3WQrhtDVnKFKnPvdEq
X-Gm-Gg: ASbGnct9ok6rToZCjEKO1YGntiWNpQUDt+NUK+qTfJ90OoroUVz0z5DNLG9Eag7HZKy
	UR20Lf2703Zz+GyN2beDelaGUb5gYSiYNF0G7FnUrDgBd7XLaGy8JguhxCd4CrX4sRGStbS0BKz
	YECmGjocN7GUC+zks6xngkipFdxYW1Z4ig0fnjPjJ/MobU4GCIeewN0uy0ouhvboKKfvMaEd2UE
	7zsyNi2wMm5HyFdw24Z1sz1MfUG7neVCLqws4jmqZb1uOvb/IJJcFDMt+NgBaVG0oafy9IQVv9Z
	WzD4p/drDk4peJMVRYLIop6PyZ+m1BAA16C9wICm1NyFPdqPgH5TCdYyi3jwzRxQPNdYSLNbZrQ
	z0LEYm1OJtETMV92gbEJs4ex69IBrG0ya386peiE3xQlp2hVYNNE/
X-Received: by 2002:ad4:5e85:0:b0:707:5c72:c5bc with SMTP id 6a1803df08f44-70d770c81dbmr22798046d6.35.1755689043170;
        Wed, 20 Aug 2025 04:24:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSZE8hAQdMQJuBZplbqJNg6TajC1+Oy2DlFMUSP4YrC9/AQfNI69mKEaoGj7BYpityTg8m9Q==
X-Received: by 2002:ad4:5e85:0:b0:707:5c72:c5bc with SMTP id 6a1803df08f44-70d770c81dbmr22797566d6.35.1755689042574;
        Wed, 20 Aug 2025 04:24:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55e033fc2e8sm623386e87.59.2025.08.20.04.24.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:24:01 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:24:00 +0300
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
Subject: Re: [PATCH v3 10/14] phy: qcom: qmp-usbc: Add TCSR parsing and
 USB/DP mode mutex handling
Message-ID: <i4rc5siu4q2o4sjk3j4bex7b7qdrs26y6lxsfnike7e7kqdva3@xddrd7vowtlb>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-10-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-10-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX95SakX4OYfJk
 KZ/wLFhCdCNPf9R2N1wrh+CZMXn/Ji/KGlUbWL/nyWx3t1zwHnl8GgKZKUmEusAn98oNKDDfUtp
 PYX6mhcnT6xUWnB3vSznEkoLBexj0GVHX9+n58a6L6I3yz7bo6Jz5oGTms43htZ65Uca10djMaZ
 zIQDx6PVf15l70/oxO/3itT6xb2rLRuX4r6TNdyHV1PT+WIbL3VbnMiQhE/rl0EEhFu0JL/IKTS
 fBpTbnprdEbFr/GDILtwyiRPjSVM5GTz4OUr719R3f1h4QvI212w8kHkFwc7c+6YoAFzgGr/m6j
 yi08JWddsnz/EdXX+iuwF4yMfWaca6x193tJNneRuGyCs3JO9ICMFNNJxJz/+z/O+YzEf6tdcrn
 yFjLdrtryjDxt6kJnl7hjX7fCJT1MQ==
X-Proofpoint-ORIG-GUID: 75gSJZHnn_XDWsGdgOnIeVGKwjcb9OXc
X-Proofpoint-GUID: 75gSJZHnn_XDWsGdgOnIeVGKwjcb9OXc
X-Authority-Analysis: v=2.4 cv=SoXJKPO0 c=1 sm=1 tr=0 ts=68a5b054 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=zOceuAXpaMaZHB4uI4oA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_042405_271859_E643BEFB 
X-CRM114-Status: GOOD (  28.12  )
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

On Wed, Aug 20, 2025 at 05:34:52PM +0800, Xiangxu Yin wrote:
> Parse TCSR registers to support DP mode signaling via dp_phy_mode_reg.
> Introduce mutual exclusion between USB and DP PHY modes to prevent
> simultaneous activation. Also update com_init/com_exit to reflect DP
> mode initialization and cleanup.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 60 +++++++++++++++++++++++++-------
>  1 file changed, 47 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index a1495a2029cf038bb65c36e42d0a4f633e544558..821398653bef23e1915d9d3a3a2950b0bfbefb9a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -674,7 +674,7 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
>  	.num_vregs		= ARRAY_SIZE(qmp_phy_usbdp_vreg_l),
>  };
>  
> -static int qmp_usbc_com_init(struct phy *phy)
> +static int qmp_usbc_com_init(struct phy *phy, bool is_dp)
>  {
>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -704,15 +704,20 @@ static int qmp_usbc_com_init(struct phy *phy)
>  	if (ret)
>  		goto err_assert_reset;
>  
> -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> +	if (!is_dp) {
> +		qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);

Why? Don't we need to program those bits for DP PHY too?

If not, move them to USB init call.

>  
>  #define SW_PORTSELECT_VAL			BIT(0)
>  #define SW_PORTSELECT_MUX			BIT(1)
> -	/* Use software based port select and switch on typec orientation */
> -	val = SW_PORTSELECT_MUX;
> -	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
> -		val |= SW_PORTSELECT_VAL;
> -	writel(val, qmp->pcs_misc);
> +		/* Use software based port select and switch on typec orientation */
> +		val = SW_PORTSELECT_MUX;
> +		if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
> +			val |= SW_PORTSELECT_VAL;
> +		writel(val, qmp->pcs_misc);
> +	}
> +
> +	if (qmp->tcsr_map && qmp->dp_phy_mode_reg)
> +		regmap_write(qmp->tcsr_map, qmp->dp_phy_mode_reg, is_dp);

Write this reg directly from USB / DP init.

>  
>  	return 0;
>  
> @@ -733,6 +738,9 @@ static int qmp_usbc_com_exit(struct phy *phy)
>  
>  	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
>  
> +	if (qmp->tcsr_map && qmp->dp_phy_mode_reg)
> +		regmap_write(qmp->tcsr_map, qmp->dp_phy_mode_reg, 0);

Why?

> +
>  	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>  
>  	return 0;
> @@ -1045,6 +1053,17 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
>  	return 0;
>  }
>  
> +static int qmp_check_mutex_phy(struct qmp_usbc *qmp, bool is_dp)
> +{
> +	if ((is_dp && qmp->usb_init_count) ||
> +	    (!is_dp && qmp->dp_init_count)) {
> +		dev_err(qmp->dev, "%s PHY busy\n", is_dp ? "USB" : "DP");

"PHY is configured for %s, can not enable %s\n"

> +		return -EBUSY;
> +	}
> +
> +	return 0;
> +}
> +
>  static int qmp_usbc_usb_enable(struct phy *phy)
>  {
>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);
> @@ -1052,7 +1071,11 @@ static int qmp_usbc_usb_enable(struct phy *phy)
>  
>  	mutex_lock(&qmp->phy_mutex);
>  
> -	ret = qmp_usbc_com_init(phy);
> +	ret = qmp_check_mutex_phy(qmp, false);
> +	if (ret)
> +		goto out_unlock;
> +
> +	ret = qmp_usbc_com_init(phy, false);
>  	if (ret)
>  		goto out_unlock;
>  
> @@ -1103,7 +1126,11 @@ static int qmp_usbc_dp_enable(struct phy *phy)
>  
>  	mutex_lock(&qmp->phy_mutex);
>  
> -	ret = qmp_usbc_com_init(phy);
> +	ret = qmp_check_mutex_phy(qmp, true);
> +	if (ret)
> +		goto dp_init_unlock;
> +
> +	ret = qmp_usbc_com_init(phy, true);
>  	if (ret)
>  		goto dp_init_unlock;
>  
> @@ -1467,7 +1494,7 @@ static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
>  		qmp_usbc_usb_power_off(qmp->usb_phy);
>  		qmp_usbc_com_exit(qmp->usb_phy);
>  
> -		qmp_usbc_com_init(qmp->usb_phy);
> +		qmp_usbc_com_init(qmp->usb_phy, false);
>  		qmp_usbc_usb_power_on(qmp->usb_phy);
>  	}
>  
> @@ -1602,13 +1629,13 @@ static int qmp_usbc_parse_usb_dt(struct qmp_usbc *qmp)
>  	return 0;
>  }
>  
> -static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
> +static int qmp_usbc_parse_tcsr(struct qmp_usbc *qmp)
>  {
>  	struct of_phandle_args tcsr_args;
>  	struct device *dev = qmp->dev;
>  	int ret;
>  
> -	/*  for backwards compatibility ignore if there is no property */
> +	/*  for backwards compatibility ignore if there is 1 or no property */
>  	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 0,
>  					       &tcsr_args);
>  	if (ret == -ENOENT)
> @@ -1623,6 +1650,13 @@ static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
>  
>  	qmp->vls_clamp_reg = tcsr_args.args[0];
>  
> +	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 1,
> +					       &tcsr_args);
> +	if (ret == -ENOENT)
> +		return 0;
> +
> +	qmp->dp_phy_mode_reg = tcsr_args.args[0];
> +
>  	return 0;
>  }
>  
> @@ -1665,7 +1699,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> -	ret = qmp_usbc_parse_vls_clamp(qmp);
> +	ret = qmp_usbc_parse_tcsr(qmp);
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
