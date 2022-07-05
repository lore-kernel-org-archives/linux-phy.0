Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1162DC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 13:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTtknY+tWlx42QFI55dE5MZAGzPSWABpR1Xzw2T0a40=; b=Aj/3wTGEc8+EID
	DARoB35XVBL1+FDeUOIcmDewruxKr7M5x78lFciDe9Dvk4lIqFHXZE3AR8JTV7655M052r2ax/nQ5
	MNvk6s0fkLnw2JbhlXGlx3N7n1FZF4+T+JUHNfkQ0WglftknDyFGZy+ZbkrBmXnCEmPvDB41RVDG/
	ha4iXX3UVPf9DFuNIGtHNAb2isl8Y5myoTQA68+au4RsiRRZQ0XG6+7DtcQQWjbxxVjzJ0dJDGLNQ
	1JuX4m9dXsfm0rGLxzeY3pQJJlTxOYEMrWE0ZyHm3oWaJLPewEdqpdqYIEPK95BnuYWfzg/AXj0kC
	vQDd13C5E96G94f1j2mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8imQ-000Z70-BK; Tue, 05 Jul 2022 13:39:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fOW-00H219-CG
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:03:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GIdFXRLuyHwl2KtnH8DDGKGfr4AeRryJyRCeyJpHfz4=; b=E1OKpPkduHSs1bMTLcbKOoDJt7
	Oi8vC/iDqaurRMvLlLmbH6FaRFCuWXAV/bA65v4FosXbO0IK1WHQfpKxW+dZwd3o2HbDKB0bf2WBE
	FkZYenTe4ki3gvw52dRbbNM2t6mwHvKt1IB62qPQI+CLYXoBWe+UGyLwqkOXxATpCCsuFUfvC5/57
	YLtFROv3LMGOcOlZXgKX6p3AhuwFIEDaq8bWDAjv7DJuS9+3z+I3gBy0Z24zj4WRx6aQTOqb2VVB5
	9nQ24rluaCY+szRMsBJBF+2189mTHor3ipJb3rvDsg5rBaaTUeQ+KiY3n16iaHMj8fsbIWvdZhbGn
	fqLh6bHA==;
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5q-00HUxa-1J
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:44:09 +0000
Received: by mail-lf1-x133.google.com with SMTP id g11so4366761lfb.11
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GIdFXRLuyHwl2KtnH8DDGKGfr4AeRryJyRCeyJpHfz4=;
        b=tIoFZ1Kj3f59OiaI06kke+AmQUayWlypVssAItKIjzPsWfr76whqzCPhHSMNLYpO4e
         MbJCqojIJIO9ZB7Ouye5QoAtl4Z/ZYWfV2DtGk26Fc3rVNS2tJoZUYgw47Zo4c0gN1DC
         F6yExgyk+ITsT1JcMWexCQsfMmt83EwSXE840oWTWwwHULZEDjjTJwMHMlsUMv4Bz2w3
         BlLdVhepvclqXDN+1dhhVvgsrqW1aaO/ZRpdJbh/jor+uLqb3PYFmfrtVGO0mPKJ7MO5
         sCU4A/02MddtuzAT2kAymM9kGrfpeVA/VeJMskqgg/gmi162oX41Zqf6UJ1XfL9jU6j7
         4MGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GIdFXRLuyHwl2KtnH8DDGKGfr4AeRryJyRCeyJpHfz4=;
        b=z2rdGLRlk4EBIoUMbO2ZfMb/+NjlplOmTqYaQhjSUjEcq3vFa4y+RfutyjQjmAiGFV
         2P9iXbZToHr4bwXUslxLoRyCztYe8kBohKOPZTsi15p+ZB7TfvIi6qxrxCnsKWdtG6pu
         Yy5n3BMAieIUUHCGV/4QifDKZjjTFApVqjLur99P2VrejXKq+q9YrwUjCyY98KHVp73N
         scjGvFkQyY5P1FuCfzF69tAkr1pbFmLYqy/UpOkGx3TKtlgA2wc+0KjvrUze67eDFP29
         jZ4804y3EOfGdaEEIr1AYmTkhuxKQKjgag5TLSVWn4rVy4HmGHLAli6BOGVdtsE9ISis
         e0BQ==
