Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6701BC88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 00:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUTYrybWZOkkTn9CIDwC1hx9CXNxOzbhaNXkJ8dTRLM=; b=CnWQERWc6SHySS
	UnOjx4D3zUmV7mHbfZj+8iTH3JiES6rDFmb+Hait6gsCmH3bJgnivc4jHGSVb71KWlkHlU1Gfxxr9
	ALDcGkgEfKlke1F6hbeXIfh4kWsRkK5Hyc/LFDMJRGFkNrusW4mzknIZ9n3lq9LEqEl8AHLF7ZV/x
	6Pp5dJlgDU7FDWzyQb3Qn1gGEbIeW5LLiA3sqzZGnQ8xZRFDkzQsvzE14H1H1kxUMdpUkjenfbpET
	f2y/WWxqKplx4SZhyeRHph5q1wxHG1OS+8/C6iWtO1JQKfASe8QSGYPv7Nqfvd9eqSl+G3MGmuitS
	nu2anlSHaR6s6Jcm1kNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5u82-0000000273b-48ku;
	Mon, 14 Sep 2026 00:00:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5u7z-0000000272x-2MUD
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 00:00:57 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DNZCdg1858018
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:00:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fU+lghccay3l1YWQR2/TeQBg
	Cl7YEhDXjCfG/4VrNcI=; b=csTbHLDmRcWjzPz7H2hA8nEsq5UI96VBpJnRgJnf
	nXjIfexOeAwW5G86SoKx5p8ESVoAHQJHy96cbGQ7DEO2+hschSsiyZpnd4aZ0WB5
	Dg5L5fTjbVWBWynlhDMnrRpE9wZfqncsCl4mG57V1qN3P1WoS6YJYyLFrPy1HYTv
	M19EjO44YwpE8y7D0+fiIiR200LT/TlTj+9llC6dBHK7Zzt95HzuLhCsbXbL325r
	JkYkyWAyX9YrNUv0yMlGlZoq/SBAd0jP57NVZC+tETczp9JQ8XSQnlely7cFT3Qx
	oD+iYJTBJC0AJ+hAtGiaxO2z5+1MT2IXWihruGGVhDjPaw==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmywh4859-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:00:54 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5c96449cbb2so346393e0c.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 17:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789344054; x=1789948854; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=fU+lghccay3l1YWQR2/TeQBgCl7YEhDXjCfG/4VrNcI=;
        b=NWI8AeveI8D0Q9rtiFua/bKovyOP+Uf66J2ZgykyUi5WioR1Y5mFBp73MgWaXVFAjN
         1dCazjeKEJ8jZIhbPK5LIMUM7tXWBlN2tz2vvp37vIAxMWBFLSdT8RPcMeAvhx+mrpBx
         xd2ovFWdm57rkfTSKLx7+l1nknOV2g38a0XKeWWDMKuwiZ3MEwLVCPdGMWafSiDPhWTC
         Gt8fRBfe1zDDn8iTLvLnsirydkyu/5sjf8aJeO2HYW22PW8ZV4cosCgNZVdnYTeOYPG4
         cup5KooWBfG1C8xgDel++7h5g8XN9EmjJVoRxIlNYG40ktPBZJq/Ve+nncSukpwJRl6l
         NSQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789344054; x=1789948854;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fU+lghccay3l1YWQR2/TeQBgCl7YEhDXjCfG/4VrNcI=;
        b=MPJIfFz7pE/8gfHLtMXP7RSm7I19F/Pmk2IocaKaW30ZiXJnfbuL+o/1NXtBGUchGR
         a703kUoyyjopESShph+y2sDJvufyG+1EqZZ9rZ4N9vGyZkA9392q+ZihU3FaGF0AyN3/
         C7q2IPDWHzmFZmGeoDHw7E7CCitDKn+LDSm00S9GRi7Jtd8XGN/OMZq1zmdqqD+OkY6P
         6SBjM1sleaBR15Uvs5giQ8Toj3C9Ea0rZ9OPktCsYoKeJEbme+knVKd+HgoM8nN9BcC3
         V36IziPy6VQthdqOGRZTXskWwqca8N0V616gft/q47YYE92CfbOOx1KxGKTvbdzxmPyy
         JZpA==
X-Forwarded-Encrypted: i=1; AKwUvBx7wVNTgb/54Tst6phkO7JKtHhVuAKQtd6sNJdziJtcWwOJhiwkxBQlc4siGpGpXckVM+eIut0gly4=@lists.infradead.org
X-Gm-Message-State: AFuF++mltf3STWFvu4fGiEluAZMBWgDZs5afQkkKMTPbLbRKjtVenB4X
	MKZhV56XPMf6UyRTxtzI1qPmm6w7aBHDaXFK83+k/vf88lQFI3CykstFmRliU0ve4NMbQ5KxKTa
	sWitftv/PWIKen4bo9nWkwMLpgl5VnTnvQ1fUYvBBlL5eLjlsZWDjiIt60h/gXWAIKt8g
