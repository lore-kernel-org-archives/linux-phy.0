Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1B20CCA47F
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgxXSNGiHF3rPVUti9EX/EW5TBSGYgfFUAvCYtGo5Tc=; b=HRq2eWWNCK7Rnx
	BJrnIqsR/2o7DM/prfJc8wDARBrLp1UEGwXUC5cGkrLhBn1OrhV6yUutX5eGimNCzDR+LBNITQCTc
	DcrTtNBpZCJzDkB7zqaQBaRTk3PpUd1DU/fT08TcbxcHBLvDIQai0yR8Etj+g+PasK6I2kHklE0vW
	Wy1R+6WikPkV8Iov7b7t2ffZoWePEzxmvKOOxJH52J1om2jw881RgYw7kzG0F0INk6jHQUzJQD3G1
	KrW6Cw/r5Gr/RBqZSUE6+cY07uhCazZWxfvg7K8XBlYNNZvAUeb+RwXEUwcHN17pK2XaBtJE6/SLz
	tg88D6JHwUPP6ZBXutmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8g42-00HFfd-8v; Tue, 05 Jul 2022 10:45:54 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5p-00GqrZ-TC
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:43:46 +0000
Received: by mail-lf1-x136.google.com with SMTP id j21so19665510lfe.1
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KlLS/dbxJbXCtQ6+hzKBbqkhX/3E2JpAmEjXGvk72Ak=;
        b=qb9jzyxtM2EeTcm8LYuq17Pm1N6iEsi8SvWHxVkVvPcM1Q3Rmznyu2DXxA9HWv0FlX
         NjpZmg7qr9Mr6s6jrOP8iUdtPhQ7204AxICtmwnR1Lnn7BiBt7GDcdNXgBJoVPSgbdet
         zH66dnKXendmuyk5mlDLKk+W7TsB+rRV/KMbSRKgAQbjuXLLCip0O5scWcwz1ivHsp1W
         nxvMXkZeKIrp+j/idUeEeuOZyd/GLc41+V0EdcygZ5Uqr9tSTSKwQTPCMtJ7XYP4ZKE0
         p3Uo6xLFJVbtdDIf8JOSWvtmn+4Wz08Cv50hz2s1EQDZ7mEaGxnRTrSKlQs/tvUrnO2t
         nhxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KlLS/dbxJbXCtQ6+hzKBbqkhX/3E2JpAmEjXGvk72Ak=;
        b=gyV1iExj5a7TXayMTT6oTFu3KV4EZcS7NnfshAh9XboP9rz/iks+JKjd0cTUQfG2Sj
         nhToxJQlQV13YaZO6Qte2TQwaFjqqA5E1H0M+BOzUKvrxE9JGPqz3yEW3J1ye0BMSCUA
         W8/kiI9+FZ6nb2DyXTlgCcGx5Ypy04640LxwiF92190qC27UPbWJd1v7Tbgr3HPK/zqt
         XhT3aUq3lVRNYNYcKbBFmHaXnBlhuzwoPcwv1skg36Qcr5qJF5bqTmFy9RIfBsQFoVgu
         cTJgOEbI63ezPDpNfwoL9OkP2Fbq96Vr4gqy0ougweNjLq6sttDf5Ne3Q5ZmPWMFw5hY
         RYYA==
X-Gm-Message-State: AJIora9F7Qbvb4JiPnacZQcKUHkw7cQsx8uDHrl3kBYVojY4F191l62g
	pLnVfsSf2S032470jF/CkggS0w==
X-Google-Smtp-Source: AGRyM1veqhN7ByGL6SEokq+KeWtq6OO9Rib+skM77sgyorfzySRkza8jeGN7ZR6F9OVfHIZXCXkzKA==
X-Received: by 2002:a05:6512:3d23:b0:47f:6b6f:f5ba with SMTP id d35-20020a0565123d2300b0047f6b6ff5bamr22315073lfv.160.1657014221363;
        Tue, 05 Jul 2022 02:43:41 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 24/28] phy: qcom-qmp: qserdes-com-v5: add missing registers
