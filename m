Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66F7FCA0EE4
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 11:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k87yGgjxqkT/FEbNJAW4b5vBnxmM+Fe1TPqpSFhkHJM=; b=Ha2ePpsB20uNGS
	Xnisi6FWD9itJQz5csLCo2g855WkZCzYDdv+riP+4LqXSyCZ1jBX0okBH7CYAs4zAHRO1whG2Oc7g
	iOhqyMHSToVrVUwdpJPKxB3imq/j00r0IMtEKT4QXhvauefaqGmfdxeUScGe1133W7NQ7L5MAZn62
	Wnit3dkE/6yqJbYm4PdLSYY8xaQ2hJrxp3Jjpz63AGF4DLeDyx6yzD2JZBoLn0COa2pZ0P/r30Pe4
	MnaclOLtP/Ln5npRHMk5Vg0P4wWn7FQICuW4+Q71SWEuOnnxY4JftwaW5mKemZ8bCzjNCBKibUJR7
	T6CRBA9pAEkJ0CeYX9IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohRb-0000000DUEK-0kRI;
	Wed, 20 Aug 2025 11:57:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogwY-0000000DOCR-2f6P
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 11:25:27 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57KAKk35003552
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:25:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pM3IqereRYgkro22T8SG9mTJ
	LbTJvmRyFErAXFuHomc=; b=deKVPfqlLNdOJrVI6aCZh1L26hLIpF8gcwwC9Qz+
	lOXkzdJYZ6zMe27WebkL/uZOy1/7IAYyR4VO6yiBUYEFTgvTQMi0NB4yPsy69VRc
	wwz+HJnyMC+WmcmYZJZWW9R5iuJTxJRNRTTJRl3fBCFNfz97cCqlz6prbv/epetS
	DN6L9R+Etzrth5KJqP3SoUbYIoI9W9olRSEq2S3htNqkOAb/MipAz7XUJeJ2ez/k
	eXCtKSbUdckGiUuMta1kaW1pgivmSkmuk65dR6MFwWet5N41vQLyYyda1LwzmjLk
	vuAmGJxbr17EgZOZ3kDoglBWPUgu400DHNmNwX8cKk3Q5A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52ahggr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:25:25 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a9f55eb56so144700866d6.2
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 04:25:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755689125; x=1756293925;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pM3IqereRYgkro22T8SG9mTJLbTJvmRyFErAXFuHomc=;
        b=WelzcLbMxBz77xkp5T1bNJZ6aO1EU6jEUTTmrD9kQDjW8iFwMG9ayBG1Yp+Ak5sMJ9
         EcJF7Au8uHTPgPIWY/mOKDHImJAh7Dt46Uh/9ReLSws8CVqb7ngPxxWWrCQXOqtnji+S
         m4/vZO0dgp6t2D+wJUuR3M0R+b5RBMyjRZfLFz4bS574deQOLzQiH7OfT1fee16zTeZC
         FNj9lPXpaf4ydVL6mMjZ1KwhLMVRNb+nSRWPxO68HQW1iW3DQsgfjt/JuupAJ/EF+YlM
         lotPIPnNAc8ChC36J1A816OE37yT9i51fj+uy0c0JqeSWvkvptGSEqPDB+b08alN8xIt
         MxCA==
X-Forwarded-Encrypted: i=1; AJvYcCU/dU91Jh8qo6uTumdS6YrMMUPiLEvxTCxjC1BHPkDJigj1rvyqD83Cecs4dQM8zRRGSRxIkXqsFks=@lists.infradead.org
X-Gm-Message-State: AOJu0YztqVbfBGIoJ9DwFpFdPV+uk6vyUe4c5VAC9A6RobEZ/CZUQqJT
	FJkIbui2MBK0XxehBtJH4ng96msWjNspoWjOxy4Au9zjKLy2LL3rDinoNBvLwFfEoY6ke/K3EkS
	0MpTmpx4lTHB8tthfxO9Oo/BRo5/qJYcdfUIH8xPTwy2XdzAnu+YsEJvCSUbSIBfI8NIo
X-Gm-Gg: ASbGncuzlyDUhZujyVRbS54arbqos8TvVLkauHk3G8ou7HsbBviTTGTDB3zbWP3oab+
	iB6t7KOz3i5uQYglyqbbS1YugfgNeebFg9RnHCEjVOVUAx3cIHuRnWh4XYCwvvObdaYLkCLF+iX
	7YDEeZH72VzaHXEZG6SWsSt/d1WDSViipn5+WtBph+tgQ0GwM++bQjwfNa5CwqC+CfFJ7EqOTgc
	pqzTt6S3SmV3cUvP910RhogQR44BN1HVi7W3+MK05y8GLuYq/Yd7MjWjtm1dqX0fL2lLHZDuuEB
	pSZ7anNwT2FhwY7EGEvp4sTNs1UdBvnDVuSekpnN/EUlEBM632Ojtxa4Ry9f+IiYim8WbwAMGYY
	b8dj09Fm6ogUaKYK/iErKK6u6k0iMjRj50WBBCTtJDNjVR4og6+dt
