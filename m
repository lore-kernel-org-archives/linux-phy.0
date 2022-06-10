Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 708A0C43334
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=09BxBegx3/M80Zr2eBubk5GlgHeRxpPzjktJgzJZq2M=; b=muSDiJkTWw2dvy
	5M3fRYoN6PQ53zwP0sFHAO6vS3MYAcx3dJBTA/EZTOxwsQVe2e2EMiGQ9auPXl9PDr4jBfdfIqz1n
	coZ31zrZHVni9KO7BlPGTF6b0zDE+SXeQ7L8AuBje3fURxTw+nB5gw8fVn+G3t0tFhRdFXmaVYFym
	ibHVZpPRfyhHeuEgpCPDaW68BacpdKMwexAo6xb6zVdhk4XWjAujwhs0Tvcj+iHjBjbJUiZBoOSiy
	LBLLeqI+50FQl2ChAGRH+1e9nP6plfHQ8Verc/7WbgZg6EnZ5qbIG1prcYt9czRyyLwAw5nskrLi5
	cz4I73awHnF6gJnGn1OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk1H-009UzL-Qy; Fri, 10 Jun 2022 19:10:07 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk1E-009UxL-K2
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:10:06 +0000
Received: by mail-lf1-x130.google.com with SMTP id be31so44268966lfb.10
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=v3mofV4xdnrcfpbhKnV1qoiOa2Uhd6KOzXKARqOT9us=;
        b=M4s2QftkwrsQuAaAdIJMV5t/6rWHT0w7Vkb8mciaPl2QJ0k6iz1XqBl2j+hHCFqzIS
         acz0eixq8tSEvROTiyP1LIiAT3JVyxqrXO2G8OCijSCjZmcHIEXIo/+RD+e8IhihZUM9
         BzSxsKLPvsTlrMlGbhrfgjeIGTd8sWos4kRtVExJwuZDWXQfEykIVaDGvODLi4CcCaPS
         EY+uWLKrIMfwaC8ctpjESD8FET6nU5HD4sTJztQghBFQSI/J+Eyp38DT60q3E/Bo6eaK
         mACSlDu3c7HMSadbISakhonC7nmk+wBAV1INiPsQcscqmP1vFfyWZsWFREvSc3rZXPFk
         /Swg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v3mofV4xdnrcfpbhKnV1qoiOa2Uhd6KOzXKARqOT9us=;
        b=1+XRmqNa/ZFw3Ueg9UJJvgZKaK+csT8y2OMmA1xu9xnWvPaWgGIiVgvQ7+CtlE2Krx
         /wGT8ctakNG6b/2bI3OwgPcWrZBuI38sG+/WLgNCVIZwAK+KPngwvZKao9g5O1KJ2BdB
         tjviBKM7DPPk6kgL6/hPsEnHAHf1Ch7m7+bmJle2Msuhyc7R+IL09bqF5pOSsCq3VLyF
         VYbF2eQT4Lz4YYwoFEye4/QAFTjB55P+4XDmoyCzJYWDIVWzPSi7RqH6oBOyfxaiTA3G
         V8TkzwjbrpyrtdHs3WNrggl+PUzV/4hTBkO07OR7ZRTXudXBSMLYADaSvV2hsrmxmY7X
         BTPg==
X-Gm-Message-State: AOAM530e9Cp8x0ZKjWw0dvqcpRmoPzWVHYKqEpelU44TjDh58pUIojXf
	HjJf4jFclDCQ5kwpQpVyqvXqEQ==
X-Google-Smtp-Source: ABdhPJwPRa4Dw2EplQLDAtakwfokifHX4ZmKoEjNoUEntlUtRgLhuTtRXq2FiYgLS39K6wkoMtgxmw==
X-Received: by 2002:a05:6512:2249:b0:478:f926:ad7 with SMTP id i9-20020a056512224900b00478f9260ad7mr32737611lfu.511.1654888202058;
        Fri, 10 Jun 2022 12:10:02 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.10.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:10:01 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 21/28] phy: qcom-qmp: qserdes-com: add missing registers
Date: Fri, 10 Jun 2022 22:09:18 +0300
Message-Id: <20220610190925.3670081-22-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_121004_710264_4D1D65BD 
X-CRM114-Status: UNSURE (   9.72  )
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

