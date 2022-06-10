Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20F0ACCA480
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDOgRA6mbIoT3GO+KAcdYa2LnVf1SQT24Up3Fy2YnHw=; b=A90hGsJzvKe158
	n7nbA3JNWWyFfPNr+npktz/JP58McLK6PaCYd6Uj8zmq2fc7JUwOENgby79L6OAP9p5VZGqmvm59Z
	zEziLJvUkX+XoW4QMwxCRV4x1ZOmHiTuuqt9NYCvRCdHSVKOOwd5gLXiNPpXhp+0Tuj+m5wUmhU8J
	RYD4xTzuSTVkJK7/rh7j45hHEntIHtCV0f0zf4RoKTXuUYVwcEdrxuxZu27hchUYgQ4L48ga5bgEd
	oNvOcfecpiLeV/Twpo5Ou7jHr9z9M70OTtC2gDSGRUFG5XSEQQrV7NNwxZV2V6DBJddZn8Y3Y60A3
	p4LTJa7CgkM3c2LubR7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0q-009UoA-Fi; Fri, 10 Jun 2022 19:09:40 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0n-009UiX-9M
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:09:38 +0000
Received: by mail-lj1-x232.google.com with SMTP id c30so115138ljr.9
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VIBvVbk09XBQoBHM9aRANPmgi18BIY1av52Z7kDBWv0=;
        b=rbOGEbPo0EGuyyp+Qq8loTqpClhHfhRTNatBV0DzbOtCGOTtjMpAUVClL1kgRmXqBJ
         3bumaLj7ANrpLzmN20vIVAJQZ9hQp4PJk2oBIO58xq4g+Uez3/IZqy43MvAG6+a7h6zo
         5xO27C6kZNtPJ3aTRskMkIMtL5XJ+tEnE4HtWlCG8vLXLbG0k9E9wp9tdc3q80Mvlf1R
         8ofwTiaHQDGRFbjbpfyLYCg11ZWCrH3tueYU+h8WKyC2jVMIp92G8/j3a1p0YeXEkRxP
         0Tv1PFr3syiL6k1+PE7h8x+xHRRV0Ja2CBPq9I8Lb5lIn3vN0fgucThkK4QFSJdlsDBz
         dvoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VIBvVbk09XBQoBHM9aRANPmgi18BIY1av52Z7kDBWv0=;
        b=FWLuDXXaPyDuirWRnECvddjd3knQj7RODw1g9y6L1YdoyeXScpe+K1itgNGjdLztcq
         314V0OGNFW7fPzhpIIZayKeU55DYe6BbRkFyuQqA8UQaKJDTWC7WSBv/mZG6+zGDeNcQ
         US/OZ6VrpUedyNFy8prPybLevgN8c2Wgh7a7UpCaJUXnIaVDGnZDQysxm24FfdMrZ9yE
         rWk1orEsdZ9rjzXr8mHhzV1YxgHj0l3h3fpPpQrnoMtXy920v7m1LPL4uLlQ8T7F6gxO
         P/nB7mS46wrDFCv4C7vGEDUcPeInF3gM0ZlvvSw7VEaCnfnhOhLVPTEsmhDUdrbeZraM
         5RVA==
X-Gm-Message-State: AOAM530MubAS+AZXwzidjx2zK6RWGYu4WBsDvCfZnFf6soDuwE8tWDUZ
	bZurXRLC0URFgdoi/u5Z92n9gA==
X-Google-Smtp-Source: ABdhPJyfHO+R6uDFV3tvwoFyaxbSS+ihCtLR2W3xRUAWZx+Cb8SNoWolC4uj4WrEDaWDdiLMiEGhEg==
X-Received: by 2002:a05:651c:513:b0:257:c12:b93b with SMTP id o19-20020a05651c051300b002570c12b93bmr6653642ljp.88.1654888176824;
        Fri, 10 Jun 2022 12:09:36 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:09:36 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 07/28] phy: qcom-qmp: use QPHY_V4_PCS for ipq6018 PCIe gen3
Date: Fri, 10 Jun 2022 22:09:04 +0300
Message-Id: <20220610190925.3670081-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_120937_365517_81946380 
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