X-Gm-Gg: AYBFou3RhoL9qpy/7NiSsmkkS3wnflHxmYggOkkY6dmt8ENTJt5tDoorIaUSmykH37y
	aOXRy4NIICFwUtpZHphK1Nt6xi9G3nCvWNg/dQBglYUtMqGbJvqDYfL5GI3kFE2FDFvYyMZQ7/v
	rRR1AhsQAco5vsxAFJGFxc5K/mpEzkmh/nELn3T2JdKzlg22R3yo3Ih3VMgHSxwSz03VdGwKdBk
	AbNz+QzaQ+6esypXNOx/CMBUA4wje1xXaXvU4TOIpAuRPgSlvoiZC8RAiyLzU2t6XL6NmzSofX3
	YpvdsdNiSnPWHtLnBVUxQWZmZqp2og7Z1DE9OWoQVgdx1MCimXFVrrcTYEaZzgCf2ZcY4VtPIK2
	zbKkzZAcBBKx6VXqiz6G7hnBvc3I/60FVTDhdC/kF4fseZ00CirvtaghYYSazAYc7C7zV+Gab5K
	Kwngx6FskxSdVc
X-Received: by 2002:a05:6102:f13:b0:79a:21f6:20fc with SMTP id ada2fe7eead31-79b5abbb41fmr37341137.10.1789344053614;
        Sun, 13 Sep 2026 17:00:53 -0700 (PDT)
X-Received: by 2002:a05:6102:f13:b0:79a:21f6:20fc with SMTP id ada2fe7eead31-79b5abbb41fmr37319137.10.1789344053173;
        Sun, 13 Sep 2026 17:00:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a0464430sm2051683e87.42.2026.09.13.17.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 17:00:50 -0700 (PDT)
Date: Mon, 14 Sep 2026 03:00:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 08/17] phy: qcom: edp: Generalize power-on path to
 support per-SoC overrides
Message-ID: <mpkoztwm2ts4pb3m4t6347wfes4yeua5a5uxrn66dgmn6b6gpq@syu2fxzfmvp7>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-8-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-8-e25c073cf1b6@oss.qualcomm.com>
X-Proofpoint-GUID: DaH6TYwTddLN5feNYJrTc6eHGS7IYNZs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDM0NCBTYWx0ZWRfXxnWpMVA1Y8X/
 d7H8DgeAfAA56TBUpr8aNpiqQHZuWye631dZJXAPg/a63N2KMt/kUF6zMIAqwx8pU93gmi/QGqE
 4q5b+0n8HxN+eEMPtJzC03HpDCtf3PaqTZ2w5gw9SeFNSgPWf9iuuVG3SrQNwHD9tVK8GbbTv0s
 OpYroeNEP0HPcjhBAarUoTJNID0ldGD3/TkskQFdEavdcFPERl8d2FB8NSjicEb6Lm/lbzQcNTs
 cwusUzuAp6Nj6/m11OYZJ6oCaY8a8qeG7MeguL0a1CZq47eK79oVF7Yr+YTYEfTXHqOLKQZlzfA
 D8Gwq4Js5xT8lHgB9Z87sQaxJRh1a0Y6PkSXLxcG39kYEirRFH06P4x0g2TYuXhytbWz67Fpr8s
 m7MEwELoIUyINr7b4cHIGJw5fbgzZTCk7ygx3m4u7R4aovc6vNVL+yy96LVsk0UKSDGqEtVRfE6
 YB+HFR9dmLPH5Xh6p0A==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDM0NCBTYWx0ZWRfX6XvAZirbhC1O
 jnd/32ZIzf27IVAL1iHeTy8HZjh+WbM6tf/suslxfNkvtnIl6uO2Lg6FaOy4g6f+zNjQAbZAGca
 JP5FhZDlqO1jJGlsYlFdKIyadkhP9ak=
X-Proofpoint-ORIG-GUID: DaH6TYwTddLN5feNYJrTc6eHGS7IYNZs
X-Authority-Analysis: v=2.4 cv=PsUG/AM3 c=1 sm=1 tr=0 ts=6aa73936 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=tuu3QHpEyBHuk3RROvYA:9 a=CjuIK1q_8ugA:10 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_07,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609130344
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_170056_804758_382088B6 
X-CRM114-Status: GOOD (  25.79  )
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

On Fri, Sep 11, 2026 at 09:06:39PM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord has a different register layout and power-on sequence that the
> existing hard-coded paths cannot accommodate.  Make com_clk_fwd_cfg
> optional,

Why?

