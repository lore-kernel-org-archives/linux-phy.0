Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50E32C61DCB
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 12:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=teGpsw5j8451GuZcsbJ+YvYI1z50HFSKiR5NOIPc+3k=; b=xb35jDkxO3QuH4
	7a5q7iU3WQcJ2mDssyW6jJfjqRaQLhJq1ZQVAjOoCHzk+w64I7IuErh/BVBhdaOhbDcMWjPagJwbs
	WA+OVlnSCCXXJc71cu+xLfOn/rgXTffBRwYfs7iG1w9gjoBCDWJXiPwoIZV5pdM1VCZis11bRA+46
	2liv/mTtos0xMX6EETWmSW/BNk9xSSqJG/w/7ZjHbYzeyo2Uwgu/caOs4RDWuvFsaXy53ye8r8VB1
	NCHhpAEWBV5vb0nst8C8t1F4UHEoNqS9IkcPHsn0kTwopXDkVa1zr197IJ9fbU1B6DEahfw7wN7of
	tSl3vJJOazq7EXncun8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzvRs-00000005iBl-2hot;
	Fri, 28 Aug 2026 12:12:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzvRp-00000005iBC-2Z7h
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 12:12:42 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SA82rM3064155
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 12:12:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z3zASg/IOmTyCS64W7qkQMt2E4H1NwFHCv+7aMnXk3I=; b=HZS/U8tJCFVASJ1x
	DkKwgyJhpSiwXTUCihUhDwbCXkPWr3GFPFlARtwOWq3XXiO0RxDcKSXBXV5OgR8K
	HJ/QZkk1QiOxikHvj61zjE2Ex8y46NlV8U8E5/yyJwXJjI67eHS8DCt2FraBUmLZ
	HH+GSbVY6+hk+MPji8XvxrlqPGmiX+zM4BE76b74UPB+VglmOYokn2UY3WDa1HJY
	hsBaSWahjS9pF5ZGXQhBEgSSACxiodU1xPIsoti5yLfoT7V2evoTYY7REJh7Z53I
	+u2Zq7Cg4c9to4F0VL7lhP6SlWd5JeDTJMmbdmfn1KmyV9xY5SGr/uMb9paIU+T7
	6HxrTg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb47n1jy1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 12:12:40 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c9d953b71so1797811cf.0
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 05:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787919160; x=1788523960; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=z3zASg/IOmTyCS64W7qkQMt2E4H1NwFHCv+7aMnXk3I=;
        b=Qc98VL2Z32EmBbwLTeuCUo8BUN2C/H96vPxOLH5crFGqLJ8n38VaETAm9e2iquB6uz
         lYGkDNac94uomVWN9Ev2/uSxreQMpSxs8tenWh4zoTITC79tLz7EksFYMdiGsafkVXvz
         Jk3ILbUoxFPQ2VGiPXWFrQAbosQH5o5Bg9h/q88sw6mu0z6DzQwLQp7u705TZfjk2eEw
         oReUBhNDV/PxrGHyf/t4vDCPEwyfDamtHjIUQ1urZgIlAUOQIj9UuTnToVlrN2cSY0wx
         ZWVTq8p3HPZ22d0fDVy7ty85DTn7Koa1qowo1FZz3pp1RM2dHjQHsBjTcyLNYEewXEp2
         yeMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787919160; x=1788523960;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=z3zASg/IOmTyCS64W7qkQMt2E4H1NwFHCv+7aMnXk3I=;
        b=kwZgSF0CYWuqE+MuYn974i3bAf850x1KQ5kCrK9MxGewVPH+YAZ148QuT0WPh+/fd8
         wxOqFfO4EYodhNx5+M73L+AlS6qyUtUdAYghXw5PLm8CiJkbyL6ZLxvW1f6xFpzxw9eu
         yzUBD+wYGfdb6b0bIM9YhzO5IYmJRcQFeUKgsgKO0fV7yjAVm01QQRtb3Qrh4S5mHhRP
         xFowQrT4RTxVxK7jMNUUreD1wbDtNqvmgp3UuMmwNf5gDOm00TJ9zjt2rN/LfL93W/qg
         vVSD5vV5SSdR/YRZgRTG/cExN1ZZNKDlIB0riUtksZBXz4p3GGdnwt8EEpnqRp02HQi+
         DIAQ==
X-Forwarded-Encrypted: i=1; AHgh+Rq6lPz6al/rxaHgRK0LGGVQpA/vd+f3OMYZmZ7a+rJ4T/a6dHgXVKRmnTEDVtlQz808Q4WsPXOrWdM=@lists.infradead.org
X-Gm-Message-State: AFuF++k6f/yQcXxdeN9M99cJMatJckTBPAwwUOy0Lp5rjMOoWt5sjOpU
	6Gb+bu0qOWH5YsvYtDgvoQxLOgTpuwHMXEBQapZb5Lvs4D+lb85lBh/B+1+TmzxbxJCGO0nslC9
	NMt9aYwqlZDxHLY1wG/t1BWLXGFC0WVXUtfDBoXr5Hvib2zLtZCEnHt3thifGSuhUsYwwwwr8yw
	5R
