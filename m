Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UPPERCASE_50_75,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E58C4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:57:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6AD86611CB
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:57:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6AD86611CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s97+Q617dX8WfIk5KIB4h3dkK6ygOnFJsgVprecLcXM=; b=YrqEVanDPrHRTm
	F+r5F9NgFq6fg+l34+ptYsSG203PCmUrNcnjdJGB7jU63794RjbS+B8x0IBaV6xys80BcMF2PkHwe
	YJXdkorgyhRRusoawOyzW18h7qEBisPn4E3u0G3vGHRwf8iiFiWIuUhKEZPs6uIsfWm/gCmGmjhEV
	DS2t187b2fxKKubsBSOq0Y5gDtcVyqia0GxcRmAH9rsob31ypSk4/SmIgbJ8PxJ5PNKYH45MRrnpM
	qiFhwMEQM27+U6fhrHUTpAeBrVQTRq7YuhTPEKTXqhMvK8D1SaZqkk1/5INHf+3bUwSIDLY/UwZQp
	+z9gxmd0pv6TsT7FIGLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBzPh-00CX7c-5h; Fri, 06 Aug 2021 12:57:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBzPe-00CX6x-P7
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 12:57:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 49CA0611BF;
 Fri,  6 Aug 2021 12:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628254642;
 bh=aZUk9fKJlGFQYH0vEv5wsW5aHvypSoQlE3ROhxOIdUs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lDHOBRbyJj+w5RLpMQnDYLKE5RrACETbuKHkdnewUOvvMmXw9mXi3tRCgE6XKOgjN
 ZUstIvBxaRrCcJg2bnx4FSbfdObUon3obhKpz017JYMKkqXUNNoIKLf7slncxxyNjk
 /Zv6sPpEJ9EG4/iRccu0TTVvZYL6yvG/iNLWgGjggXnz5IlvAJYUFemqK2zt9X/oph
 58f408Zw/19to4GH5ODICEvEu9e5axz6iVawULcea4da/nQNAR1bvMVM8oCQhT69aq
 DwF/AzqeC1nDg+N7DdnqZ0QDTyquqVQgnR6Gtj2FeStAx/oaGsGPke9V7M2+mepXfE
 uOaMgu+OEn66w==
Date: Fri, 6 Aug 2021 18:27:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Iskren Chernev <iskren.chernev@gmail.com>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Manu Gautam <mgautam@codeaurora.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v1 2/2] phy: qcom-qmp: Add support for SM6115 UFS phy
Message-ID: <YQ0xrgDjxXeNecAS@matsya>
References: <20210805091727.942471-1-iskren.chernev@gmail.com>
 <20210805091727.942471-3-iskren.chernev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210805091727.942471-3-iskren.chernev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_055722_889530_E3D848C5 
X-CRM114-Status: UNSURE (   4.53  )
X-CRM114-Notice: Please train this message.
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

On 05-08-21, 12:17, Iskren Chernev wrote:

> +/* Only for QMP V3 660 PHY - QSERDES COM registers*/
> +#define QSERDES_V3_660_COM_ATB_SEL1			0x000
> +#define QSERDES_V3_660_COM_ATB_SEL2			0x004
> +#define QSERDES_V3_660_COM_FREQ_UPDATE			0x008
> +#define QSERDES_V3_660_COM_BG_TIMER			0x00c
> +#define QSERDES_V3_660_COM_SSC_EN_CENTER		0x010
> +#define QSERDES_V3_660_COM_SSC_ADJ_PER1			0x014
> +#define QSERDES_V3_660_COM_SSC_ADJ_PER2			0x018
> +#define QSERDES_V3_660_COM_SSC_PER1			0x01c
> +#define QSERDES_V3_660_COM_SSC_PER2			0x020
> +#define QSERDES_V3_660_COM_SSC_STEP_SIZE1		0x024
> +#define QSERDES_V3_660_COM_SSC_STEP_SIZE2		0x028
> +#define QSERDES_V3_660_COM_POST_DIV			0x02c
> +#define QSERDES_V3_660_COM_POST_DIV_MUX			0x030
> +#define QSERDES_V3_660_COM_BIAS_EN_CLKBUFLR_EN		0x034
> +#define QSERDES_V3_660_COM_CLK_ENABLE1			0x038
> +#define QSERDES_V3_660_COM_SYS_CLK_CTRL			0x03c
> +#define QSERDES_V3_660_COM_SYSCLK_BUF_ENABLE		0x040
> +#define QSERDES_V3_660_COM_PLL_EN			0x044
> +#define QSERDES_V3_660_COM_PLL_IVCO			0x048
> +#define QSERDES_V3_660_COM_LOCK_CMP1_MODE0		0x04c
> +#define QSERDES_V3_660_COM_LOCK_CMP2_MODE0		0x050
> +#define QSERDES_V3_660_COM_LOCK_CMP3_MODE0		0x054
> +#define QSERDES_V3_660_COM_LOCK_CMP1_MODE1		0x058
> +#define QSERDES_V3_660_COM_LOCK_CMP2_MODE1		0x05c
> +#define QSERDES_V3_660_COM_LOCK_CMP3_MODE1		0x060
> +#define QSERDES_V3_660_COM_CMD_RSVD0			0x064
> +#define QSERDES_V3_660_COM_EP_CLOCK_DETECT_CTRL		0x068
> +#define QSERDES_V3_660_COM_SYSCLK_DET_COMP_STATUS	0x06c
> +#define QSERDES_V3_660_COM_BG_TRIM			0x070
> +#define QSERDES_V3_660_COM_CLK_EP_DIV			0x074
> +#define QSERDES_V3_660_COM_CP_CTRL_MODE0		0x078
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

why are these registers 660 specific and not V3 like we have for
other generations..? Quick looks with V3 regs tells me that seem
similar....

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
