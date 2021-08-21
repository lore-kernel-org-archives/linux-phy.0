Return-Path: <SRS0=vXpx=NM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77265C43216
	for <linux-phy@archiver.kernel.org>; Sat, 21 Aug 2021 15:57:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3884061251
	for <linux-phy@archiver.kernel.org>; Sat, 21 Aug 2021 15:57:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3884061251
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d6m4uB4xEERemuZtI8nZlpI0xWzrUsSkIqoWtgmMDok=; b=Kl1g4pdMv6Cj5h
	rfv97idwXo2NCUJdNxUGo55xhD+K7RUG8SVdbd6C9hxQtNTsGf/popWdX4zGcohN1rMRcplIINiq0
	kADlTgFh0pVHAg8X9hwXGj5gSgeqXejjyxlevHITq/gzIFiOQaViZPaWmiUSxa8RFtBODe7G7g0zr
	S7OIGC0F24S11EekfI77MdmLepPiY9x7joaYR50wrcAPQ1L+14ruJktpfjBTZ625FCBFftJYt7oPN
	4m+aRvi1MwXFDK//zPxoiQ9sWqcBktWxVm0fHR7M6VligU+RKHFKCQWOnPefwzokDJsaaHddp16Nr
	lg2PuSoRBXl42MDUR6OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHTMt-00CwPs-Ox; Sat, 21 Aug 2021 15:57:11 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHTMq-00CwOF-AI
 for linux-phy@lists.infradead.org; Sat, 21 Aug 2021 15:57:10 +0000
Received: by mail-ed1-x52f.google.com with SMTP id q3so18702790edt.5
 for <linux-phy@lists.infradead.org>; Sat, 21 Aug 2021 08:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VVwfjOxideDmxCMRm7dgv6I+9VrXBd3vGbSfifdHpwQ=;
 b=Pp2ATT06ovs6MSTpgGwLXes4+oVBH6X0VmdwcCJ/BaF0Ityx0bqmdN0wYWT23cd9KH
 IHfreJHR31EmehKRZoewDBrM9dgVtkEajhd0UXxaA3y/el/eteZPQctzVpQRFjw238Oq
 Pw8LK5H71EpXPCFlwWu8X9Y2ZM0Mcai8oaaQzGcQbgLu7mhVjBcj0JZc2v3OdnSFVgR+
 aysmH5Bylx9jv65xlXby8eKzHf/NhR2r9LYsSj9gifJpOGDKnGgnxadfmLzTwqueeEhQ
 27fNMBk/iYpndqkZDRIHW6yz6rGHoDy3DbGjBO0XflNxYt8TcXzweGuYh9jnN4SsBRlZ
 8reg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VVwfjOxideDmxCMRm7dgv6I+9VrXBd3vGbSfifdHpwQ=;
 b=pGqPoibK1wpRl1PThwgAiboyvlShytVVsz/5iRGsFm1hHc2QFVlISQC2ZQADRFYuWh
 lLXCcCRjCtRw7gvxQWHBZFsLnnFvEL0vom98A8sPcfZeJj5IJREEikni9GbvWOwatLnf
 n2USubqEACigMotjXIVWq5ALDAcVjbMy74wvx9PIn19/OGBfDRMPycnZr3zewrNRF/OI
 CBZkpS+H4C0W6tlzuRfk480rMBwSmRVvCTJgPUaA1dPQS7AApyHhlt//6HDmikJMv5lG
 iNhEJCxbHTY7PlCqwLuQYVGZjFnkKD5j4h/7Xrhzby6TYAKQQGlqy/4eKicW33Y2Vh9E
 b3Zg==
X-Gm-Message-State: AOAM531+8MmfPIy9HhyFgOTjszEpqb0Dm+d4FtvVLUJhuuAjrwkYFZx/
 aL86eNrAimvjx+0umO42SHw=
X-Google-Smtp-Source: ABdhPJxvsb4IdZPj71xd/txBSmkVqzUuMGbx46G2hFaLYLdaB8accHMYvxV/qagpGHANy9DLwQSc2g==
X-Received: by 2002:aa7:db8b:: with SMTP id u11mr27906389edt.362.1629561426877; 
 Sat, 21 Aug 2021 08:57:06 -0700 (PDT)