Date: Tue,  5 Jul 2022 12:43:16 +0300
Message-Id: <20220705094320.1313312-25-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024342_006049_4BA03F21 
X-CRM114-Status: UNSURE (   8.05  )
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
- msm-5.4's qcom,usb3-5nm-qmp-uni.h
- msm-5.4's qcom,usb3-5nm-qmp-combo.h

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../qualcomm/phy-qcom-qmp-qserdes-com-v5.h    |  59 +++++++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v5.h   | 155 +++++++++++++++++-
 2 files changed, 210 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v5.h
index 8d2f9f012fed..c8afdf7bc1ee 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v5.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v5.h
@@ -7,24 +7,47 @@
 #define QCOM_PHY_QMP_QSERDES_COM_V5_H_
 
 /* Only for QMP V5 PHY - QSERDES COM registers */
+#define QSERDES_V5_COM_ATB_SEL1				0x000
+#define QSERDES_V5_COM_ATB_SEL2				0x004
+#define QSERDES_V5_COM_FREQ_UPDATE			0x008
+#define QSERDES_V5_COM_BG_TIMER				0x00c
 #define QSERDES_V5_COM_SSC_EN_CENTER			0x010
+#define QSERDES_V5_COM_SSC_ADJ_PER1			0x014
+#define QSERDES_V5_COM_SSC_ADJ_PER2			0x018
 #define QSERDES_V5_COM_SSC_PER1				0x01c
 #define QSERDES_V5_COM_SSC_PER2				0x020
 #define QSERDES_V5_COM_SSC_STEP_SIZE1_MODE0		0x024
 #define QSERDES_V5_COM_SSC_STEP_SIZE2_MODE0		0x028
+#define QSERDES_V5_COM_SSC_STEP_SIZE3_MODE0		0x02c
 #define QSERDES_V5_COM_SSC_STEP_SIZE1_MODE1		0x030
 #define QSERDES_V5_COM_SSC_STEP_SIZE2_MODE1		0x034
+#define QSERDES_V5_COM_SSC_STEP_SIZE3_MODE1		0x038
+#define QSERDES_V5_COM_POST_DIV				0x03c
+#define QSERDES_V5_COM_POST_DIV_MUX			0x040
 #define QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN		0x044
 #define QSERDES_V5_COM_CLK_ENABLE1			0x048
+#define QSERDES_V5_COM_SYS_CLK_CTRL			0x04c
 #define QSERDES_V5_COM_SYSCLK_BUF_ENABLE		0x050
+#define QSERDES_V5_COM_PLL_EN				0x054
 #define QSERDES_V5_COM_PLL_IVCO				0x058
+#define QSERDES_V5_COM_CMN_IETRIM			0x05c
+#define QSERDES_V5_COM_CMN_IPTRIM			0x060
+#define QSERDES_V5_COM_EP_CLOCK_DETECT_CTRL		0x064
+#define QSERDES_V5_COM_SYSCLK_DET_COMP_STATUS		0x068
+#define QSERDES_V5_COM_CLK_EP_DIV_MODE0			0x06c
+#define QSERDES_V5_COM_CLK_EP_DIV_MODE1			0x070
 #define QSERDES_V5_COM_CP_CTRL_MODE0			0x074
 #define QSERDES_V5_COM_CP_CTRL_MODE1			0x078
 #define QSERDES_V5_COM_PLL_RCTRL_MODE0			0x07c
 #define QSERDES_V5_COM_PLL_RCTRL_MODE1			0x080
 #define QSERDES_V5_COM_PLL_CCTRL_MODE0			0x084
 #define QSERDES_V5_COM_PLL_CCTRL_MODE1			0x088
+#define QSERDES_V5_COM_PLL_CNTRL			0x08c
+#define QSERDES_V5_COM_BIAS_EN_CTRL_BY_PSM		0x090
 #define QSERDES_V5_COM_SYSCLK_EN_SEL			0x094