X-Gm-Gg: AR+sD11NfQ1vHP5cVRQaIy7JJ8B3EQp5e6FY35fSEDPdKhmLdI8dR2a0b9jIa/xnPyu
	Z4TMDI0y3mLJGh6g25CLuvILXiCurxnLRfRn3YkVv1WJN4QFicKugKq+7t5leJyCByM/iaKJEKM
	u2ToGs1SeGZJUsuMHdzT9Fdc8loCkHCe02XYKZESm5MvcKCUls4bDnRD/I7pqamm5zUGTgxeXAz
	ekeV1CPRbN6NdSsbIqWyvld8dTVj0DXQSk99BesczrUL0wli3ew9f4mpaRj+xHTvUpgY0/gNfDB
	ZQk8yUo4mOho+d3OKUFr3xx+YMnvi8ndm1DMG3/JkOIzHCKlsLlgVFPyLld577Jusukqirh3og0
	/ByRplzTnf9a9JxQSBAzZsv4=
X-Received: by 2002:ac8:7f4f:0:b0:517:6162:daf5 with SMTP id d75a77b69052e-52fb95f4e1amr48204081cf.3.1787919159112;
        Fri, 28 Aug 2026 05:12:39 -0700 (PDT)
X-Received: by 2002:ac8:7f4f:0:b0:517:6162:daf5 with SMTP id d75a77b69052e-52fb95f4e1amr48203571cf.3.1787919158639;
        Fri, 28 Aug 2026 05:12:38 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c255ee288afsm73982566b.23.2026.08.28.05.12.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2026 05:12:37 -0700 (PDT)
Message-ID: <4afd317a-24be-44c1-959e-9cdd220273f8@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 14:12:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] phy: qualcomm: qmp-combo: Rework DP PHY runtime
 configuration
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-4-8e73ce7c4636@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-glymur-phy-v3-v3-4-8e73ce7c4636@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=a8YAM0SF c=1 sm=1 tr=0 ts=6a917b38 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=X346SdmPfOZ6fRuWxNEA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: P7K7Fbux77qnHjJQDXE0JBRNtFK2ycp6
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEwNSBTYWx0ZWRfX0NJsZWVaGKzl
 kKhTZbsrfw/4PJj1YQ2Xc9j2/qYsBqu+7Sx1r4o/SVzLIHckmpu1Uk1tagrxN3Mm5YvCP22XlUv
 yTijdck40VMjta+MzHctsGYmtyyfHDI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEwNSBTYWx0ZWRfX7n2OTr8lwniC
 3yC7imnecAIrfrKy8QT5XVvQoXmbYMAQ4q0QexsoRcdvWQ40cftjAvc9Yt275cQ73qgVi8TDmx9
 5fhIGTeThNA1AFZWSv52t+HGl+uUURuno79FoWdlgiajKXfp0Gb+860agljWG9b/Cp8ohMzrxcP
 I6CXOrxKKWJ++L1kWjd8W4+HyDJW+46qOWkolKbivZyIH0VMiepQoQ4CLNFo29/GzfK8yT5Vjuq
 GjhvMfmBcrikKGEB12yfHExnPx/8nqwOMoKsh39sdbjf13NczwBptwbh8n7dJQ3Rkr+Ksn42YM1
 9QbaP9L7+326La0xqVbYNgcE3ZFkjrRtnX1saCvr8O6FMb5urOVpA8cND8UTUHTUCGcU/3evEOW
 74dYBbOm3wy0sidD82vNqbSsg5ilg5m2IvjQD9W5yxAJfYHovj60L/m9fNp9dXzNs83DsawIof5
 sdmGsQXlbIIRjDoS9HA==
X-Proofpoint-GUID: P7K7Fbux77qnHjJQDXE0JBRNtFK2ycp6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_03,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 spamscore=0 malwarescore=0 priorityscore=1501 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_051241_779175_DB5A9DE7 
X-CRM114-Status: GOOD (  19.23  )
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

On 8/28/26 11:43 AM, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

[...]