Add missing registers, verified against:
- msm-3.18's phy-qcom-ufs-qmp-14nm.h
- msm-3.18's mdss-hdmi-pll-8996.c
- msm-5.4's ep_pcie_phy.h

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |   2 +-
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com.h   |  57 ++++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h  | 163 +++++++++++++++++-
 3 files changed, 220 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 2992ef6603f3..9e3889cbd645 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -423,7 +423,7 @@ static const struct qmp_phy_init_tbl ipq8074_pcie_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x6),
 	QMP_PHY_INIT_CFG(QSERDES_TX_RES_CODE_LANE_OFFSET, 0x2),
 	QMP_PHY_INIT_CFG(QSERDES_TX_RCV_DETECT_LVL_2, 0x12),
-	QMP_PHY_INIT_CFG(QSERDES_TX_EMP_POST1_LVL, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_TX_TX_EMP_POST1_LVL, 0x36),
 	QMP_PHY_INIT_CFG(QSERDES_TX_SLEW_CNTL, 0x0a),
 };
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
index 9dfa80263707..fbaf6ef467f8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
@@ -7,6 +7,9 @@
 #define QCOM_PHY_QMP_QSERDES_COM_H_
 
 /* Only for QMP V2 PHY - QSERDES COM registers */
+#define QSERDES_COM_ATB_SEL1				0x000
+#define QSERDES_COM_ATB_SEL2				0x004
+#define QSERDES_COM_FREQ_UPDATE				0x008
 #define QSERDES_COM_BG_TIMER				0x00c
 #define QSERDES_COM_SSC_EN_CENTER			0x010
 #define QSERDES_COM_SSC_ADJ_PER1			0x014
@@ -15,10 +18,13 @@
 #define QSERDES_COM_SSC_PER2				0x020
 #define QSERDES_COM_SSC_STEP_SIZE1			0x024
 #define QSERDES_COM_SSC_STEP_SIZE2			0x028
+#define QSERDES_COM_POST_DIV				0x02c
+#define QSERDES_COM_POST_DIV_MUX			0x030
 #define QSERDES_COM_BIAS_EN_CLKBUFLR_EN			0x034
 #define QSERDES_COM_CLK_ENABLE1				0x038
 #define QSERDES_COM_SYS_CLK_CTRL			0x03c
 #define QSERDES_COM_SYSCLK_BUF_ENABLE			0x040
+#define QSERDES_COM_PLL_EN				0x044
 #define QSERDES_COM_PLL_IVCO				0x048
 #define QSERDES_COM_LOCK_CMP1_MODE0			0x04c
 #define QSERDES_COM_LOCK_CMP2_MODE0			0x050
@@ -26,58 +32,109 @@
 #define QSERDES_COM_LOCK_CMP1_MODE1			0x058
 #define QSERDES_COM_LOCK_CMP2_MODE1			0x05c
 #define QSERDES_COM_LOCK_CMP3_MODE1			0x060
+#define QSERDES_COM_LOCK_CMP1_MODE2			0x064
+#define QSERDES_COM_CMN_RSVD0				0x064
+#define QSERDES_COM_LOCK_CMP2_MODE2			0x068
+#define QSERDES_COM_EP_CLOCK_DETECT_CTRL		0x068
+#define QSERDES_COM_LOCK_CMP3_MODE2			0x06c
+#define QSERDES_COM_SYSCLK_DET_COMP_STATUS		0x06c
 #define QSERDES_COM_BG_TRIM				0x070
 #define QSERDES_COM_CLK_EP_DIV				0x074
 #define QSERDES_COM_CP_CTRL_MODE0			0x078
 #define QSERDES_COM_CP_CTRL_MODE1			0x07c
+#define QSERDES_COM_CP_CTRL_MODE2			0x080
+#define QSERDES_COM_CMN_RSVD1				0x080
 #define QSERDES_COM_PLL_RCTRL_MODE0			0x084
 #define QSERDES_COM_PLL_RCTRL_MODE1			0x088
+#define QSERDES_COM_PLL_RCTRL_MODE2			0x08c
+#define QSERDES_COM_CMN_RSVD2				0x08c
 #define QSERDES_COM_PLL_CCTRL_MODE0			0x090
 #define QSERDES_COM_PLL_CCTRL_MODE1			0x094