+#define QSERDES_V5_COM_CML_SYSCLK_SEL			0x098
+#define QSERDES_V5_COM_RESETSM_CNTRL			0x09c
+#define QSERDES_V5_COM_RESETSM_CNTRL2			0x0a0
 #define QSERDES_V5_COM_LOCK_CMP_EN			0x0a4
 #define QSERDES_V5_COM_LOCK_CMP_CFG			0x0a8
 #define QSERDES_V5_COM_LOCK_CMP1_MODE0			0x0ac
@@ -32,26 +55,61 @@
 #define QSERDES_V5_COM_LOCK_CMP1_MODE1			0x0b4
 #define QSERDES_V5_COM_LOCK_CMP2_MODE1			0x0b8
 #define QSERDES_V5_COM_DEC_START_MODE0			0x0bc
+#define QSERDES_V5_COM_DEC_START_MSB_MODE0		0x0c0
 #define QSERDES_V5_COM_DEC_START_MODE1			0x0c4
+#define QSERDES_V5_COM_DEC_START_MSB_MODE1		0x0c8
 #define QSERDES_V5_COM_DIV_FRAC_START1_MODE0		0x0cc
 #define QSERDES_V5_COM_DIV_FRAC_START2_MODE0		0x0d0
 #define QSERDES_V5_COM_DIV_FRAC_START3_MODE0		0x0d4
 #define QSERDES_V5_COM_DIV_FRAC_START1_MODE1		0x0d8
 #define QSERDES_V5_COM_DIV_FRAC_START2_MODE1		0x0dc
 #define QSERDES_V5_COM_DIV_FRAC_START3_MODE1		0x0e0
+#define QSERDES_V5_COM_INTEGLOOP_INITVAL		0x0e4
+#define QSERDES_V5_COM_INTEGLOOP_EN			0x0e8
+#define QSERDES_V5_COM_INTEGLOOP_GAIN0_MODE0		0x0ec
+#define QSERDES_V5_COM_INTEGLOOP_GAIN1_MODE0		0x0f0
+#define QSERDES_V5_COM_INTEGLOOP_GAIN0_MODE1		0x0f4
+#define QSERDES_V5_COM_INTEGLOOP_GAIN1_MODE1		0x0f8
+#define QSERDES_V5_COM_INTEGLOOP_P_PATH_GAIN0		0x0fc
+#define QSERDES_V5_COM_INTEGLOOP_P_PATH_GAIN1		0x100
+#define QSERDES_V5_COM_VCOCAL_DEADMAN_CTRL		0x104
+#define QSERDES_V5_COM_VCO_TUNE_CTRL			0x108
 #define QSERDES_V5_COM_VCO_TUNE_MAP			0x10c
 #define QSERDES_V5_COM_VCO_TUNE1_MODE0			0x110
 #define QSERDES_V5_COM_VCO_TUNE2_MODE0			0x114
 #define QSERDES_V5_COM_VCO_TUNE1_MODE1			0x118
 #define QSERDES_V5_COM_VCO_TUNE2_MODE1			0x11c
+#define QSERDES_V5_COM_VCO_TUNE_INITVAL1		0x120
 #define QSERDES_V5_COM_VCO_TUNE_INITVAL2		0x124
+#define QSERDES_V5_COM_VCO_TUNE_MINVAL1			0x128
+#define QSERDES_V5_COM_VCO_TUNE_MINVAL2			0x12c
+#define QSERDES_V5_COM_VCO_TUNE_MAXVAL1			0x130
+#define QSERDES_V5_COM_VCO_TUNE_MAXVAL2			0x134
+#define QSERDES_V5_COM_VCO_TUNE_TIMER1			0x138
+#define QSERDES_V5_COM_VCO_TUNE_TIMER2			0x13c
+#define QSERDES_V5_COM_CMN_STATUS			0x140
+#define QSERDES_V5_COM_RESET_SM_STATUS			0x144
+#define QSERDES_V5_COM_RESTRIM_CODE_STATUS		0x148
+#define QSERDES_V5_COM_PLLCAL_CODE1_STATUS		0x14c
+#define QSERDES_V5_COM_PLLCAL_CODE2_STATUS		0x150
 #define QSERDES_V5_COM_CLK_SELECT			0x154
 #define QSERDES_V5_COM_HSCLK_SEL			0x158
 #define QSERDES_V5_COM_HSCLK_HS_SWITCH_SEL		0x15c