> add phy_tx_lane_cfg and phy_tx_res_cfg callbacks to
> phy_ver_ops, and add phy_status_reg and bias1_en_2lane fields to
> qcom_edp_phy_cfg so each SoC can override the defaults.  No
> functional change for existing SoCs; new fields default to zero/NULL.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 43 ++++++++++++++++++++++++++-----------
>  1 file changed, 30 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index bf8a17336c7e..373f13b3d6d5 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -92,6 +92,8 @@ struct phy_ver_ops {
>  	int (*com_configure_pll)(const struct qcom_edp *edp);
>  	int (*com_configure_ssc)(const struct qcom_edp *edp);
>  	int (*com_ldo_config)(const struct qcom_edp *edp);
> +	int (*phy_tx_lane_cfg)(const struct qcom_edp *edp);
> +	int (*phy_tx_res_cfg)(const struct qcom_edp *edp);
>  };
>  
>  struct qcom_edp_phy_cfg {
> @@ -101,6 +103,8 @@ struct qcom_edp_phy_cfg {
>  	const struct qcom_edp_swing_pre_emph_cfg *dp_swing_pre_emph_cfg;
>  	const struct qcom_edp_swing_pre_emph_cfg *edp_swing_pre_emph_cfg;
>  	const struct phy_ver_ops *ver_ops;
> +	u32 phy_status_reg;
> +	u8 bias1_en_2lane;
>  };
>  
>  struct qcom_edp {
> @@ -316,9 +320,11 @@ static int qcom_edp_phy_init(struct phy *phy)
>  
>  	memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
>  
> -	ret = edp->cfg->ver_ops->com_clk_fwd_cfg(edp);
> -	if (ret)
> -		return ret;
> +	if (edp->cfg->ver_ops->com_clk_fwd_cfg) {

Why?

> +		ret = edp->cfg->ver_ops->com_clk_fwd_cfg(edp);
> +		if (ret)
> +			return ret;
> +	}
>  
>  	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
>  	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> @@ -1131,7 +1137,13 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>  
>  	/* TX Lane configuration */
>  	writel(0x05, edp->edp + DP_PHY_TX0_TX1_LANE_CTL);
> -	writel(0x05, edp->edp + DP_PHY_TX2_TX3_LANE_CTL);
> +	if (edp->cfg->ver_ops->phy_tx_lane_cfg) {
> +		ret = edp->cfg->ver_ops->phy_tx_lane_cfg(edp);
> +		if (ret)
> +			return ret;
> +	} else {
> +		writel(0x05, edp->edp + DP_PHY_TX2_TX3_LANE_CTL);

if it's about a single register, add a register to the map instead.

> +	}
>  
>  	/* TX-0 register configuration */
>  	writel(0x03, edp->tx0 + TXn_TRANSCEIVER_BIAS_EN);
> @@ -1169,13 +1181,18 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>  	writel(0x00, edp->tx1 + TXn_TX_POL_INV);
>  	writel(0x10, edp->tx0 + TXn_TX_DRV_LVL_OFFSET);
>  	writel(0x10, edp->tx1 + TXn_TX_DRV_LVL_OFFSET);
> -	writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX0);
> -	writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX1);
> -	writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX0);
> -	writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX1);
> -
> -	writel(0x10, edp->tx0 + TXn_TX_EMP_POST1_LVL);
> -	writel(0x10, edp->tx1 + TXn_TX_EMP_POST1_LVL);
> +	if (edp->cfg->ver_ops->phy_tx_res_cfg) {
> +		ret = edp->cfg->ver_ops->phy_tx_res_cfg(edp);
> +		if (ret)
> +			return ret;
> +	} else {
> +		writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX0);
> +		writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX1);
> +		writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX0);
> +		writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX1);
> +		writel(0x10, edp->tx0 + TXn_TX_EMP_POST1_LVL);
> +		writel(0x10, edp->tx1 + TXn_TX_EMP_POST1_LVL);

Either use a register map or move defaults to the callback too. My
preference is towards the former option.

> +	}
>  	writel(0x1f, edp->tx0 + TXn_TX_DRV_LVL);
>  	writel(0x1f, edp->tx1 + TXn_TX_DRV_LVL);
>  
> @@ -1187,7 +1204,7 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>  		cfg1 = 0x1;
>  	} else if (edp->dp_opts.lanes == 2) {
>  		bias0_en = 0x03;
> -		bias1_en = 0x00;
> +		bias1_en = edp->cfg->bias1_en_2lane;
>  		drvr0_en = 0x04;
>  		drvr1_en = 0x07;
>  		cfg1 = 0x3;
> @@ -1210,7 +1227,7 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>  
>  	writel(0x19, edp->edp + DP_PHY_CFG);
>  
> -	ret = readl_poll_timeout(edp->edp + DP_PHY_STATUS,
> +	ret = readl_poll_timeout(edp->edp + (edp->cfg->phy_status_reg ?: DP_PHY_STATUS),

No hidden defaults, thank you.

>  				 val, val & BIT(1), 500, 10000);
>  	if (ret)
>  		return ret;
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