+#define QSERDES_COM_PLL_CCTRL_MODE2			0x098
+#define QSERDES_COM_CMN_RSVD3				0x098
+#define QSERDES_COM_PLL_CNTRL				0x09c
+#define QSERDES_COM_PHASE_SEL_CTRL			0x0a0
+#define QSERDES_COM_PHASE_SEL_DC			0x0a4
+#define QSERDES_COM_CORE_CLK_IN_SYNC_SEL		0x0a8
 #define QSERDES_COM_BIAS_EN_CTRL_BY_PSM			0x0a8
 #define QSERDES_COM_SYSCLK_EN_SEL			0x0ac
+#define QSERDES_COM_CML_SYSCLK_SEL			0x0b0
 #define QSERDES_COM_RESETSM_CNTRL			0x0b4
 #define QSERDES_COM_RESETSM_CNTRL2			0x0b8
 #define QSERDES_COM_RESTRIM_CTRL			0x0bc
+#define QSERDES_COM_RESTRIM_CTRL2			0x0c0
 #define QSERDES_COM_RESCODE_DIV_NUM			0x0c4
 #define QSERDES_COM_LOCK_CMP_EN				0x0c8
 #define QSERDES_COM_LOCK_CMP_CFG			0x0cc
 #define QSERDES_COM_DEC_START_MODE0			0x0d0
 #define QSERDES_COM_DEC_START_MODE1			0x0d4
+#define QSERDES_COM_DEC_START_MODE2			0x0d8
+#define QSERDES_COM_VCOCAL_DEADMAN_CTRL			0x0d8
 #define QSERDES_COM_DIV_FRAC_START1_MODE0		0x0dc
 #define QSERDES_COM_DIV_FRAC_START2_MODE0		0x0e0
 #define QSERDES_COM_DIV_FRAC_START3_MODE0		0x0e4
 #define QSERDES_COM_DIV_FRAC_START1_MODE1		0x0e8
 #define QSERDES_COM_DIV_FRAC_START2_MODE1		0x0ec
 #define QSERDES_COM_DIV_FRAC_START3_MODE1		0x0f0
+#define QSERDES_COM_DIV_FRAC_START1_MODE2		0x0f4
+#define QSERDES_COM_VCO_TUNE_MINVAL1			0x0f4
+#define QSERDES_COM_DIV_FRAC_START2_MODE2		0x0f8
+#define QSERDES_COM_VCO_TUNE_MINVAL2			0x0f8
+#define QSERDES_COM_DIV_FRAC_START3_MODE2		0x0fc
+#define QSERDES_COM_CMN_RSVD4				0x0fc
 #define QSERDES_COM_INTEGLOOP_INITVAL			0x100
+#define QSERDES_COM_INTEGLOOP_EN			0x104
 #define QSERDES_COM_INTEGLOOP_GAIN0_MODE0		0x108
 #define QSERDES_COM_INTEGLOOP_GAIN1_MODE0		0x10c
 #define QSERDES_COM_INTEGLOOP_GAIN0_MODE1		0x110
 #define QSERDES_COM_INTEGLOOP_GAIN1_MODE1		0x114
+#define QSERDES_COM_INTEGLOOP_GAIN0_MODE2		0x118
+#define QSERDES_COM_VCO_TUNE_MAXVAL1			0x118
+#define QSERDES_COM_INTEGLOOP_GAIN1_MODE2		0x11c
+#define QSERDES_COM_VCO_TUNE_MAXVAL2			0x11c
+#define QSERDES_COM_RES_TRIM_CONTROL2			0x120
 #define QSERDES_COM_VCO_TUNE_CTRL			0x124
 #define QSERDES_COM_VCO_TUNE_MAP			0x128
 #define QSERDES_COM_VCO_TUNE1_MODE0			0x12c
 #define QSERDES_COM_VCO_TUNE2_MODE0			0x130
 #define QSERDES_COM_VCO_TUNE1_MODE1			0x134
 #define QSERDES_COM_VCO_TUNE2_MODE1			0x138
+#define QSERDES_COM_VCO_TUNE1_MODE2			0x13c
 #define QSERDES_COM_VCO_TUNE_INITVAL1			0x13c
+#define QSERDES_COM_VCO_TUNE2_MODE2			0x140
 #define QSERDES_COM_VCO_TUNE_INITVAL2			0x140
 #define QSERDES_COM_VCO_TUNE_TIMER1			0x144
 #define QSERDES_COM_VCO_TUNE_TIMER2			0x148
