Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098C2606A31E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jH1rFg0u;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=oehkSI5M
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4U6x2ilsA3RWvyX/OGynr361sSfbBf7P8qav4V1MzU4=; b=jH1rFg0ufZ7YoQjswXLMh030yW
	CniUsupv6tbQJQs/OPRcr/IW23NHfEA8D2bEsnPPt3KSQ1EHXqeKkAXAqWaq//n0UuACSPuR3YP6T
	18ZbqiGKQDr6tUHcjyzSDdd7JZDL2JaMa0JgEug4uHcLcrMc8Pfux6SYxrcYkiJm+n7FG1dEoAtis
	fIxseOC/xrgzGAJbG8CUY2AjQH4pvJE++z27KTtFoQUUHSqtMti/tDj3MHjx89VP9hBsdFne3umNg
	1X3Fv91UEE0X1dC7fOJsgT39FDyy/IX66sASWedePMfD08nHZcVcavcTjofL3N7bj8gZKpGGpVQWK
	p3zniQOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtvJ-0000000FlJb-37iL;
	Fri, 27 Nov 2026 11:15:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtvG-0000000FlIY-2sVU
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:15:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 48D934388C;
	Fri, 27 Nov 2026 11:15:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9011E1F00898;
	Fri, 27 Nov 2026 11:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795778121;
	bh=LCE10Qsj5G2u+2q00eF52SZK4gOAH00LXc8wenJC0Bc=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=oehkSI5MMTda/hSLPbSSrlr12IvPmFxje0sdJxTfimCdBu1cFwIg8+ahAEnKvN4gM
	 jdSsq/yc9aUqcPH8VNLZdIauf0gdu2sTCzLgEBsQk6/EXz8AOt2/lC8M6q7QDhwpxJ
	 gnitfxp6tFuDpCt9dW01uzwPTwoHNmbFIF/7zwAIZZSCCtfCB8HfgE2YpAK/Ee/G8l
	 9oLPzDtk8vp9zd49HZBHfYDRDMsVqQ4y7FftrbekbruRzlXpta4Iucf0xDqN6m9+f2
	 ayZ0ofXg/onKdVZc9jPGqQCdQom2XSsJM0mEBiRnuqmk72Y0mpuS9Twf3dnZBew/EL
	 AqidWZZQ9V9qA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v3 10/11] phy: qcom: edp: Add Nord-specific QSERDES COM
 register header
From: Manivannan Sadhasivam <mani@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Nabige Aala <nabige.aala@oss.qualcomm.com>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, robh@kernel.org, conor+dt@kernel.org, 
 vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <sashiko-outbox-217079@kernel.org>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
 <20261116-nord-drv-dt-v3-10-e3d3bf0e2c49@oss.qualcomm.com>
 <sashiko-outbox-217079@kernel.org>