+#define QSERDES_V5_COM_INTEGLOOP_BINCODE_STATUS		0x160
+#define QSERDES_V5_COM_PLL_ANALOG			0x164
 #define QSERDES_V5_COM_CORECLK_DIV_MODE0		0x168
 #define QSERDES_V5_COM_CORECLK_DIV_MODE1		0x16c
+#define QSERDES_V5_COM_SW_RESET				0x170
 #define QSERDES_V5_COM_CORE_CLK_EN			0x174
+#define QSERDES_V5_COM_C_READY_STATUS			0x178
 #define QSERDES_V5_COM_CMN_CONFIG			0x17c
+#define QSERDES_V5_COM_CMN_RATE_OVERRIDE		0x180
+#define QSERDES_V5_COM_SVS_MODE_CLK_SEL			0x184
+#define QSERDES_V5_COM_DEBUG_BUS0			0x188
+#define QSERDES_V5_COM_DEBUG_BUS1			0x18c
+#define QSERDES_V5_COM_DEBUG_BUS2			0x190
+#define QSERDES_V5_COM_DEBUG_BUS3			0x194
+#define QSERDES_V5_COM_DEBUG_BUS_SEL			0x198
 #define QSERDES_V5_COM_CMN_MISC1			0x19c
 #define QSERDES_V5_COM_CMN_MODE				0x1a0
 #define QSERDES_V5_COM_CMN_MODE_CONTD			0x1a4
@@ -61,5 +119,6 @@
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE1	0x1b4
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE1	0x1b8
 #define QSERDES_V5_COM_BIN_VCOCAL_HSCLK_SEL		0x1bc
+#define QSERDES_V5_COM_RESERVED_1			0x1c0
 
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5.h
index 6887c0cb3155..fe8f3e330d09 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5.h
@@ -8,28 +8,111 @@
 #define QCOM_PHY_QMP_QSERDES_TXRX_V5_H_
 
 /* Only for QMP V5 PHY - TX registers */
+#define QSERDES_V5_TX_BIST_MODE_LANENO			0x000
+#define QSERDES_V5_TX_BIST_INVERT			0x004
+#define QSERDES_V5_TX_CLKBUF_ENABLE			0x008
+#define QSERDES_V5_TX_TX_EMP_POST1_LVL			0x00c
+#define QSERDES_V5_TX_TX_IDLE_LVL_LARGE_AMP		0x010
+#define QSERDES_V5_TX_TX_DRV_LVL			0x014
+#define QSERDES_V5_TX_TX_DRV_LVL_OFFSET			0x018
+#define QSERDES_V5_TX_RESET_TSYNC_EN			0x01c
+#define QSERDES_V5_TX_PRE_STALL_LDO_BOOST_EN		0x020
+#define QSERDES_V5_TX_TX_BAND				0x024
+#define QSERDES_V5_TX_SLEW_CNTL				0x028
+#define QSERDES_V5_TX_INTERFACE_SELECT			0x02c
+#define QSERDES_V5_TX_LPB_EN				0x030
 #define QSERDES_V5_TX_RES_CODE_LANE_TX			0x034
 #define QSERDES_V5_TX_RES_CODE_LANE_RX			0x038
 #define QSERDES_V5_TX_RES_CODE_LANE_OFFSET_TX		0x03c
 #define QSERDES_V5_TX_RES_CODE_LANE_OFFSET_RX		0x040