+#define QSERDES_COM_SAR					0x14c
+#define QSERDES_COM_SAR_CLK				0x150
+#define QSERDES_COM_SAR_CODE_OUT_STATUS			0x154
+#define QSERDES_COM_SAR_CODE_READY_STATUS		0x158
+#define QSERDES_COM_CMN_STATUS				0x15c
+#define QSERDES_COM_RESET_SM_STATUS			0x160
+#define QSERDES_COM_RESTRIM_CODE_STATUS			0x164
+#define QSERDES_COM_PLLCAL_CODE1_STATUS			0x168
+#define QSERDES_COM_PLLCAL_CODE2_STATUS			0x16c
 #define QSERDES_COM_BG_CTRL				0x170
 #define QSERDES_COM_CLK_SELECT				0x174
 #define QSERDES_COM_HSCLK_SEL				0x178
+#define QSERDES_COM_INTEGLOOP_BINCODE_STATUS		0x17c
+#define QSERDES_COM_PLL_ANALOG				0x180
 #define QSERDES_COM_CORECLK_DIV				0x184
+#define QSERDES_COM_SW_RESET				0x188
 #define QSERDES_COM_CORE_CLK_EN				0x18c
 #define QSERDES_COM_C_READY_STATUS			0x190
 #define QSERDES_COM_CMN_CONFIG				0x194
+#define QSERDES_COM_CMN_RATE_OVERRIDE			0x198
 #define QSERDES_COM_SVS_MODE_CLK_SEL			0x19c
 #define QSERDES_COM_DEBUG_BUS0				0x1a0
 #define QSERDES_COM_DEBUG_BUS1				0x1a4
 #define QSERDES_COM_DEBUG_BUS2				0x1a8
 #define QSERDES_COM_DEBUG_BUS3				0x1ac
 #define QSERDES_COM_DEBUG_BUS_SEL			0x1b0
+#define QSERDES_COM_CMN_MISC1				0x1b4
+#define QSERDES_COM_CMN_MISC2				0x1b8
 #define QSERDES_COM_CORECLK_DIV_MODE1			0x1bc
+#define QSERDES_COM_CORECLK_DIV_MODE2			0x1c0
+#define QSERDES_COM_CMN_RSVD5				0x1c0
 
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h
index 583098a88b65..d20694513eb4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h
@@ -7,31 +7,143 @@
 #define QCOM_PHY_QMP_QSERDES_TXRX_H_
 
 /* Only for QMP V2 PHY - TX registers */
-#define QSERDES_TX_EMP_POST1_LVL			0x018
+#define QSERDES_TX_BIST_MODE_LANENO			0x000
+#define QSERDES_TX_BIST_INVERT				0x004
+#define QSERDES_TX_CLKBUF_ENABLE			0x008
+#define QSERDES_TX_CMN_CONTROL_ONE			0x00c
+#define QSERDES_TX_CMN_CONTROL_TWO			0x010
+#define QSERDES_TX_CMN_CONTROL_THREE			0x014
+#define QSERDES_TX_TX_EMP_POST1_LVL			0x018
+#define QSERDES_TX_TX_POST2_EMPH			0x01c
+#define QSERDES_TX_TX_BOOST_LVL_UP_DN			0x020
+#define QSERDES_TX_HP_PD_ENABLES			0x024
+#define QSERDES_TX_TX_IDLE_LVL_LARGE_AMP		0x028
+#define QSERDES_TX_TX_DRV_LVL				0x02c
+#define QSERDES_TX_TX_DRV_LVL_OFFSET			0x030
+#define QSERDES_TX_RESET_TSYNC_EN			0x034
+#define QSERDES_TX_PRE_STALL_LDO_BOOST_EN		0x038
+#define QSERDES_TX_TX_BAND				0x03c
 #define QSERDES_TX_SLEW_CNTL				0x040
+#define QSERDES_TX_INTERFACE_SELECT			0x044
+#define QSERDES_TX_LPB_EN				0x048
+#define QSERDES_TX_RES_CODE_LANE_TX			0x04c
+#define QSERDES_TX_RES_CODE_LANE_RX			0x050
 #define QSERDES_TX_RES_CODE_LANE_OFFSET			0x054
+#define QSERDES_TX_PERL_LENGTH1				0x058
+#define QSERDES_TX_PERL_LENGTH2				0x05c
+#define QSERDES_TX_SERDES_BYP_EN_OUT			0x060
 #define QSERDES_TX_DEBUG_BUS_SEL			0x064
 #define QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN	0x068