X-Received: by 2002:a05:6214:2304:b0:707:4d17:e280 with SMTP id 6a1803df08f44-70d76fe844cmr28308416d6.28.1755689124532;
        Wed, 20 Aug 2025 04:25:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFo3x0vG5bWavr75XQbzze8op4sOboUWHZRciWylwkkn+WCE6mKciGuth4WwgeOOu0+W+czaQ==
X-Received: by 2002:a05:6214:2304:b0:707:4d17:e280 with SMTP id 6a1803df08f44-70d76fe844cmr28307826d6.28.1755689123788;
        Wed, 20 Aug 2025 04:25:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3f3568sm2520633e87.117.2025.08.20.04.25.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:25:21 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:25:19 +0300
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
Subject: Re: [PATCH v3 06/14] phy: qcom: qmp-usbc: Add QCS615 DP PHY
 configuration and init data
Message-ID: <bx3cumx7ej7taour6zhqufrzjdxuhvlx23ga3vmvokrlekayem@e5rfjbcwle2r>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-6-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-6-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-GUID: JLYLpwInoy8958sE_DSsmxh8uFHsFq6I
X-Proofpoint-ORIG-GUID: JLYLpwInoy8958sE_DSsmxh8uFHsFq6I
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXxtTWZM9AVMVN
 o5hsttX/TBzZI+rGVFNZv2wwN0v7Ozc/aSA91b3dlSxBf6PkOMuy5O5glp919geYI9AC2DNniCi
 jai2FeBYnzyVPNYiBS3STJcedqxbR30HtTkjP4S7s/GEtkLsccYF7MxFx2mxDiIa57eMXtmwiFE
 PgiqN7cSrbO90wtTvPev+d/McNxMXfOczV12R8Hk/1TY+plCrBNc8WafLLNXKBggEQhmftJ1fX5
 wrFcd2dIaHFdhBfFlqXU4L72frI2szVplc8Dh3X0VArTTLrK/O0AarKlNyzVl80XTJEdmujtOMv
 EOnGnGDr58ZyaSQnb/zVjYxtb9LfgUa4gt0MA1pdUaTVHi+/d4h25jC6ODjO0Q7WXk8HnYSAuW6
 Avj7XIVNxzgnyJCU87HowYKU2fsRRw==
X-Authority-Analysis: v=2.4 cv=XfbQDI55 c=1 sm=1 tr=0 ts=68a5b0a5 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=w_ydXb1fH3eDB4nJsVwA:9 a=CjuIK1q_8ugA:10
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
X-CRM114-CacheID: sfid-20250820_042526_791386_15CE9A15 
X-CRM114-Status: GOOD (  19.65  )
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

On Wed, Aug 20, 2025 at 05:34:48PM +0800, Xiangxu Yin wrote:
> Introduce QCS615 hardware-specific configuration for DP PHY mode,
> including register offsets, initialization tables, voltage swing
> and pre-emphasis settings.