X-Gm-Message-State: AJIora+ZFqzX/LCaxNqNR0hYU5DXAR/LV5yzenKsdaRl5J0A6gFISHeZ
	l6rem7fw5EeCij8DhiYBl6toZA==
X-Google-Smtp-Source: AGRyM1uWlJytJ2R3GfCKBrptpts63MxNfzNpgO5ve9twiPpNX1RcTsIF3lOCKddG+RBw6IN6zNc9CQ==
X-Received: by 2002:a05:6512:2209:b0:483:6989:300b with SMTP id h9-20020a056512220900b004836989300bmr1869205lfu.646.1657014219793;
        Tue, 05 Jul 2022 02:43:39 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 22/28] phy: qcom-qmp: qserdes-com-v3: add missing registers
Date: Tue,  5 Jul 2022 12:43:14 +0300
Message-Id: <20220705094320.1313312-23-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104342_615648_341CD2B1 
X-CRM114-Status: UNSURE (   7.50  )
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
- msm-4.4's phy-qcom-ufs-qmp-v3.h

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../qualcomm/phy-qcom-qmp-qserdes-com-v3.h    | 25 +++++++++++++++++++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v3.h   |  3 +++
 2 files changed, 28 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v3.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v3.h
index a61f8d36d01e..c0bd54e0e7b6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v3.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v3.h
@@ -27,6 +27,10 @@
 #define QSERDES_V3_COM_SYSCLK_BUF_ENABLE		0x040
 #define QSERDES_V3_COM_PLL_EN				0x044
 #define QSERDES_V3_COM_PLL_IVCO				0x048
+#define QSERDES_V3_COM_CMN_IETRIM			0x04c
+#define QSERDES_V3_COM_CMN_IPTRIM			0x050
+#define QSERDES_V3_COM_EP_CLOCK_DETECT_CTR		0x054
+#define QSERDES_V3_COM_SYSCLK_DET_COMP_STATUS		0x058
 #define QSERDES_V3_COM_CLK_EP_DIV			0x05c
 #define QSERDES_V3_COM_CP_CTRL_MODE0			0x060
 #define QSERDES_V3_COM_CP_CTRL_MODE1			0x064
@@ -34,7 +38,10 @@
 #define QSERDES_V3_COM_PLL_RCTRL_MODE1			0x06c
 #define QSERDES_V3_COM_PLL_CCTRL_MODE0			0x070
 #define QSERDES_V3_COM_PLL_CCTRL_MODE1			0x074
+#define QSERDES_V3_COM_PLL_CNTRL			0x078
+#define QSERDES_V3_COM_BIAS_EN_CTRL_BY_PSM		0x07c
 #define QSERDES_V3_COM_SYSCLK_EN_SEL			0x080
+#define QSERDES_V3_COM_CML_SYSCLK_SEL			0x084
 #define QSERDES_V3_COM_RESETSM_CNTRL			0x088
 #define QSERDES_V3_COM_RESETSM_CNTRL2			0x08c
 #define QSERDES_V3_COM_LOCK_CMP_EN			0x090
@@ -54,10 +61,12 @@
 #define QSERDES_V3_COM_DIV_FRAC_START2_MODE1		0x0c8
 #define QSERDES_V3_COM_DIV_FRAC_START3_MODE1		0x0cc
 #define QSERDES_V3_COM_INTEGLOOP_INITVAL		0x0d0
+#define QSERDES_V3_COM_INTEGLOOP_EN			0x0d4
 #define QSERDES_V3_COM_INTEGLOOP_GAIN0_MODE0		0x0d8
 #define QSERDES_V3_COM_INTEGLOOP_GAIN1_MODE0		0x0dc
 #define QSERDES_V3_COM_INTEGLOOP_GAIN0_MODE1		0x0e0
 #define QSERDES_V3_COM_INTEGLOOP_GAIN1_MODE1		0x0e4
+#define QSERDES_V3_COM_VCOCAL_DEADMAN_CTRL		0x0e8
 #define QSERDES_V3_COM_VCO_TUNE_CTRL			0x0ec
 #define QSERDES_V3_COM_VCO_TUNE_MAP			0x0f0
 #define QSERDES_V3_COM_VCO_TUNE1_MODE0			0x0f4