+#define QSERDES_TX_TX_POL_INV				0x06c
+#define QSERDES_TX_PARRATE_REC_DETECT_IDLE_EN		0x070
+#define QSERDES_TX_BIST_PATTERN1			0x074
+#define QSERDES_TX_BIST_PATTERN2			0x078
+#define QSERDES_TX_BIST_PATTERN3			0x07c
+#define QSERDES_TX_BIST_PATTERN4			0x080
+#define QSERDES_TX_BIST_PATTERN5			0x084
+#define QSERDES_TX_BIST_PATTERN6			0x088
+#define QSERDES_TX_BIST_PATTERN7			0x08c
+#define QSERDES_TX_BIST_PATTERN8			0x090
 #define QSERDES_TX_LANE_MODE				0x094
+#define QSERDES_TX_IDAC_CAL_LANE_MODE			0x098
+#define QSERDES_TX_IDAC_CAL_LANE_MODE_CONFIGURATION	0x09c
+#define QSERDES_TX_ATB_SEL1				0x0a0
+#define QSERDES_TX_ATB_SEL2				0x0a4
+#define QSERDES_TX_RCV_DETECT_LVL			0x0a8
 #define QSERDES_TX_RCV_DETECT_LVL_2			0x0ac
+#define QSERDES_TX_PRBS_SEED1				0x0b0
+#define QSERDES_TX_PRBS_SEED2				0x0b4
+#define QSERDES_TX_PRBS_SEED3				0x0b8
+#define QSERDES_TX_PRBS_SEED4				0x0bc
+#define QSERDES_TX_RESET_GEN				0x0c0
+#define QSERDES_TX_RESET_GEN_MUXES			0x0c4
+#define QSERDES_TX_TRAN_DRVR_EMP_EN			0x0c8
+#define QSERDES_TX_TX_INTERFACE_MODE			0x0cc
+#define QSERDES_TX_PWM_CTRL				0x0d0
+#define QSERDES_TX_PWM_ENCODED_OR_DATA			0x0d4
+#define QSERDES_TX_PWM_GEAR_1_DIVIDER_BAND2		0x0d8
+#define QSERDES_TX_PWM_GEAR_2_DIVIDER_BAND2		0x0dc
+#define QSERDES_TX_PWM_GEAR_3_DIVIDER_BAND2		0x0e0
+#define QSERDES_TX_PWM_GEAR_4_DIVIDER_BAND2		0x0e4
+#define QSERDES_TX_PWM_GEAR_1_DIVIDER_BAND0_1		0x0e8
+#define QSERDES_TX_PWM_GEAR_2_DIVIDER_BAND0_1		0x0ec
+#define QSERDES_TX_PWM_GEAR_3_DIVIDER_BAND0_1		0x0f0
+#define QSERDES_TX_PWM_GEAR_4_DIVIDER_BAND0_1		0x0f4
+#define QSERDES_TX_VMODE_CTRL1				0x0f8
+#define QSERDES_TX_VMODE_CTRL2				0x0fc
+#define QSERDES_TX_TX_ALOG_INTF_OBSV_CNTL		0x100
+#define QSERDES_TX_BIST_STATUS				0x104
+#define QSERDES_TX_BIST_ERROR_COUNT1			0x108
+#define QSERDES_TX_BIST_ERROR_COUNT2			0x10c
+#define QSERDES_TX_TX_ALOG_INTF_OBSV			0x110
 
 /* Only for QMP V2 PHY - RX registers */
+#define QSERDES_RX_UCDR_FO_GAIN_HALF			0x000
+#define QSERDES_RX_UCDR_FO_GAIN_QUARTER			0x004
+#define QSERDES_RX_UCDR_FO_GAIN_EIGHTH			0x008
+#define QSERDES_RX_UCDR_FO_GAIN				0x00c
 #define QSERDES_RX_UCDR_SO_GAIN_HALF			0x010
+#define QSERDES_RX_UCDR_SO_GAIN_QUARTER			0x014
+#define QSERDES_RX_UCDR_SO_GAIN_EIGHTH			0x018
 #define QSERDES_RX_UCDR_SO_GAIN				0x01c