Received: from localhost (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id s13sm4321485edd.12.2021.08.21.08.57.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 21 Aug 2021 08:57:06 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht,
 Iskren Chernev <iskren.chernev@gmail.com>
Subject: [PATCH v3 2/2] phy: qcom-qmp: Add support for SM6115 UFS phy
Date: Sat, 21 Aug 2021 18:56:56 +0300
Message-Id: <20210821155657.893165-3-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210821155657.893165-1-iskren.chernev@gmail.com>
References: <20210821155657.893165-1-iskren.chernev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210821_085708_412100_2E5205C8 
X-CRM114-Status: GOOD (  13.33  )
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

Add the tables and constants for init sequences for UFS QMP phy found in
SM4250/6115 SoC. The phy is a variation of the v2 phy, but is mistakenly
labeled as v3-660 in downstream sources.

QSERDES COM, RX, TX registers match fully existing v2 registers, with
a few additions. PCS registers don't have much in common, but there are
no clashes with existing ones so new registers were added to existing v2
PCS pack.

Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 124 ++++++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h |  18 ++++
 2 files changed, 142 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index a8c4368f984b..f14032170b1c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -234,6 +234,11 @@ static const unsigned int sdm845_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_READY_STATUS]		= 0x160,
 };
 
+static const unsigned int sm6115_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_START_CTRL]		= 0x00,
+	[QPHY_PCS_READY_STATUS]		= 0x168,
+};
+
 static const unsigned int sm8250_pcie_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x44,
@@ -1329,6 +1334,97 @@ static const struct qmp_phy_init_tbl qmp_v3_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_REFGEN_REQ_CONFIG2, 0x60),
 };
 
+static const struct qmp_phy_init_tbl sm6115_ufsphy_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYS_CLK_CTRL, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORECLK_DIV, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORECLK_DIV_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_EN, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_CTRL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_RESETSM_CNTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORE_CLK_EN, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_CFG, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER1, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER2, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SVS_MODE_CLK_SEL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE0, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE0, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN1_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE1_MODE0, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE2_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE1, 0x98),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE1, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE1, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE1, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN1_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE1_MODE1, 0xd6),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE2_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE1, 0x32),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE1, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TRIM, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_INITVAL1, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_INITVAL2, 0x00),
+
+	/* Rate B */
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x44),
+};
+
+static const struct qmp_phy_init_tbl sm6115_ufsphy_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x06),
+};
+
+static const struct qmp_phy_init_tbl sm6115_ufsphy_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x0F),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_INTERFACE_MODE, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x1E),
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_FASTLOCK_FO_GAIN, 0x0B),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_TERM_BW, 0x5B),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN1_LSB, 0xFF),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN1_MSB, 0x3F),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN2_LSB, 0xFF),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN2_MSB, 0x3F),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0D),
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SVS_SO_GAIN_HALF, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SVS_SO_GAIN_QUARTER, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SVS_SO_GAIN, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x5B),
+};
+
+static const struct qmp_phy_init_tbl sm6115_ufsphy_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_RX_PWM_GEAR_BAND, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_RX_SIGDET_CTRL2, 0x6d),
+	QMP_PHY_INIT_CFG(QPHY_TX_LARGE_AMP_DRV_LVL, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_TX_SMALL_AMP_DRV_LVL, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_RX_MIN_STALL_NOCONFIG_TIME_CAP, 0x28),
+	QMP_PHY_INIT_CFG(QPHY_RX_SYM_RESYNC_CTRL, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_TX_LARGE_AMP_POST_EMP_LVL, 0x12),
+	QMP_PHY_INIT_CFG(QPHY_TX_SMALL_AMP_POST_EMP_LVL, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_RX_MIN_HIBERN8_TIME, 0x9a), /* 8 us */
+};
+
 static const struct qmp_phy_init_tbl sdm845_ufsphy_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYS_CLK_CTRL, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x04),
@@ -3396,6 +3492,31 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 	.no_pcs_sw_reset	= true,
 };
 
+static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
+	.type			= PHY_TYPE_UFS,
+	.nlanes			= 1,
+
+	.serdes_tbl		= sm6115_ufsphy_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_serdes_tbl),
+	.tx_tbl			= sm6115_ufsphy_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_tx_tbl),
+	.rx_tbl			= sm6115_ufsphy_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_rx_tbl),
+	.pcs_tbl		= sm6115_ufsphy_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_pcs_tbl),
+	.clk_list		= sdm845_ufs_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= sm6115_ufsphy_regs_layout,
+
+	.start_ctrl		= SERDES_START,
+	.pwrdn_ctrl		= SW_PWRDN,
+
+	.is_dual_lane_phy	= false,
+	.no_pcs_sw_reset	= true,
+};
+
 static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 	.type			= PHY_TYPE_PCIE,
 	.nlanes			= 1,
@@ -5444,6 +5565,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,msm8998-qmp-usb3-phy",
 		.data = &msm8998_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,sm6115-qmp-ufs-phy",
