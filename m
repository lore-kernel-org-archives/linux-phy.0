Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D2F8C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 11:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V472divmjjZxa6Qd/UZgFS4yLosiJkt+ZxTnhuzbdiY=; b=ggyl+jBNhh2iE6
	cradSwwj6uXkmXxsH4a5CXMPTp6Xtl1RGVPk1Wh7tzKZAgQNGI7B/m/i2G+QmMImunXsv8uHAutkt
	yuc+nUd3PbTUmS4Mch4NXO5gr/olZmT2GGknZm5Io6xwPTCshFHRmqTY6b0wj7rI8FzztpNvxMPWw
	R0B/z5uE5XEA6gdcYzUSHNntmZY4bjWmsVu8l3lv3xYZpv1I891uh9qNriZPBoImhPAFKcI5saAM3
	mN+Ck8otYu1tldfBgvZy86xq+tHqLIgtSYVM1/lDGPkrFOywcOELw6E8QmFlYB5vRr0zZEEEKe6yA
	guggruF8QMmf68aJEubA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3btu-0052E0-Om; Tue, 21 Jun 2022 11:18:30 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3btr-0052Cw-4l
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 11:18:29 +0000
Received: by mail-ej1-x633.google.com with SMTP id u12so26726921eja.8
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 04:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/yG3bnBttgFPT/ORMdQHhqSOU3xYD8GKhhzLAqQSeCY=;
        b=CK5MfM0z/ZTPCTfz9cT/zCNg/5URWLC1e2V9JFyeNdStC39n+k23b8d/kQiuyWvb93
         c2o4HAFF4E7qYQ5xEicKPM1Ej5A75/tb2phv3sxWOZByuX3stcMtTgmNv1HQH1syzxhM
         ga9m1w1IpZYuBbVVn1nUT3fYBwQIi2gp0dtTiLCw1iU3eeaDSfLvKEve5OaU6gXWI5Q1
         cwkGqJ77xCsisVPF+02UVqw96hytgFP/i7TMGIWB8pbwQGmZSDxSdmw2SlFHUfj8reAk
         Ck5+X2KZaU51ezEC5V8n5en+c1k4vWp50Am9NXV2HK3MQqOgg/GPBn9e9eJc0tdoJ8Fw
         ezRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/yG3bnBttgFPT/ORMdQHhqSOU3xYD8GKhhzLAqQSeCY=;
        b=2igjN4+jZ8ZwG3lrcNvX7stHZX07HstO3vcsE7IUipOMo4yXPMsTZyUhEsP290wC01
         GskXBSc2e9+gkK2pSL4xNrvOWSzkvdObQDBMwC4z2FM3L/l8Bda2yF3P4L2WOEPNH0Ei
         r3h13hvD3m6imanc/jjLiRe48/s6aYDdcQliwZ2Z42F3G3wKR1LijEjMqFpE42W2OMB2
         FyOt/JoYUIi3vzIHWfBQB8TrKSplJd54L7KrC8iDG4/eBaZikHbW8BC+JnLto5IKCdjy
         6qia63GEXvpF9nEYFKcROeiqX4pNr5O4x9LQJrH/WvWGaJDdzBlgU1F5UlC/k5Rda4ts
         YJzw==
X-Gm-Message-State: AJIora8zWTG8Gkq1mDGPum4cK5bxSTQLAbMXnyZv1H8d2gleEcaBWC7y
	Cq5HN/sqbAWdw68gCIJP2MI=
X-Google-Smtp-Source: AGRyM1uD8CNkffxUqVRWtlH3PX6H7i/a2jkfu8D5Wv1iosZYe03/g8U1jZccAYgw/0IcJ2XOsyH7NA==
X-Received: by 2002:a17:907:8d0b:b0:711:ca5e:5b11 with SMTP id tc11-20020a1709078d0b00b00711ca5e5b11mr25770897ejc.395.1655810303398;
        Tue, 21 Jun 2022 04:18:23 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-98-140.xnet.hr. [88.207.98.140])
        by smtp.googlemail.com with ESMTPSA id 15-20020a170906300f00b006f3ef214dd9sm7513063ejz.63.2022.06.21.04.18.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 04:18:22 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	kishon@ti.com,
	vkoul@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Robert Marko <robimarko@gmail.com>