Date: Fri, 27 Nov 2026 16:45:14 +0530
Message-Id: <179577811449.3421.13458087961156967909.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4241; i=mani@kernel.org;
 h=from:subject:message-id; bh=fflklKk2bug0sMYkL2mzR4LbTYtS017AwbxNlnJWiUs=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCWZFzS67zCIi1q6JW/VzOTKwQkvR3Bmo+U/kO
 RN6zO22aKyJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawlmRQAKCRBVnxHm/pHO
 9f45CACDAHhsHoUnAO/walLa469Maue2A3w0bO1+WfFkco9ZhUDmdM4BUI6pdA3rocMil5rLkuu
 uuXNalKz7v9M44MpJabC5bs6SV4uJSatOTww4+ODb9W/xSrqvrDDLq2qx/gDLSbpamyqR7+9caa
 y1Vph1lS15XcbjDcQG3ehvfBPa3rRbr1EhlbIvojoRj+TNRx437SVFD2C92hrMCzeyXIeQqs3+T
 +UaLDBKjj4UuKOKCC3RkyRjopfEbijON45U8R50ZtdsZGx9BTo5rYfIglEb50XO6/j/6l6ur86I
 9nFJnIv2B1/sZwX8DEq6wLyJCVeW3lGwnSVWr36SmUK5gwRU
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-16 13:30 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential
> issue to consider:
> - [Low] phy: qcom: edp: duplicate QSERDES v6 COM register definitions in
>   v8-nord header
> --
> 
> commit 6ae0c395ca0665ea9d8f96120d2aff620150f574
> Author: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> phy: qcom: edp: Add Nord-specific QSERDES COM register header
> 
> This commit adds a header defining the QSERDES COM register offsets for
> the Nord DisplayPort QMP PHY.
> 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8-nord.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8-nord.h
> > new file mode 100644
> > index 0000000000000..f38b48dae39e3
> > --- /dev/null
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8-nord.h
> > @@ -0,0 +1,51 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (c) 2026 Qualcomm Innovation Center, Inc. All rights reserved.
> > + */
> > +
> > +#ifndef QCOM_PHY_QMP_QSERDES_DP_COM_V8_NORD_H_
> > +#define QCOM_PHY_QMP_QSERDES_DP_COM_V8_NORD_H_
> > +
> > +/* Nord DP QMP PHY - QSERDES COM registers (relocated from v8 base offsets) */
> > +#define NORD_DP_QSERDES_COM_HSCLK_SEL_1			0x03c
> > +#define NORD_DP_QSERDES_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
> > +#define NORD_DP_QSERDES_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
> > +#define NORD_DP_QSERDES_COM_SSC_STEP_SIZE1_MODE0	0x060
> > +#define NORD_DP_QSERDES_COM_SSC_STEP_SIZE2_MODE0	0x064
> > +#define NORD_DP_QSERDES_COM_CP_CTRL_MODE0		0x070
> > +#define NORD_DP_QSERDES_COM_PLL_RCTRL_MODE0		0x074
> > +#define NORD_DP_QSERDES_COM_PLL_CCTRL_MODE0		0x078
> > +#define NORD_DP_QSERDES_COM_CORECLK_DIV_MODE0		0x07c
> > +#define NORD_DP_QSERDES_COM_LOCK_CMP1_MODE0		0x080
> > +#define NORD_DP_QSERDES_COM_LOCK_CMP2_MODE0		0x084
> > +#define NORD_DP_QSERDES_COM_DEC_START_MODE0		0x088
> > +#define NORD_DP_QSERDES_COM_DIV_FRAC_START1_MODE0	0x090
> > +#define NORD_DP_QSERDES_COM_DIV_FRAC_START2_MODE0	0x094
> > +#define NORD_DP_QSERDES_COM_DIV_FRAC_START3_MODE0	0x098
> > +#define NORD_DP_QSERDES_COM_INTEGLOOP_GAIN0_MODE0	0x0a0
> > +#define NORD_DP_QSERDES_COM_INTEGLOOP_GAIN1_MODE0	0x0a4
> > +#define NORD_DP_QSERDES_COM_VCO_TUNE1_MODE0		0x0a8
> > +#define NORD_DP_QSERDES_COM_VCO_TUNE2_MODE0		0x0ac
> > +#define NORD_DP_QSERDES_COM_BG_TIMER			0x0bc
> > +#define NORD_DP_QSERDES_COM_SSC_EN_CENTER		0x0c0
> > +#define NORD_DP_QSERDES_COM_SSC_ADJ_PER1		0x0c4
> > +#define NORD_DP_QSERDES_COM_SSC_PER1			0x0cc
> > +#define NORD_DP_QSERDES_COM_SSC_PER2			0x0d0
> > +#define NORD_DP_QSERDES_COM_BIAS_EN_CLKBUFLR_EN	0x0dc
> > +#define NORD_DP_QSERDES_COM_CLK_ENABLE1			0x0e0
> > +#define NORD_DP_QSERDES_COM_SYS_CLK_CTRL		0x0e4
> > +#define NORD_DP_QSERDES_COM_SYSCLK_BUF_ENABLE		0x0e8
> > +#define NORD_DP_QSERDES_COM_PLL_IVCO			0x0f4
> > +#define NORD_DP_QSERDES_COM_SYSCLK_EN_SEL		0x110
> > +#define NORD_DP_QSERDES_COM_RESETSM_CNTRL		0x118
> > +#define NORD_DP_QSERDES_COM_LOCK_CMP_EN			0x120
> > +#define NORD_DP_QSERDES_COM_VCO_TUNE_CTRL		0x13c
> > +#define NORD_DP_QSERDES_COM_VCO_TUNE_MAP		0x140
> > +#define NORD_DP_QSERDES_COM_CLK_SELECT			0x164
> > +#define NORD_DP_QSERDES_COM_CORE_CLK_EN			0x170
> > +#define NORD_DP_QSERDES_COM_CMN_CONFIG_1		0x174
> > +#define NORD_DP_QSERDES_COM_SVS_MODE_CLK_SEL		0x17c
> > +#define NORD_DP_QSERDES_COM_CMN_STATUS			0x1d0
> > +#define NORD_DP_QSERDES_COM_C_READY_STATUS		0x1f8
> 
> [Severity: Low]
> Can Nord reuse the existing QSERDES_V6_COM_* definitions from
> drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h instead of introducing
> this SoC-specific header?
> 
> All 40 NORD_DP_QSERDES_COM_* register offsets defined here are identical to
> the existing QSERDES_V6_COM_* definitions.  Moreover,
> drivers/phy/qualcomm/phy-qcom-edp.c already includes
> phy-qcom-qmp-qserdes-com-v6.h and provides v6 COM helpers (such as
> qcom_edp_phy_power_on_v6(), qcom_edp_phy_com_resetsm_cntrl_v6(), and
> qcom_edp_com_bias_en_clkbuflr_v6()), and nord_usb3dpphy_cfg in
> drivers/phy/qualcomm/phy-qcom-qmp-combo.c already uses qmp_v6_dp_serdes_tbl
> with the QSERDES_V6_COM_* definitions.
> 

Fair question.

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