This will trigger unused warnings. Please squash this into the patch
adding compat string to the driver.

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 139 +++++++++++++++++++++++++++++++
>  1 file changed, 139 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index 6b0e86ec43ded3d850f68f248a74c39f74ecb5bb..61128d606238321d1b573655b3b987226aa2d594 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -284,6 +284,86 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_pcs_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x88),
>  };
>  
> +static const struct qmp_phy_init_tbl qcs615_qmp_dp_serdes_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SVS_MODE_CLK_SEL, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x37),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SYS_CLK_CTRL, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x3f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_ENABLE1, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_BG_CTRL, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_BUF_ENABLE, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_IVCO, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE0, 0x28),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE0, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE0, 0x0b),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE0, 0x40),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN1_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0x08),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CORECLK_DIV, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_CTRL, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE1_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE2_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_CTRL, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CORE_CLK_EN, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x02),
> +};
> +
> +static const struct qmp_phy_init_tbl qcs615_qmp_dp_serdes_tbl_rbr[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x2c),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x69),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x80),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0xbf),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x21),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_LANE_MODE_1, 0xc6),
> +};
> +
> +static const struct qmp_phy_init_tbl qcs615_qmp_dp_serdes_tbl_hbr[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x24),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x69),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x80),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0x3f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x38),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_LANE_MODE_1, 0xc4),
> +};
> +
> +static const struct qmp_phy_init_tbl qcs615_qmp_dp_serdes_tbl_hbr2[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x20),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x8c),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0x7f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x70),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_LANE_MODE_1, 0xc4),
> +};
> +
> +static const struct qmp_phy_init_tbl qcs615_qmp_dp_tx_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TRANSCEIVER_BIAS_EN, 0x1a),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_VMODE_CTRL1, 0x40),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_PRE_STALL_LDO_BOOST_EN, 0x30),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_INTERFACE_SELECT, 0x3d),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_CLKBUF_ENABLE, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RESET_TSYNC_EN, 0x03),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TRAN_DRVR_EMP_EN, 0x03),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_PARRATE_REC_DETECT_IDLE_EN, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_INTERFACE_MODE, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_EMP_POST1_LVL, 0x2b),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_DRV_LVL, 0x2f),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_BAND, 0x4),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_TX, 0x12),
> +	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_RX, 0x12),
> +};
> +
>  enum qmp_phy_usbc_type {
>  	QMP_PHY_USBC_USB3_ONLY,
>  	QMP_PHY_USBC_USB3_DP,
> @@ -449,6 +529,34 @@ static const struct qmp_usbc_offsets qmp_usbc_offsets_v3_qcm2290 = {
>  	.rx2		= 0x800,
>  };
>  
> +static const struct qmp_usbc_offsets qmp_usbc_usb3dp_offsets_qcs615 = {
> +	.serdes		= 0x0,
> +	.pcs		= 0xc00,
> +	.pcs_misc	= 0xa00,
> +	.tx		= 0x200,
> +	.rx		= 0x400,
> +	.tx2		= 0x600,
> +	.rx2		= 0x800,
> +	.dp_serdes	= 0x1c00,
> +	.dp_txa		= 0x1400,
> +	.dp_txb		= 0x1800,
> +	.dp_dp_phy	= 0x1000,
> +};
> +
> +static const u8 qmp_dp_pre_emphasis_hbr2_rbr[4][4] = {
> +	{0x00, 0x0b, 0x12, 0xff},
> +	{0x00, 0x0a, 0x12, 0xff},
> +	{0x00, 0x0c, 0xff, 0xff},
> +	{0xff, 0xff, 0xff, 0xff}
> +};
> +
> +static const u8 qmp_dp_voltage_swing_hbr2_rbr[4][4] = {
> +	{0x07, 0x0f, 0x14, 0xff},
> +	{0x11, 0x1d, 0x1f, 0xff},
> +	{0x18, 0x1f, 0xff, 0xff},
> +	{0xff, 0xff, 0xff, 0xff}
> +};
> +
>  static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
>  	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
>  	.type			= QMP_PHY_USBC_USB3_ONLY,
> @@ -500,6 +608,37 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
>  };
>  
> +static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
> +	.offsets		= &qmp_usbc_usb3dp_offsets_qcs615,
> +	.type			= QMP_PHY_USBC_USB3_DP,
> +
> +	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
> +	.tx_tbl			= qcm2290_usb3_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_tx_tbl),
> +	.rx_tbl			= qcm2290_usb3_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
> +	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
> +
> +	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
> +
> +	.dp_serdes_tbl		= qcs615_qmp_dp_serdes_tbl,
> +	.dp_serdes_tbl_num	= ARRAY_SIZE(qcs615_qmp_dp_serdes_tbl),
> +	.dp_tx_tbl		= qcs615_qmp_dp_tx_tbl,
> +	.dp_tx_tbl_num		= ARRAY_SIZE(qcs615_qmp_dp_tx_tbl),
> +
> +	.serdes_tbl_rbr		= qcs615_qmp_dp_serdes_tbl_rbr,
> +	.serdes_tbl_rbr_num	= ARRAY_SIZE(qcs615_qmp_dp_serdes_tbl_rbr),
> +	.serdes_tbl_hbr		= qcs615_qmp_dp_serdes_tbl_hbr,
> +	.serdes_tbl_hbr_num	= ARRAY_SIZE(qcs615_qmp_dp_serdes_tbl_hbr),
> +	.serdes_tbl_hbr2	= qcs615_qmp_dp_serdes_tbl_hbr2,
> +	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qcs615_qmp_dp_serdes_tbl_hbr2),
> +
> +	.swing_tbl		= &qmp_dp_voltage_swing_hbr2_rbr,
> +	.pre_emphasis_tbl	= &qmp_dp_pre_emphasis_hbr2_rbr,
> +};
> +
>  static int qmp_usbc_com_init(struct phy *phy)
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