Subject: [PATCH v2 2/2] phy: qcom-qmp-pcie: add IPQ8074 PCIe Gen3 QMP PHY support
Date: Tue, 21 Jun 2022 13:18:18 +0200
Message-Id: <20220621111818.447452-2-robimarko@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220621111818.447452-1-robimarko@gmail.com>
References: <20220621111818.447452-1-robimarko@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_041827_226624_3F69DC7A 
X-CRM114-Status: GOOD (  15.22  )
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

IPQ8074 has 2 different single lane PCIe PHY-s, one Gen2 and one Gen3.
Gen2 one is already supported, so add the support for the Gen3 one.
It uses the same register layout as IPQ6018.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
Changes in v2:
* Rebase onto next-20220621 to apply on the refactored driver
* Remove non existant has_phy_com_ctrl and has_lane_rst
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 171 ++++++++++++++++++++++-
 1 file changed, 169 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index b2cd0cf965d8..b4836417b2c0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -450,6 +450,133 @@ static const struct qmp_phy_init_tbl ipq8074_pcie_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG_L(QPHY_START_CTRL, 0x3),
 };
 
+static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CLKBUFLR_EN, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CTRL_BY_PSM, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_SELECT, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_BG_TRIM, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CMN_CONFIG, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP_EN, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_RESETSM_CNTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE_MAP, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE_TIMER1, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE_TIMER2, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CORE_CLK_EN, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_HSCLK_SEL, 0x21),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START3_MODE0, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START2_MODE0, 0x355),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START1_MODE0, 0x35555),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP2_MODE0, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP1_MODE0, 0x1a0a),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CP_CTRL_MODE0, 0xb),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_CCTRL_MODE0, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN1_MODE0, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN0_MODE0, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE2_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE1_MODE0, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CORE_CLK_EN, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CORECLK_DIV, 0xa),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_SELECT, 0x32),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SYS_CLK_CTRL, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SYSCLK_BUF_ENABLE, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_BG_TIMER, 0xa),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_HSCLK_SEL, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DEC_START_MODE1, 0x68),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START3_MODE1, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START2_MODE1, 0x2aa),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START1_MODE1, 0x2aaab),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP2_MODE1, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP1_MODE1, 0x3414),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CP_CTRL_MODE1, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_CCTRL_MODE1, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN1_MODE1, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN0_MODE1, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE2_MODE1, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE1_MODE1, 0xb4),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CORE_CLK_EN, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CORECLK_DIV_MODE1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_EP_DIV_MODE0, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_EP_DIV_MODE1, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_ENABLE1, 0x90),
+};
+
+static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_TX0_RES_CODE_LANE_OFFSET_TX, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_TX0_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_TX0_HIGHZ_DRVR_EN, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_TX0_LANE_MODE_1, 0x06),
+};
+
+static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_RX0_SIGDET_CNTRL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_SIGDET_DEGLITCH_CNTRL, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL2, 0xe),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL3, 0x4),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL4, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_DFE_EN_TIMER, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_PI_CONTROLS, 0x70),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x73),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_LOW, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH2, 0xc8),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH3, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH4, 0xb1),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_LOW, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH2, 0xc8),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH3, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH4, 0xb1),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_LOW, 0xf0),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH2, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH3, 0xd3),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH4, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_IDAC_TSETTLE_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_IDAC_TSETTLE_LOW, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_FO_GAIN, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_SO_GAIN, 0x02),
+};
+
+static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(PCS_COM_FLL_CNTRL2, 0x83),
+	QMP_PHY_INIT_CFG(PCS_COM_FLL_CNT_VAL_L, 0x9),
+	QMP_PHY_INIT_CFG(PCS_COM_FLL_CNT_VAL_H_TOL, 0x42),
+	QMP_PHY_INIT_CFG(PCS_COM_FLL_MAN_CODE, 0x40),
+	QMP_PHY_INIT_CFG(PCS_COM_FLL_CNTRL1, 0x01),
+	QMP_PHY_INIT_CFG(PCS_COM_P2U3_WAKEUP_DLY_TIME_AUXCLK_H, 0x0),
+	QMP_PHY_INIT_CFG(PCS_COM_P2U3_WAKEUP_DLY_TIME_AUXCLK_L, 0x1),
+	QMP_PHY_INIT_CFG(PCS_PCIE_OSC_DTCT_ACTIONS, 0x0),
+	QMP_PHY_INIT_CFG(PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_H, 0x00),
+	QMP_PHY_INIT_CFG(PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
+	QMP_PHY_INIT_CFG(PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_H, 0x00),
+	QMP_PHY_INIT_CFG(PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
+	QMP_PHY_INIT_CFG(PCS_PCIE_EQ_CONFIG1, 0x11),
+	QMP_PHY_INIT_CFG(PCS_PCIE_EQ_CONFIG2, 0xb),
+	QMP_PHY_INIT_CFG(PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
+	QMP_PHY_INIT_CFG(PCS_PCIE_OSC_DTCT_CONFIG2, 0x52),
+	QMP_PHY_INIT_CFG(PCS_PCIE_OSC_DTCT_MODE2_CONFIG2, 0x50),
+	QMP_PHY_INIT_CFG(PCS_PCIE_OSC_DTCT_MODE2_CONFIG4, 0x1a),
+	QMP_PHY_INIT_CFG(PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x6),
+	QMP_PHY_INIT_CFG(PCS_COM_G12S1_TXDEEMPH_M3P5DB, 0x10),
+	QMP_PHY_INIT_CFG(PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(PCS_COM_RX_DCC_CAL_CONFIG, 0x01),
+	QMP_PHY_INIT_CFG(PCS_COM_RX_SIGDET_LVL, 0xaa),
+	QMP_PHY_INIT_CFG(PCS_COM_REFGEN_REQ_CONFIG1, 0x0d),
+};
+
 static const struct qmp_phy_init_tbl sdm845_qmp_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -1421,6 +1548,34 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.pwrdn_delay_max	= 1005,		/* us */
 };
 
+static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
+	.type			= PHY_TYPE_PCIE,
+	.nlanes			= 1,
+
+	.serdes_tbl		= ipq8074_pcie_gen3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(ipq8074_pcie_gen3_serdes_tbl),
+	.tx_tbl			= ipq8074_pcie_gen3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_gen3_tx_tbl),
+	.rx_tbl			= ipq8074_pcie_gen3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_gen3_rx_tbl),
+	.pcs_tbl		= ipq8074_pcie_gen3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(ipq8074_pcie_gen3_pcs_tbl),
+	.clk_list		= ipq8074_pciephy_clk_l,
+	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
+	.reset_list		= ipq8074_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
+	.vreg_list		= NULL,
+	.num_vregs		= 0,
+	.regs			= ipq_pciephy_gen3_regs_layout,
+
+	.start_ctrl		= SERDES_START | PCS_START,
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+
+	.has_pwrdn_delay	= true,
+	.pwrdn_delay_min	= 995,		/* us */
+	.pwrdn_delay_max	= 1005,		/* us */
+};
+
 static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 	.type			= PHY_TYPE_PCIE,
 	.nlanes			= 1,