@@ -66,21 +75,37 @@
 #define QSERDES_V3_COM_VCO_TUNE2_MODE1			0x100
 #define QSERDES_V3_COM_VCO_TUNE_INITVAL1		0x104
 #define QSERDES_V3_COM_VCO_TUNE_INITVAL2		0x108
+#define QSERDES_V3_COM_VCO_TUNE_MINVAL1			0x10c
+#define QSERDES_V3_COM_VCO_TUNE_MINVAL2			0x110
+#define QSERDES_V3_COM_VCO_TUNE_MAXVAL1			0x114
+#define QSERDES_V3_COM_VCO_TUNE_MAXVAL2			0x118
 #define QSERDES_V3_COM_VCO_TUNE_TIMER1			0x11c
 #define QSERDES_V3_COM_VCO_TUNE_TIMER2			0x120
+#define QSERDES_V3_COM_CMN_STATUS			0x124
+#define QSERDES_V3_COM_RESET_SM_STATUS			0x128
+#define QSERDES_V3_COM_RESTRIM_CODE_STATUS		0x12c
+#define QSERDES_V3_COM_PLLCAL_CODE1_STATUS		0x130
+#define QSERDES_V3_COM_PLLCAL_CODE2_STATUS		0x134
 #define QSERDES_V3_COM_CLK_SELECT			0x138
 #define QSERDES_V3_COM_HSCLK_SEL			0x13c
+#define QSERDES_V3_COM_INTEGLOOP_BINCODE_STATUS		0x140
+#define QSERDES_V3_COM_PLL_ANALOG			0x144
 #define QSERDES_V3_COM_CORECLK_DIV_MODE0		0x148
 #define QSERDES_V3_COM_CORECLK_DIV_MODE1		0x14c
+#define QSERDES_V3_COM_SW_RESET				0x150
 #define QSERDES_V3_COM_CORE_CLK_EN			0x154
 #define QSERDES_V3_COM_C_READY_STATUS			0x158
 #define QSERDES_V3_COM_CMN_CONFIG			0x15c
+#define QSERDES_V3_COM_CMN_RATE_OVERRIDE		0x160
 #define QSERDES_V3_COM_SVS_MODE_CLK_SEL			0x164
 #define QSERDES_V3_COM_DEBUG_BUS0			0x168
 #define QSERDES_V3_COM_DEBUG_BUS1			0x16c
 #define QSERDES_V3_COM_DEBUG_BUS2			0x170
 #define QSERDES_V3_COM_DEBUG_BUS3			0x174
 #define QSERDES_V3_COM_DEBUG_BUS_SEL			0x178
+#define QSERDES_V3_COM_CMN_MISC1			0x17c
+#define QSERDES_V3_COM_CMN_MISC2			0x180
 #define QSERDES_V3_COM_CMN_MODE				0x184
+#define QSERDES_V3_COM_CMN_VREG_SEL			0x188
 
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v3.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v3.h
index 2c7238df38d7..161e6df30ea8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v3.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v3.h
@@ -26,6 +26,8 @@
 #define QSERDES_V3_TX_TX_POL_INV			0x064
 #define QSERDES_V3_TX_PARRATE_REC_DETECT_IDLE_EN	0x068
 #define QSERDES_V3_TX_LANE_MODE_1			0x08c
+#define QSERDES_V3_TX_LANE_MODE_2			0x090
+#define QSERDES_V3_TX_LANE_MODE_3			0x094
 #define QSERDES_V3_TX_RCV_DETECT_LVL_2			0x0a4
 #define QSERDES_V3_TX_TRAN_DRVR_EMP_EN			0x0c0
 #define QSERDES_V3_TX_TX_INTERFACE_MODE			0x0c4
@@ -48,6 +50,7 @@
 #define QSERDES_V3_RX_VGA_CAL_CNTRL2			0x0c0
 #define QSERDES_V3_RX_RX_EQ_GAIN2_LSB			0x0c8
 #define QSERDES_V3_RX_RX_EQ_GAIN2_MSB			0x0cc
+#define QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL1		0x0d0
 #define QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL2		0x0d4
 #define QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL3		0x0d8
 #define QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL4		0x0dc
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