+#define QSERDES_V5_TX_PERL_LENGTH1			0x044
+#define QSERDES_V5_TX_PERL_LENGTH2			0x048
+#define QSERDES_V5_TX_SERDES_BYP_EN_OUT			0x04c
+#define QSERDES_V5_TX_DEBUG_BUS_SEL			0x050
+#define QSERDES_V5_TX_TRANSCEIVER_BIAS_EN		0x054
+#define QSERDES_V5_TX_HIGHZ_DRVR_EN			0x058
+#define QSERDES_V5_TX_TX_POL_INV			0x05c
+#define QSERDES_V5_TX_PARRATE_REC_DETECT_IDLE_EN	0x060
+#define QSERDES_V5_TX_BIST_PATTERN1			0x064
+#define QSERDES_V5_TX_BIST_PATTERN2			0x068
+#define QSERDES_V5_TX_BIST_PATTERN3			0x06c
+#define QSERDES_V5_TX_BIST_PATTERN4			0x070
+#define QSERDES_V5_TX_BIST_PATTERN5			0x074
+#define QSERDES_V5_TX_BIST_PATTERN6			0x078
+#define QSERDES_V5_TX_BIST_PATTERN7			0x07c
+#define QSERDES_V5_TX_BIST_PATTERN8			0x080
 #define QSERDES_V5_TX_LANE_MODE_1			0x084
 #define QSERDES_V5_TX_LANE_MODE_2			0x088
 #define QSERDES_V5_TX_LANE_MODE_3			0x08c
 #define QSERDES_V5_TX_LANE_MODE_4			0x090
 #define QSERDES_V5_TX_LANE_MODE_5			0x094
+#define QSERDES_V5_TX_ATB_SEL1				0x098
+#define QSERDES_V5_TX_ATB_SEL2				0x09c
+#define QSERDES_V5_TX_RCV_DETECT_LVL			0x0a0
 #define QSERDES_V5_TX_RCV_DETECT_LVL_2			0x0a4
+#define QSERDES_V5_TX_PRBS_SEED1			0x0a8
+#define QSERDES_V5_TX_PRBS_SEED2			0x0ac
+#define QSERDES_V5_TX_PRBS_SEED3			0x0b0
+#define QSERDES_V5_TX_PRBS_SEED4			0x0b4
+#define QSERDES_V5_TX_RESET_GEN				0x0b8
+#define QSERDES_V5_TX_RESET_GEN_MUXES			0x0bc
 #define QSERDES_V5_TX_TRAN_DRVR_EMP_EN			0x0c0
+#define QSERDES_V5_TX_TX_INTERFACE_MODE			0x0c4
+#define QSERDES_V5_TX_VMODE_CTRL1			0x0c8
+#define QSERDES_V5_TX_ALOG_OBSV_BUS_CTRL_1		0x0cc
+#define QSERDES_V5_TX_BIST_STATUS			0x0d0
+#define QSERDES_V5_TX_BIST_ERROR_COUNT1			0x0d4
+#define QSERDES_V5_TX_BIST_ERROR_COUNT2			0x0d8
+#define QSERDES_V5_TX_ALOG_OBSV_BUS_STATUS_1		0x0dc
+#define QSERDES_V5_TX_LANE_DIG_CONFIG			0x0e0
 #define QSERDES_V5_TX_PI_QEC_CTRL			0x0e4
