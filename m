Return-Path: <SRS0=Ei7n=NI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,UPPERCASE_50_75,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF6A9C4338F
	for <linux-phy@archiver.kernel.org>; Tue, 17 Aug 2021 05:35:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B715E60F58
	for <linux-phy@archiver.kernel.org>; Tue, 17 Aug 2021 05:35:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B715E60F58
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SF35U0IfsN6e4wTlO0IhoZnm+9qppSnUAAgC7G25wk=; b=omkTV/X1Qslb5C
	BKLWlGNnHPOYQv34dSPaBPBfzIC7Z6R5ZgAMVefoAjxV5tITVvrexCUPeZouF4KaX62fn1E9+KsbD
	6FrMPV66mC1ht0wPvKHYKqG1ol7Qewqf7u64tUWiqcRPHaOb57qT4QHLOU9aJxPtKa5oQgL7PDaku
	GLAhHg0RfMCfd/nCatWB+hqB9Zm23w9OFeJAITlkFBTqrAOV/umHuGS2jE1ict+DrbouWNGS1zMWm
	WP6hFCdKQyNmAZ7AVI1I6FgmW0CwZHkzhlRpDouAmT1RG8SrdY82CWUz1sbP20fpG2uodXxGgV9rC
	a495A4kgdgGi6IEe+4nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFrki-001CMy-8r; Tue, 17 Aug 2021 05:35:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFrkd-001CMD-Hh
 for linux-phy@lists.infradead.org; Tue, 17 Aug 2021 05:35:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 947AC60F58;
 Tue, 17 Aug 2021 05:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629178502;
 bh=O+SIJcizaMSZ52S2YGffBupIloQd3otabgPvB9b8e3s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XamexlgP1fCzsOp6YhVHAByyKuuy5ZElOxPTHZzXVYjVEHVyH+8ABoLguRKQ1FphX
 0135B2pOlMwECYGl0qe8jvmK1d/B9dtFimiTEgDG2eiNpDgKFIRAig71PhAEmJ/Mag
 bfoDodyhiExIGWkLcZHxt6ZMpYd0T+ibwXxoJyJTvXiddVlE6Iolx/0XwaSurw1fVL
 8PpRs+VEqZjoJ4qE22Fc6f7y2C6HM4jCZ7OwZGMulPI5EUC0pF4NEeGsPlW11OvUGp
 nOkWPuDpC9WaGwHe7A6wisxG3fZzmKYYiLnjEqRAiqv05zNSEkBNPjo8W1Fe0YJ1kl
 itQ6lOlAaxm8w==
Date: Tue, 17 Aug 2021 11:04:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Iskren Chernev <iskren.chernev@gmail.com>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2 2/2] phy: qcom-qmp: Add support for SM6115 UFS phy
Message-ID: <YRtKgf/iXV6bND8w@matsya>
References: <20210813201151.974512-1-iskren.chernev@gmail.com>
 <20210813201151.974512-3-iskren.chernev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210813201151.974512-3-iskren.chernev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210816_223503_671000_1C477D88 
X-CRM114-Status: GOOD (  11.04  )
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

On 13-08-21, 23:11, Iskren Chernev wrote:

> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
> index 6592b58b13f6..fde1bff16e27 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
> @@ -280,6 +280,8 @@
>  #define QSERDES_V3_COM_SSC_PER2				0x020
>  #define QSERDES_V3_COM_SSC_STEP_SIZE1			0x024
>  #define QSERDES_V3_COM_SSC_STEP_SIZE2			0x028
> +#define QSERDES_V3_COM_POST_DIV				0x02c
> +#define QSERDES_V3_COM_POST_DIV_MUX			0x030
>  #define QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN		0x034
>  # define QSERDES_V3_COM_BIAS_EN				0x0001
>  # define QSERDES_V3_COM_BIAS_EN_MUX			0x0002
> @@ -291,6 +293,7 @@
>  #define QSERDES_V3_COM_CLK_ENABLE1			0x038
>  #define QSERDES_V3_COM_SYS_CLK_CTRL			0x03c
>  #define QSERDES_V3_COM_SYSCLK_BUF_ENABLE		0x040
> +#define QSERDES_V3_COM_PLL_EN				0x044
>  #define QSERDES_V3_COM_PLL_IVCO				0x048
>  #define QSERDES_V3_COM_LOCK_CMP1_MODE0			0x098
>  #define QSERDES_V3_COM_LOCK_CMP2_MODE0			0x09c
> @@ -348,6 +351,100 @@
>  #define QSERDES_V3_COM_DEBUG_BUS_SEL			0x178
>  #define QSERDES_V3_COM_CMN_MODE				0x184
>  
> +/* Only for QMP V3 660 PHY - QSERDES COM registers*/
> +#define QSERDES_V3_660_COM_LOCK_CMP1_MODE0		0x04c
> +#define QSERDES_V3_660_COM_LOCK_CMP2_MODE0		0x050
> +#define QSERDES_V3_660_COM_LOCK_CMP3_MODE0		0x054
> +#define QSERDES_V3_660_COM_LOCK_CMP1_MODE1		0x058
> +#define QSERDES_V3_660_COM_LOCK_CMP2_MODE1		0x05c
> +#define QSERDES_V3_660_COM_LOCK_CMP3_MODE1		0x060
> +#define QSERDES_V3_660_COM_CMD_RSVD0			0x064