+#define QSERDES_RX_UCDR_SVS_FO_GAIN_HALF		0x020
+#define QSERDES_RX_UCDR_SVS_FO_GAIN_QUARTER		0x024
+#define QSERDES_RX_UCDR_SVS_FO_GAIN_EIGHTH		0x028
+#define QSERDES_RX_UCDR_SVS_FO_GAIN			0x02c
 #define QSERDES_RX_UCDR_SVS_SO_GAIN_HALF		0x030
 #define QSERDES_RX_UCDR_SVS_SO_GAIN_QUARTER		0x034
 #define QSERDES_RX_UCDR_SVS_SO_GAIN_EIGHTH		0x038
 #define QSERDES_RX_UCDR_SVS_SO_GAIN			0x03c
 #define QSERDES_RX_UCDR_FASTLOCK_FO_GAIN		0x040
+#define QSERDES_RX_UCDR_FD_GAIN				0x044
 #define QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE	0x048
+#define QSERDES_RX_UCDR_FO_TO_SO_DELAY			0x04c
+#define QSERDES_RX_UCDR_FASTLOCK_COUNT_LOW		0x050
+#define QSERDES_RX_UCDR_FASTLOCK_COUNT_HIGH		0x054
+#define QSERDES_RX_UCDR_MODULATE			0x058
+#define QSERDES_RX_UCDR_PI_CONTROLS			0x05c
+#define QSERDES_RX_RBIST_CONTROL			0x060
+#define QSERDES_RX_AUX_CONTROL				0x064
+#define QSERDES_RX_AUX_DATA_TCOARSE			0x068
+#define QSERDES_RX_AUX_DATA_TFINE_LSB			0x06c
+#define QSERDES_RX_AUX_DATA_TFINE_MSB			0x070
+#define QSERDES_RX_RCLK_AUXDATA_SEL			0x074
+#define QSERDES_RX_AC_JTAG_ENABLE			0x078
+#define QSERDES_RX_AC_JTAG_INITP			0x07c
+#define QSERDES_RX_AC_JTAG_INITN			0x080
+#define QSERDES_RX_AC_JTAG_LVL				0x084
+#define QSERDES_RX_AC_JTAG_MODE				0x088
+#define QSERDES_RX_AC_JTAG_RESET			0x08c
 #define QSERDES_RX_RX_TERM_BW				0x090
+#define QSERDES_RX_RX_RCVR_IQ_EN			0x094
+#define QSERDES_RX_RX_IDAC_I_DC_OFFSETS			0x098
+#define QSERDES_RX_RX_IDAC_IBAR_DC_OFFSETS		0x09c
+#define QSERDES_RX_RX_IDAC_Q_DC_OFFSETS			0x0a0
+#define QSERDES_RX_RX_IDAC_QBAR_DC_OFFSETS		0x0a4
+#define QSERDES_RX_RX_IDAC_A_DC_OFFSETS			0x0a8
+#define QSERDES_RX_RX_IDAC_ABAR_DC_OFFSETS		0x0ac
+#define QSERDES_RX_RX_IDAC_EN				0x0b0
+#define QSERDES_RX_RX_IDAC_ENABLES			0x0b4
+#define QSERDES_RX_RX_IDAC_SIGN				0x0b8
+#define QSERDES_RX_RX_HIGHZ_HIGHRATE			0x0bc
+#define QSERDES_RX_RX_TERM_AC_BYPASS_DC_COUPLE_OFFSET	0x0c0
 #define QSERDES_RX_RX_EQ_GAIN1_LSB			0x0c4
 #define QSERDES_RX_RX_EQ_GAIN1_MSB			0x0c8
 #define QSERDES_RX_RX_EQ_GAIN2_LSB			0x0cc
 #define QSERDES_RX_RX_EQ_GAIN2_MSB			0x0d0
+#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL1		0x0d4
 #define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2		0x0d8
 #define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3		0x0dc
 #define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4		0x0e0
+#define QSERDES_RX_RX_IDAC_CAL_CONFIGURATION		0x0e4
+#define QSERDES_RX_RX_IDAC_TSETTLE_LOW			0x0e8
+#define QSERDES_RX_RX_IDAC_TSETTLE_HIGH			0x0ec
+#define QSERDES_RX_RX_IDAC_ENDSAMP_LOW			0x0f0
+#define QSERDES_RX_RX_IDAC_ENDSAMP_HIGH			0x0f4
+#define QSERDES_RX_RX_IDAC_MIDPOINT_LOW			0x0f8
+#define QSERDES_RX_RX_IDAC_MIDPOINT_HIGH		0x0fc
+#define QSERDES_RX_RX_EQ_OFFSET_LSB			0x100
+#define QSERDES_RX_RX_EQ_OFFSET_MSB			0x104
 #define QSERDES_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x108
 #define QSERDES_RX_RX_OFFSET_ADAPTOR_CNTRL2		0x10c
 #define QSERDES_RX_SIGDET_ENABLES			0x110