-#define QSERDES_V5_TX_PWM_GEAR_1_DIVIDER_BAND0_1	0x178
-#define QSERDES_V5_TX_PWM_GEAR_2_DIVIDER_BAND0_1	0x17c
-#define QSERDES_V5_TX_PWM_GEAR_3_DIVIDER_BAND0_1	0x180
-#define QSERDES_V5_TX_PWM_GEAR_4_DIVIDER_BAND0_1	0x184
+#define QSERDES_V5_TX_PRE_EMPH				0x0e8
+#define QSERDES_V5_TX_SW_RESET				0x0ec
+#define QSERDES_V5_TX_DCC_OFFSET			0x0f0
+#define QSERDES_V5_TX_DCC_CMUX_POSTCAL_OFFSET		0x0f4
+#define QSERDES_V5_TX_DCC_CMUX_CAL_CTRL1		0x0f8
+#define QSERDES_V5_TX_DCC_CMUX_CAL_CTRL2		0x0fc
+#define QSERDES_V5_TX_DIG_BKUP_CTRL			0x100
+#define QSERDES_V5_TX_DEBUG_BUS0			0x104
+#define QSERDES_V5_TX_DEBUG_BUS1			0x108
+#define QSERDES_V5_TX_DEBUG_BUS2			0x10c
+#define QSERDES_V5_TX_DEBUG_BUS3			0x110
+#define QSERDES_V5_TX_READ_EQCODE			0x114
+#define QSERDES_V5_TX_READ_OFFSETCODE			0x118
+#define QSERDES_V5_TX_IA_ERROR_COUNTER_LOW		0x11c
+#define QSERDES_V5_TX_IA_ERROR_COUNTER_HIGH		0x120
+#define QSERDES_V5_TX_VGA_READ_CODE			0x124
+#define QSERDES_V5_TX_VTH_READ_CODE			0x128
+#define QSERDES_V5_TX_DFE_TAP1_READ_CODE		0x12c
+#define QSERDES_V5_TX_DFE_TAP2_READ_CODE		0x130
+#define QSERDES_V5_TX_IDAC_STATUS_I			0x134
+#define QSERDES_V5_TX_IDAC_STATUS_IBAR			0x138
+#define QSERDES_V5_TX_IDAC_STATUS_Q			0x13c
+#define QSERDES_V5_TX_IDAC_STATUS_QBAR			0x140
+#define QSERDES_V5_TX_IDAC_STATUS_A			0x144
+#define QSERDES_V5_TX_IDAC_STATUS_ABAR			0x148
+#define QSERDES_V5_TX_IDAC_STATUS_SM_ON			0x14c
+#define QSERDES_V5_TX_IDAC_STATUS_CAL_DONE		0x150
+#define QSERDES_V5_TX_IDAC_STATUS_SIGNERROR		0x154
+#define QSERDES_V5_TX_DCC_CAL_STATUS			0x158
+#define QSERDES_V5_TX_DCC_READ_CODE_STATUS		0x15c
 
 /* Only for QMP V5 PHY - RX registers */
+#define QSERDES_V5_RX_UCDR_FO_GAIN_HALF			0x000
+#define QSERDES_V5_RX_UCDR_FO_GAIN_QUARTER		0x004
 #define QSERDES_V5_RX_UCDR_FO_GAIN			0x008
+#define QSERDES_V5_RX_UCDR_SO_GAIN_HALF			0x00c
+#define QSERDES_V5_RX_UCDR_SO_GAIN_QUARTER		0x010
 #define QSERDES_V5_RX_UCDR_SO_GAIN			0x014
+#define QSERDES_V5_RX_UCDR_SVS_FO_GAIN_HALF		0x018
+#define QSERDES_V5_RX_UCDR_SVS_FO_GAIN_QUARTER		0x01c
+#define QSERDES_V5_RX_UCDR_SVS_FO_GAIN			0x020
+#define QSERDES_V5_RX_UCDR_SVS_SO_GAIN_HALF		0x024
+#define QSERDES_V5_RX_UCDR_SVS_SO_GAIN_QUARTER		0x028
+#define QSERDES_V5_RX_UCDR_SVS_SO_GAIN			0x02c
 #define QSERDES_V5_RX_UCDR_FASTLOCK_FO_GAIN		0x030
 #define QSERDES_V5_RX_UCDR_SO_SATURATION_AND_ENABLE	0x034
+#define QSERDES_V5_RX_UCDR_FO_TO_SO_DELAY		0x038
 #define QSERDES_V5_RX_UCDR_FASTLOCK_COUNT_LOW		0x03c
 #define QSERDES_V5_RX_UCDR_FASTLOCK_COUNT_HIGH		0x040
 #define QSERDES_V5_RX_UCDR_PI_CONTROLS			0x044
@@ -38,15 +121,41 @@
 #define QSERDES_V5_RX_UCDR_SB2_THRESH2			0x050
 #define QSERDES_V5_RX_UCDR_SB2_GAIN1			0x054
 #define QSERDES_V5_RX_UCDR_SB2_GAIN2			0x058