@@ -2107,6 +2262,7 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 {
 	struct clk_fixed_rate *fixed;
 	struct clk_init_data init = { };
+	u32 rate;
 	int ret;
 
 	ret = of_property_read_string(np, "clock-output-names", &init.name);
@@ -2121,8 +2277,16 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 
 	init.ops = &clk_fixed_rate_ops;
 
-	/* controllers using QMP phys use 125MHz pipe clock interface */
-	fixed->fixed_rate = 125000000;
+	/*
+	 * Controllers using QMP PHY-s use 125MHz pipe clock interface
+	 * unless other frequency is specified in the DTS.
+	 */
+	ret = of_property_read_u32(np, "clock-output-rate", &rate);
+	if (ret)
+		fixed->fixed_rate = 125000000;
+	else
+		fixed->fixed_rate = rate;
+
 	fixed->hw.init = &init;
 
 	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
@@ -2255,6 +2419,9 @@ static const struct of_device_id qcom_qmp_phy_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,ipq8074-qmp-pcie-phy",
 		.data = &ipq8074_pciephy_cfg,
+	}, {
+		.compatible = "qcom,ipq8074-qmp-gen3-pcie-phy",
+		.data = &ipq8074_pciephy_gen3_cfg,
 	}, {
 		.compatible = "qcom,ipq6018-qmp-pcie-phy",
 		.data = &ipq6018_pciephy_cfg,
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