> +static int qmp_combo_configure_dp_phy_common(struct qmp_combo *qmp)
> +{
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	u32 status;
> +	int ret;
> +
> +	if (!cfg->dp_aux_cfg2) {
> +		dev_err(qmp->dev, "DP AUX CFG2 value not configured\n");
> +		return -EINVAL;
> +	}
> +
> +	writel(0x0f, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG_1);
> +
> +	qmp_combo_configure_dp_mode(qmp);
> +
> +	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
> +	writel(cfg->dp_aux_cfg2, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG2);
> +
> +	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX0_TX1_LANE_CTL);
> +	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX2_TX3_LANE_CTL);
> +
> +	ret = qmp->cfg->configure_dp_clocks(qmp);
> +	if (ret)
> +		return ret;
> +
> +	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +	writel(0x05, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +
> +	writel(0x20, qmp->dp_serdes + cfg->regs[QPHY_COM_RESETSM_CNTRL]);
> +
> +	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_C_READY_STATUS],
> +			status,
> +			((status & BIT(0)) > 0),
> +			500,
> +			10000))
> +		return -ETIMEDOUT;
> +
> +	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
> +			status,
> +			((status & BIT(0)) > 0),
> +			500,
> +			10000))
> +		return -ETIMEDOUT;
> +
> +	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
> +			status,
> +			((status & BIT(1)) > 0),
> +			500,
> +			10000))
> +		return -ETIMEDOUT;
> +
> +	return 0;
> +}
> +
>  static void qmp_v8_dp_aux_init(struct qmp_combo *qmp)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  
> -	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_PSR_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> -	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> -	       qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
> +	writel(0x3f, qmp->dp_serdes + QSERDES_V8_USB43_COM_CLK_FWD_CONFIG_1);
> +
> +	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> +			DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
> +			DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> +			qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
>  
>  	/* Turn on BIAS current for PHY/PLL */
> -	writel(0x1c, qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
> +	writel(0x17, qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
>  
>  	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG0);
>  	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
> @@ -3729,8 +3807,8 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
>  	writel(0x27, qmp->dp_tx + cfg->regs[QPHY_TX_TX_DRV_LVL]);
>  	writel(0x27, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_DRV_LVL]);
>  
> -	writel(0x20, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
> -	writel(0x20, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
> +	writel(0x2b, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
> +	writel(0x2b, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
>  
>  	qmp_combo_configure_dp_swing(qmp);
>  }
> @@ -3738,48 +3816,41 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
>  static int qmp_v8_configure_dp_clocks(struct qmp_combo *qmp)
>  {
>  	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
> -	u32 phy_vco_div;
>  	unsigned long pixel_freq;
> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  
>  	switch (dp_opts->link_rate) {
>  	case 1620:
> -		phy_vco_div = 0x4;
>  		pixel_freq = 1620000000UL / 2;
>  		break;
>  	case 2700:
> -		phy_vco_div = 0x2;
>  		pixel_freq = 2700000000UL / 2;
>  		break;
>  	case 5400:
> -		phy_vco_div = 0x4;
>  		pixel_freq = 5400000000UL / 4;
>  		break;
>  	case 8100:
> -		phy_vco_div = 0x3;
>  		pixel_freq = 8100000000UL / 6;
>  		break;
>  	default:
>  		/* Other link rates aren't supported */
>  		return -EINVAL;
>  	}
> -	writel(phy_vco_div, qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_VCO_DIV]);
>  
>  	/* disable core reset tsync */
>  	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
>  
> -	writel(0x04, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SETUP_CYC);
> -	writel(0x08, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SILENCE_CYC);
> +	writel(0x09, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SETUP_CYC);
> +	writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SILENCE_CYC);
>  	writel(0x08, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_CYC);
> -	writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
> +	writel(0x33, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);

These 3 altered writes depend on the rate

>  
>  	writel(0x3e, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
>  	writel(0x05, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TX2_TX3_LANE_CTL);
>  	writel(0x05, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TX0_TX1_LANE_CTL);
>  	writel(0x01, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_CFG1);
> -	writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
> +	writel(0x33, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);

This is duplicated, it seems

>  	writel(0x1f, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN0_DRV_LVL);
> -	writel(0x1f, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN1_DRV_LVL);
> +	writel(0x02, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN1_DRV_LVL);

This depends on swing/preem levels

[...]

> @@ -3938,13 +3971,13 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
>  	} else if (dp_opts->lanes == 2) {
>  		bias0_en = reverse ? 0x3f : 0x15;
>  		bias1_en = reverse ? 0x15 : 0x3f;
> -		drvr0_en = 0x10;
> -		drvr1_en = 0x10;
> +		drvr0_en = 0x30;
> +		drvr1_en = 0x30;
>  	} else {
>  		bias0_en = 0x3f;
>  		bias1_en = 0x3f;
> -		drvr0_en = 0x34;
> -		drvr1_en = 0x34;
> +		drvr0_en = 0x30;
> +		drvr1_en = 0x30;

2ln settings should also depend on the reverse state


>  	}
>  
>  	writel(drvr0_en, qmp->dp_tx + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
> @@ -3952,6 +3985,15 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
>  	writel(drvr1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
>  	writel(bias1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
>  

This should also be preceded by LANE_CLKBUF_EN, I think

> +	writel(0x03, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
> +	writel(0x23, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
> +	writel(0x22, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
> +
> +	writel(0x0a, qmp->dp_tx + QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL);
> +	writel(0x0a, qmp->dp_tx2 + QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL);
> +
> +	writel(0x3e, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