+		.data = &sm6115_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sm8150-qmp-ufs-phy",
 		.data = &sm8150_ufsphy_cfg,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 6592b58b13f6..bebeac2c091c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -191,6 +191,8 @@
 #define QSERDES_COM_VCO_TUNE2_MODE0			0x130
 #define QSERDES_COM_VCO_TUNE1_MODE1			0x134
 #define QSERDES_COM_VCO_TUNE2_MODE1			0x138
+#define QSERDES_COM_VCO_TUNE_INITVAL1			0x13c
+#define QSERDES_COM_VCO_TUNE_INITVAL2			0x140
 #define QSERDES_COM_VCO_TUNE_TIMER1			0x144
 #define QSERDES_COM_VCO_TUNE_TIMER2			0x148
 #define QSERDES_COM_BG_CTRL				0x170
@@ -220,6 +222,10 @@
 /* Only for QMP V2 PHY - RX registers */
 #define QSERDES_RX_UCDR_SO_GAIN_HALF			0x010
 #define QSERDES_RX_UCDR_SO_GAIN				0x01c
+#define QSERDES_RX_UCDR_SVS_SO_GAIN_HALF		0x030
+#define QSERDES_RX_UCDR_SVS_SO_GAIN_QUARTER		0x034
+#define QSERDES_RX_UCDR_SVS_SO_GAIN_EIGHTH		0x038
+#define QSERDES_RX_UCDR_SVS_SO_GAIN			0x03c
 #define QSERDES_RX_UCDR_FASTLOCK_FO_GAIN		0x040
 #define QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE	0x048
 #define QSERDES_RX_RX_TERM_BW				0x090
@@ -243,6 +249,10 @@
 #define QPHY_POWER_DOWN_CONTROL				0x04
 #define QPHY_TXDEEMPH_M6DB_V0				0x24
 #define QPHY_TXDEEMPH_M3P5DB_V0				0x28
+#define QPHY_TX_LARGE_AMP_DRV_LVL			0x34
+#define QPHY_TX_LARGE_AMP_POST_EMP_LVL			0x38
+#define QPHY_TX_SMALL_AMP_DRV_LVL			0x3c
+#define QPHY_TX_SMALL_AMP_POST_EMP_LVL			0x40
 #define QPHY_ENDPOINT_REFCLK_DRIVE			0x54
 #define QPHY_RX_IDLE_DTCT_CNTRL				0x58
 #define QPHY_POWER_STATE_CONFIG1			0x60
@@ -253,6 +263,11 @@
 #define QPHY_LOCK_DETECT_CONFIG3			0x88
 #define QPHY_PWRUP_RESET_DLY_TIME_AUXCLK		0xa0
 #define QPHY_LP_WAKEUP_DLY_TIME_AUXCLK			0xa4
+#define QPHY_RX_MIN_STALL_NOCONFIG_TIME_CAP		0xcc
+#define QPHY_RX_SYM_RESYNC_CTRL				0x13c
+#define QPHY_RX_MIN_HIBERN8_TIME			0x140
+#define QPHY_RX_SIGDET_CTRL2				0x148
+#define QPHY_RX_PWM_GEAR_BAND				0x154
 #define QPHY_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB		0x1A8
 #define QPHY_OSC_DTCT_ACTIONS				0x1AC
 #define QPHY_RX_SIGDET_LVL				0x1D8
@@ -280,6 +295,8 @@
 #define QSERDES_V3_COM_SSC_PER2				0x020
 #define QSERDES_V3_COM_SSC_STEP_SIZE1			0x024
 #define QSERDES_V3_COM_SSC_STEP_SIZE2			0x028
+#define QSERDES_V3_COM_POST_DIV				0x02c
+#define QSERDES_V3_COM_POST_DIV_MUX			0x030
 #define QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN		0x034
 # define QSERDES_V3_COM_BIAS_EN				0x0001
 # define QSERDES_V3_COM_BIAS_EN_MUX			0x0002
@@ -291,6 +308,7 @@
 #define QSERDES_V3_COM_CLK_ENABLE1			0x038
 #define QSERDES_V3_COM_SYS_CLK_CTRL			0x03c
 #define QSERDES_V3_COM_SYSCLK_BUF_ENABLE		0x040
+#define QSERDES_V3_COM_PLL_EN				0x044
 #define QSERDES_V3_COM_PLL_IVCO				0x048
 #define QSERDES_V3_COM_LOCK_CMP1_MODE0			0x098
 #define QSERDES_V3_COM_LOCK_CMP2_MODE0			0x09c
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