+#define QSERDES_V5_RX_AUX_CONTROL			0x05c
 #define QSERDES_V5_RX_AUX_DATA_TCOARSE_TFINE		0x060
 #define QSERDES_V5_RX_RCLK_AUXDATA_SEL			0x064
 #define QSERDES_V5_RX_AC_JTAG_ENABLE			0x068
+#define QSERDES_V5_RX_AC_JTAG_INITP			0x06c
+#define QSERDES_V5_RX_AC_JTAG_INITN			0x070
+#define QSERDES_V5_RX_AC_JTAG_LVL			0x074
 #define QSERDES_V5_RX_AC_JTAG_MODE			0x078
+#define QSERDES_V5_RX_AC_JTAG_RESET			0x07c
 #define QSERDES_V5_RX_RX_TERM_BW			0x080
+#define QSERDES_V5_RX_RX_RCVR_IQ_EN			0x084
+#define QSERDES_V5_RX_RX_IDAC_I_DC_OFFSETS		0x088
+#define QSERDES_V5_RX_RX_IDAC_IBAR_DC_OFFSETS		0x08c
+#define QSERDES_V5_RX_RX_IDAC_Q_DC_OFFSETS		0x090
+#define QSERDES_V5_RX_RX_IDAC_QBAR_DC_OFFSETS		0x094
+#define QSERDES_V5_RX_RX_IDAC_A_DC_OFFSETS		0x098
+#define QSERDES_V5_RX_RX_IDAC_ABAR_DC_OFFSETS		0x09c
+#define QSERDES_V5_RX_RX_IDAC_EN			0x0a0
+#define QSERDES_V5_RX_RX_IDAC_ENABLES			0x0a4
+#define QSERDES_V5_RX_RX_IDAC_SIGN			0x0a8
+#define QSERDES_V5_RX_RX_HIGHZ_HIGHRATE			0x0ac
+#define QSERDES_V5_RX_RX_TERM_AC_BYPASS_DC_COUPLE_OFFSET 0x0b0
+#define QSERDES_V5_RX_DFE_1				0x0b4
+#define QSERDES_V5_RX_DFE_2				0x0b8
+#define QSERDES_V5_RX_DFE_3				0x0bc
+#define QSERDES_V5_RX_DFE_4				0x0c0
+#define QSERDES_V5_RX_TX_ADAPT_PRE_THRESH1		0x0c4
+#define QSERDES_V5_RX_TX_ADAPT_PRE_THRESH2		0x0c8
 #define QSERDES_V5_RX_TX_ADAPT_POST_THRESH		0x0cc
+#define QSERDES_V5_RX_TX_ADAPT_MAIN_THRESH		0x0d0
 #define QSERDES_V5_RX_VGA_CAL_CNTRL1			0x0d4
 #define QSERDES_V5_RX_VGA_CAL_CNTRL2			0x0d8
 #define QSERDES_V5_RX_GM_CAL				0x0dc
+#define QSERDES_V5_RX_RX_VGA_GAIN2_LSB			0x0e0
+#define QSERDES_V5_RX_RX_VGA_GAIN2_MSB			0x0e4
 #define QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL1		0x0e8
 #define QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL2		0x0ec
 #define QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL3		0x0f0
@@ -54,6 +163,9 @@
 #define QSERDES_V5_RX_RX_IDAC_TSETTLE_LOW		0x0f8
 #define QSERDES_V5_RX_RX_IDAC_TSETTLE_HIGH		0x0fc
 #define QSERDES_V5_RX_RX_IDAC_MEASURE_TIME		0x100
+#define QSERDES_V5_RX_RX_IDAC_ACCUMULATOR		0x104
+#define QSERDES_V5_RX_RX_EQ_OFFSET_LSB			0x108
+#define QSERDES_V5_RX_RX_EQ_OFFSET_MSB			0x10c
 #define QSERDES_V5_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1	0x110
 #define QSERDES_V5_RX_RX_OFFSET_ADAPTOR_CNTRL2		0x114
 #define QSERDES_V5_RX_SIGDET_ENABLES			0x118