PCS_COM_* symbols duplicate the QPHY_V4_PCS_*. PCS_PCIE_* symbols
duplicate the QPHY_V4_PCS_PCIE_*. Use generic register names for the
IPQ6018 tables and drop the custom PCS_COM_*/PCS_PCIE* names.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 32 +++++++++++-----------
 drivers/phy/qualcomm/phy-qcom-qmp.h      | 35 +-----------------------
 2 files changed, 17 insertions(+), 50 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 161be7a94acc..2992ef6603f3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -354,25 +354,25 @@ static const struct qmp_phy_init_tbl ipq6018_pcie_rx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl ipq6018_pcie_pcs_tbl[] = {
-	QMP_PHY_INIT_CFG(PCS_COM_FLL_CNTRL1, 0x01),
-	QMP_PHY_INIT_CFG(PCS_COM_REFGEN_REQ_CONFIG1, 0x0d),
-	QMP_PHY_INIT_CFG(PCS_COM_G12S1_TXDEEMPH_M3P5DB, 0x10),
-	QMP_PHY_INIT_CFG(PCS_COM_RX_SIGDET_LVL, 0xaa),
-	QMP_PHY_INIT_CFG(PCS_COM_P2U3_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
-	QMP_PHY_INIT_CFG(PCS_COM_RX_DCC_CAL_CONFIG, 0x01),
-	QMP_PHY_INIT_CFG(PCS_COM_EQ_CONFIG5, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_FLL_CNTRL1, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_REFGEN_REQ_CONFIG1, 0x0d),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_G12S1_TXDEEMPH_M3P5DB, 0x10),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_SIGDET_LVL, 0xaa),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_P2U3_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_DCC_CAL_CONFIG, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG5, 0x01),
 };
 
 static const struct qmp_phy_init_tbl ipq6018_pcie_pcs_misc_tbl[] = {
-	QMP_PHY_INIT_CFG(PCS_PCIE_POWER_STATE_CONFIG2, 0x0d),
-	QMP_PHY_INIT_CFG(PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
-	QMP_PHY_INIT_CFG(PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
-	QMP_PHY_INIT_CFG(PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
-	QMP_PHY_INIT_CFG(PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
-	QMP_PHY_INIT_CFG(PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
-	QMP_PHY_INIT_CFG(PCS_PCIE_EQ_CONFIG1, 0x11),
-	QMP_PHY_INIT_CFG(PCS_PCIE_PRESET_P10_PRE, 0x00),
-	QMP_PHY_INIT_CFG(PCS_PCIE_PRESET_P10_POST, 0x58),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_POWER_STATE_CONFIG2, 0x0d),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_EQ_CONFIG1, 0x11),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_PRESET_P10_PRE, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_PRESET_P10_POST, 0x58),
 };
 
 static const struct qmp_phy_init_tbl ipq8074_pcie_serdes_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 64af9720b3f9..b2aeace96c09 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -64,40 +64,6 @@
 #define QSERDES_PLL_SVS_MODE_CLK_SEL			0x194
 #define QSERDES_PLL_CORECLK_DIV_MODE1			0x1b4
 
-/* QMP V2 PHY for PCIE gen3 ports - PCS registers */
-
-#define PCS_COM_FLL_CNTRL1				0x098
-#define PCS_COM_FLL_CNTRL2				0x09c
-#define PCS_COM_FLL_CNT_VAL_L				0x0a0
-#define PCS_COM_FLL_CNT_VAL_H_TOL			0x0a4
-#define PCS_COM_FLL_MAN_CODE				0x0a8
-#define PCS_COM_REFGEN_REQ_CONFIG1			0x0dc
-#define PCS_COM_G12S1_TXDEEMPH_M3P5DB			0x16c
-#define PCS_COM_RX_SIGDET_LVL				0x188
-#define PCS_COM_P2U3_WAKEUP_DLY_TIME_AUXCLK_L		0x1a4
-#define PCS_COM_P2U3_WAKEUP_DLY_TIME_AUXCLK_H		0x1a8
-#define PCS_COM_RX_DCC_CAL_CONFIG			0x1d8
-#define PCS_COM_EQ_CONFIG5				0x1ec
-
-/* QMP V2 PHY for PCIE gen3 ports - PCS Misc registers */
-
-#define PCS_PCIE_POWER_STATE_CONFIG2			0x00c
-#define PCS_PCIE_POWER_STATE_CONFIG4			0x014
-#define PCS_PCIE_ENDPOINT_REFCLK_DRIVE			0x01c
-#define PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L		0x040
-#define PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_H		0x044
-#define PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L		0x048
-#define PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_H		0x04c
-#define PCS_PCIE_OSC_DTCT_CONFIG2			0x05c
-#define PCS_PCIE_OSC_DTCT_MODE2_CONFIG2			0x078
-#define PCS_PCIE_OSC_DTCT_MODE2_CONFIG4			0x080
-#define PCS_PCIE_OSC_DTCT_MODE2_CONFIG5			0x084
-#define PCS_PCIE_OSC_DTCT_ACTIONS			0x090
-#define PCS_PCIE_EQ_CONFIG1				0x0a0
-#define PCS_PCIE_EQ_CONFIG2				0x0a4
-#define PCS_PCIE_PRESET_P10_PRE				0x0bc
-#define PCS_PCIE_PRESET_P10_POST			0x0e0
-
 /* Only for QMP V2 PHY - QSERDES COM registers */
 #define QSERDES_COM_BG_TIMER				0x00c
 #define QSERDES_COM_SSC_EN_CENTER			0x010
@@ -1014,6 +980,7 @@
 #define QPHY_V4_PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L	0x48
 #define QPHY_V4_PCS_PCIE_INT_AUX_CLK_CONFIG1		0x50
 #define QPHY_V4_PCS_PCIE_OSC_DTCT_ACTIONS		0x90
+#define QPHY_V4_PCS_PCIE_EQ_CONFIG1			0xa0
 #define QPHY_V4_PCS_PCIE_EQ_CONFIG2			0xa4
 #define QPHY_V4_PCS_PCIE_PRESET_P6_P7_PRE		0xb4
 #define QPHY_V4_PCS_PCIE_PRESET_P10_PRE			0xbc
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