Are you sure this is v3, this looks like V2 offsets:

#define QSERDES_COM_LOCK_CMP1_MODE0                     0x04c
#define QSERDES_COM_LOCK_CMP2_MODE0                     0x050
#define QSERDES_COM_LOCK_CMP3_MODE0                     0x054
#define QSERDES_COM_LOCK_CMP1_MODE1                     0x058
#define QSERDES_COM_LOCK_CMP2_MODE1                     0x05c
#define QSERDES_COM_LOCK_CMP3_MODE1                     0x060

> +#define QSERDES_V3_660_COM_EP_CLOCK_DETECT_CTRL		0x068
> +#define QSERDES_V3_660_COM_SYSCLK_DET_COMP_STATUS	0x06c

This is new

> +#define QSERDES_V3_660_COM_BG_TRIM			0x070
> +#define QSERDES_V3_660_COM_CLK_EP_DIV			0x074
> +#define QSERDES_V3_660_COM_CP_CTRL_MODE0		0x078

Same as v2

So can you run these offsets against v2 and recheck... there is some
confusion always with version numbers with this IP!

> +#define QSERDES_V3_660_COM_CP_CTRL_MODE1		0x07c
> +#define QSERDES_V3_660_COM_CMN_RSVD1			0x080
> +#define QSERDES_V3_660_COM_PLL_RCTRL_MODE0		0x084
> +#define QSERDES_V3_660_COM_PLL_RCTRL_MODE1		0x088
> +#define QSERDES_V3_660_COM_CMN_RSVD2			0x08c
> +#define QSERDES_V3_660_COM_PLL_CCTRL_MODE0		0x090
> +#define QSERDES_V3_660_COM_PLL_CCTRL_MODE1		0x094
> +#define QSERDES_V3_660_COM_CMN_RSVD3			0x098
> +#define QSERDES_V3_660_COM_PLL_CNTRL			0x09c
> +#define QSERDES_V3_660_COM_PHASE_SEL_CTRL		0x0a0
> +#define QSERDES_V3_660_COM_PHASE_SEL_DC			0x0a4
> +#define QSERDES_V3_660_COM_BIAS_EN_CTRL_BY_PSM		0x0a8
> +#define QSERDES_V3_660_COM_SYSCLK_EN_SEL		0x0ac
> +#define QSERDES_V3_660_COM_CML_SYSCLK_SEL		0x0b0
> +#define QSERDES_V3_660_COM_RESETSM_CNTRL		0x0b4
> +#define QSERDES_V3_660_COM_RESETSM_CNTRL2		0x0b8
> +#define QSERDES_V3_660_COM_RESTRIM_CTRL			0x0bc
> +#define QSERDES_V3_660_COM_RESTRIM_CTRL2		0x0c0
> +#define QSERDES_V3_660_COM_LOCK_CMP_EN			0x0c8
> +#define QSERDES_V3_660_COM_LOCK_CMP_CFG			0x0cc
> +#define QSERDES_V3_660_COM_DEC_START_MODE0		0x0d0
> +#define QSERDES_V3_660_COM_DEC_START_MODE1		0x0d4
> +#define QSERDES_V3_660_COM_VCOCAL_DEADMAN_CTRL		0x0d8
> +#define QSERDES_V3_660_COM_DIV_FRAC_START1_MODE0	0x0dc
> +#define QSERDES_V3_660_COM_DIV_FRAC_START2_MODE0	0x0e0
> +#define QSERDES_V3_660_COM_DIV_FRAC_START3_MODE0	0x0e4
> +#define QSERDES_V3_660_COM_DIV_FRAC_START1_MODE1	0x0e8
> +#define QSERDES_V3_660_COM_DIV_FRAC_START2_MODE1	0x0ec
> +#define QSERDES_V3_660_COM_DIV_FRAC_START3_MODE1	0x0f0
> +#define QSERDES_V3_660_COM_VCO_TUNE_MINVAL1		0x0f4
> +#define QSERDES_V3_660_COM_VCO_TUNE_MINVAL2		0x0f8
> +#define QSERDES_V3_660_COM_CMN_RSVD4			0x0fc
> +#define QSERDES_V3_660_COM_INTEGLOOP_INITVAL		0x100
> +#define QSERDES_V3_660_COM_INTEGLOOP_EN			0x104
> +#define QSERDES_V3_660_COM_INTEGLOOP_GAIN0_MODE0	0x108
> +#define QSERDES_V3_660_COM_INTEGLOOP_GAIN1_MODE0	0x10c
> +#define QSERDES_V3_660_COM_INTEGLOOP_GAIN0_MODE1	0x110
> +#define QSERDES_V3_660_COM_INTEGLOOP_GAIN1_MODE1	0x114
> +#define QSERDES_V3_660_COM_VCO_TUNE_MAXVAL1		0x118
> +#define QSERDES_V3_660_COM_VCO_TUNE_MAXVAL2		0x11c
> +#define QSERDES_V3_660_COM_RES_TRIM_CONTROL2		0x120
> +#define QSERDES_V3_660_COM_VCO_TUNE_CTRL		0x124
> +#define QSERDES_V3_660_COM_VCO_TUNE_MAP			0x128
> +#define QSERDES_V3_660_COM_VCO_TUNE1_MODE0		0x12c
> +#define QSERDES_V3_660_COM_VCO_TUNE2_MODE0		0x130
> +#define QSERDES_V3_660_COM_VCO_TUNE1_MODE1		0x134
> +#define QSERDES_V3_660_COM_VCO_TUNE2_MODE1		0x138
> +#define QSERDES_V3_660_COM_VCO_TUNE_INITVAL1		0x13c
> +#define QSERDES_V3_660_COM_VCO_TUNE_INITVAL2		0x140
> +#define QSERDES_V3_660_COM_VCO_TUNE_TIMER1		0x144
> +#define QSERDES_V3_660_COM_VCO_TUNE_TIMER2		0x148
> +#define QSERDES_V3_660_COM_SAR				0x14c
> +#define QSERDES_V3_660_COM_SAR_CLK			0x150
> +#define QSERDES_V3_660_COM_SAR_CODE_OUT_STATUS		0x154
> +#define QSERDES_V3_660_COM_SAR_CODE_READY_STATUS	0x158
> +#define QSERDES_V3_660_COM_CMN_STATUS			0x15c
> +#define QSERDES_V3_660_COM_RESET_SM_STATUS		0x160
> +#define QSERDES_V3_660_COM_RESTRIM_CODE_STATUS		0x164
> +#define QSERDES_V3_660_COM_PLLCAL_CODE1_STATUS		0x168
> +#define QSERDES_V3_660_COM_PLLCAL_CODE2_STATUS		0x16c
> +#define QSERDES_V3_660_COM_BG_CTRL			0x170
> +#define QSERDES_V3_660_COM_CLK_SELECT			0x174
> +#define QSERDES_V3_660_COM_HSCLK_SEL			0x178
> +#define QSERDES_V3_660_COM_INTEGLOOP_BINCODE_STATUS	0x17c
> +#define QSERDES_V3_660_COM_PLL_ANALOG			0x180
> +#define QSERDES_V3_660_COM_CORECLK_DIV			0x184
> +#define QSERDES_V3_660_COM_SW_RESET			0x188
> +#define QSERDES_V3_660_COM_CORE_CLK_EN			0x18c
> +#define QSERDES_V3_660_COM_C_READY_STATUS		0x190
> +#define QSERDES_V3_660_COM_CMN_CONFIG			0x194
> +#define QSERDES_V3_660_COM_CMN_RATE_OVERRIDE		0x198
> +#define QSERDES_V3_660_COM_SVS_MODE_CLK_SEL		0x19c
> +#define QSERDES_V3_660_COM_DEBUG_BUS0			0x1a0
> +#define QSERDES_V3_660_COM_DEBUG_BUS1			0x1a4
> +#define QSERDES_V3_660_COM_DEBUG_BUS2			0x1a8
> +#define QSERDES_V3_660_COM_DEBUG_BUS3			0x1ac
> +#define QSERDES_V3_660_COM_DEBUG_BUS_SEL		0x1b0
> +#define QSERDES_V3_660_COM_CMN_MISC1			0x1b4
> +#define QSERDES_V3_660_COM_CORECLK_DIV_MODE1		0x1bc
> +#define QSERDES_V3_660_COM_CMN_RSVD5			0x1c0
> +
>  /* Only for QMP V3 PHY - TX registers */
>  #define QSERDES_V3_TX_BIST_MODE_LANENO			0x000
>  #define QSERDES_V3_TX_CLKBUF_ENABLE			0x008
> @@ -380,6 +477,10 @@
>  #define QSERDES_V3_TX_TX_INTERFACE_MODE			0x0c4
>  #define QSERDES_V3_TX_VMODE_CTRL1			0x0f0
>  
> +/* Only for QMP V3 660 PHY - TX registers */
> +#define QSERDES_V3_660_TX_HIGHZ_TRANSCEIVER_BIAS_DRVR_EN	0x068
> +#define QSERDES_V3_660_TX_LANE_MODE				0x094
> +
>  /* Only for QMP V3 PHY - RX registers */
>  #define QSERDES_V3_RX_UCDR_FO_GAIN			0x008
>  #define QSERDES_V3_RX_UCDR_SO_GAIN_HALF			0x00c
> @@ -411,6 +512,24 @@
>  #define QSERDES_V3_RX_RX_MODE_00			0x164
>  #define QSERDES_V3_RX_RX_MODE_01			0x168
>  
> +/* Only for QMP V3 660 PHY - RX registers */
> +#define QSERDES_V3_660_RX_UCDR_SVS_SO_GAIN_HALF		0x030
> +#define QSERDES_V3_660_RX_UCDR_SVS_SO_GAIN_QUARTER	0x034
> +#define QSERDES_V3_660_RX_UCDR_SVS_SO_GAIN_EIGHTH	0x038
> +#define QSERDES_V3_660_RX_UCDR_SVS_SO_GAIN		0x03c
> +#define QSERDES_V3_660_RX_UCDR_FASTLOCK_FO_GAIN		0x040
> +#define QSERDES_V3_660_RX_UCDR_SO_SATURATION_ENABLE	0x048
> +#define QSERDES_V3_660_RX_RX_TERM_BW			0x090
> +#define QSERDES_V3_660_RX_RX_EQ_GAIN1_LSB		0x0c4
> +#define QSERDES_V3_660_RX_RX_EQ_GAIN1_MSB		0x0c8
> +#define QSERDES_V3_660_RX_RX_EQ_GAIN2_LSB		0x0cc
> +#define QSERDES_V3_660_RX_RX_EQ_GAIN2_MSB		0x0d0
> +#define QSERDES_V3_660_RX_RX_EQU_ADAPTOR_CNTRL2		0x0d8
> +#define QSERDES_V3_660_RX_SIGDET_CNTRL			0x114
> +#define QSERDES_V3_660_RX_SIGDET_LVL			0x118
> +#define QSERDES_V3_660_RX_SIGDET_DEGLITCH_CNTRL		0x11c
> +#define QSERDES_V3_660_RX_RX_INTERFACE_MODE		0x12c
> +
>  /* Only for QMP V3 PHY - PCS registers */
>  #define QPHY_V3_PCS_POWER_DOWN_CONTROL			0x004
>  #define QPHY_V3_PCS_TXMGN_V0				0x00c
> @@ -473,6 +592,21 @@
>  #define QPHY_V3_PCS_REFGEN_REQ_CONFIG1			0x20c
>  #define QPHY_V3_PCS_REFGEN_REQ_CONFIG2			0x210
>  
> +/* Only for QMP V3 660 PHY - PCS registers */
> +#define QPHY_V3_660_PCS_PHY_START			0x000
> +#define QPHY_V3_660_PCS_POWER_DOWN_CONTROL		0x004
> +#define QPHY_V3_660_PCS_TX_LARGE_AMP_DRV_LVL		0x034
> +#define QPHY_V3_660_PCS_TX_LARGE_AMP_POST_EMP_LVL	0x038
> +#define QPHY_V3_660_PCS_TX_SMALL_AMP_DRV_LVL		0x03c
> +#define QPHY_V3_660_PCS_TX_SMALL_AMP_POST_EMP_LVL	0x040
> +#define QPHY_V3_660_PCS_RX_MIN_STALL_NOCONFIG_TIME_CAP	0x0cc
> +#define QPHY_V3_660_PCS_LINECFG_DISABLE			0x138
> +#define QPHY_V3_660_PCS_RX_SYM_RESYNC_CTRL		0x13c
> +#define QPHY_V3_660_PCS_RX_MIN_HIBERN8_TIME		0x140
> +#define QPHY_V3_660_PCS_RX_SIGDET_CTRL2			0x148
> +#define QPHY_V3_660_PCS_RX_PWM_GEAR_BAND		0x154
> +#define QPHY_V3_660_PCS_PCS_READY_STATUS		0x168
> +
>  /* Only for QMP V3 PHY - PCS_MISC registers */
>  #define QPHY_V3_PCS_MISC_CLAMP_ENABLE			0x0c
>  #define QPHY_V3_PCS_MISC_OSC_DTCT_CONFIG2		0x2c
> -- 
> 2.32.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