@@ -61,6 +173,18 @@
 #define QSERDES_V5_RX_SIGDET_LVL			0x120
 #define QSERDES_V5_RX_SIGDET_DEGLITCH_CNTRL		0x124
 #define QSERDES_V5_RX_RX_BAND				0x128
+#define QSERDES_V5_RX_CDR_FREEZE_UP_DN			0x12c
+#define QSERDES_V5_RX_CDR_RESET_OVERRIDE		0x130
+#define QSERDES_V5_RX_RX_INTERFACE_MODE			0x134
+#define QSERDES_V5_RX_JITTER_GEN_MODE			0x138
+#define QSERDES_V5_RX_SJ_AMP1				0x13c
+#define QSERDES_V5_RX_SJ_AMP2				0x140
+#define QSERDES_V5_RX_SJ_PER1				0x144
+#define QSERDES_V5_RX_SJ_PER2				0x148
+#define QSERDES_V5_RX_PPM_OFFSET1			0x14c
+#define QSERDES_V5_RX_PPM_OFFSET2			0x150
+#define QSERDES_V5_RX_SIGN_PPM_PERIOD1			0x154
+#define QSERDES_V5_RX_SIGN_PPM_PERIOD2			0x158
 #define QSERDES_V5_RX_RX_MODE_00_LOW			0x15c
 #define QSERDES_V5_RX_RX_MODE_00_HIGH			0x160
 #define QSERDES_V5_RX_RX_MODE_00_HIGH2			0x164
@@ -76,9 +200,32 @@
 #define QSERDES_V5_RX_RX_MODE_10_HIGH2			0x18c
 #define QSERDES_V5_RX_RX_MODE_10_HIGH3			0x190
 #define QSERDES_V5_RX_RX_MODE_10_HIGH4			0x194
+#define QSERDES_V5_RX_PHPRE_CTRL			0x198
+#define QSERDES_V5_RX_PHPRE_INITVAL			0x19c
 #define QSERDES_V5_RX_DFE_EN_TIMER			0x1a0
 #define QSERDES_V5_RX_DFE_CTLE_POST_CAL_OFFSET		0x1a4
 #define QSERDES_V5_RX_DCC_CTRL1				0x1a8
+#define QSERDES_V5_RX_DCC_CTRL2				0x1ac
 #define QSERDES_V5_RX_VTH_CODE				0x1b0
+#define QSERDES_V5_RX_VTH_MIN_THRESH			0x1b4
+#define QSERDES_V5_RX_VTH_MAX_THRESH			0x1b8
+#define QSERDES_V5_RX_ALOG_OBSV_BUS_CTRL_1		0x1bc
+#define QSERDES_V5_RX_PI_CTRL1				0x1c0
+#define QSERDES_V5_RX_PI_CTRL2				0x1c4
+#define QSERDES_V5_RX_PI_QUAD				0x1c8
+#define QSERDES_V5_RX_IDATA1				0x1cc
+#define QSERDES_V5_RX_IDATA2				0x1d0
+#define QSERDES_V5_RX_AUX_DATA1				0x1d4
+#define QSERDES_V5_RX_AUX_DATA2				0x1d8
+#define QSERDES_V5_RX_AC_JTAG_OUTP			0x1dc
+#define QSERDES_V5_RX_AC_JTAG_OUTN			0x1e0
+#define QSERDES_V5_RX_RX_SIGDET				0x1e4
+#define QSERDES_V5_RX_ALOG_OBSV_BUS_STATUS_1		0x1e8
+
+/* Only for QMP V5 UFS ? */
+#define QSERDES_V5_TX_PWM_GEAR_1_DIVIDER_BAND0_1	0x178
+#define QSERDES_V5_TX_PWM_GEAR_2_DIVIDER_BAND0_1	0x17c
+#define QSERDES_V5_TX_PWM_GEAR_3_DIVIDER_BAND0_1	0x180
+#define QSERDES_V5_TX_PWM_GEAR_4_DIVIDER_BAND0_1	0x184
 
 #endif
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