@@ -39,6 +151,55 @@
 #define QSERDES_RX_SIGDET_LVL				0x118
 #define QSERDES_RX_SIGDET_DEGLITCH_CNTRL		0x11c
 #define QSERDES_RX_RX_BAND				0x120
+#define QSERDES_RX_CDR_FREEZE_UP_DN			0x124
+#define QSERDES_RX_CDR_RESET_OVERRIDE			0x128
 #define QSERDES_RX_RX_INTERFACE_MODE			0x12c
+#define QSERDES_RX_JITTER_GEN_MODE			0x130
+#define QSERDES_RX_BUJ_AMP				0x134
+#define QSERDES_RX_SJ_AMP1				0x138
+#define QSERDES_RX_SJ_AMP2				0x13c
+#define QSERDES_RX_SJ_PER1				0x140
+#define QSERDES_RX_SJ_PER2				0x144
+#define QSERDES_RX_BUJ_STEP_FREQ1			0x148
+#define QSERDES_RX_BUJ_STEP_FREQ2			0x14c
+#define QSERDES_RX_PPM_OFFSET1				0x150
+#define QSERDES_RX_PPM_OFFSET2				0x154
+#define QSERDES_RX_SIGN_PPM_PERIOD1			0x158
+#define QSERDES_RX_SIGN_PPM_PERIOD2			0x15c
+#define QSERDES_RX_SSC_CTRL				0x160
+#define QSERDES_RX_SSC_COUNT1				0x164
+#define QSERDES_RX_SSC_COUNT2				0x168
+#define QSERDES_RX_RX_ALOG_INTF_OBSV_CNTL		0x16c
+#define QSERDES_RX_RX_PWM_ENABLE_AND_DATA		0x170
+#define QSERDES_RX_RX_PWM_GEAR1_TIMEOUT_COUNT		0x174
+#define QSERDES_RX_RX_PWM_GEAR2_TIMEOUT_COUNT		0x178
+#define QSERDES_RX_RX_PWM_GEAR3_TIMEOUT_COUNT		0x17c
+#define QSERDES_RX_RX_PWM_GEAR4_TIMEOUT_COUNT		0x180
+#define QSERDES_RX_PI_CTRL1				0x184
+#define QSERDES_RX_PI_CTRL2				0x188
+#define QSERDES_RX_PI_QUAD				0x18c
+#define QSERDES_RX_IDATA1				0x190
+#define QSERDES_RX_IDATA2				0x194
+#define QSERDES_RX_AUX_DATA1				0x198
+#define QSERDES_RX_AUX_DATA2				0x19c
+#define QSERDES_RX_AC_JTAG_OUTP				0x1a0
+#define QSERDES_RX_AC_JTAG_OUTN				0x1a4
+#define QSERDES_RX_RX_SIGDET				0x1a8
+#define QSERDES_RX_RX_VDCOFF				0x1ac
+#define QSERDES_RX_IDAC_CAL_ON				0x1b0
+#define QSERDES_RX_IDAC_STATUS_I			0x1b4
+#define QSERDES_RX_IDAC_STATUS_IBAR			0x1b8
+#define QSERDES_RX_IDAC_STATUS_Q			0x1bc
+#define QSERDES_RX_IDAC_STATUS_QBAR			0x1c0
+#define QSERDES_RX_IDAC_STATUS_A			0x1c4
+#define QSERDES_RX_IDAC_STATUS_ABAR			0x1c8
+#define QSERDES_RX_CALST_STATUS_I			0x1cc
+#define QSERDES_RX_CALST_STATUS_Q			0x1d0
+#define QSERDES_RX_CALST_STATUS_A			0x1d4
+#define QSERDES_RX_RX_ALOG_INTF_OBSV			0x1d8
+#define QSERDES_RX_READ_EQCODE				0x1dc
+#define QSERDES_RX_READ_OFFSETCODE			0x1e0
+#define QSERDES_RX_IA_ERROR_COUNTER_LOW			0x1e4
+#define QSERDES_RX_IA_ERROR_COUNTER_HIGH		0x1e8
 
 #endif
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
