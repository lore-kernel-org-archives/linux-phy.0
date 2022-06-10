Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8443CCA47F
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVoBMHkrOVQPzWLU///LjFqiQfPfKO0YdM62oB3YdGo=; b=u5Fpr9YGj2RnF9
	tkinlQz5bRSD90PffgbWuT8PcKmgzKvwFicB2iOukqvqZ/SVfq2brt8VMu8aXOpnByUTJVmWohK5Y
	MTAOGPu6rAdQV4u1Xrwkk+wGj4gLY+yrdRHIysNr6QVNmeYGSG04PAGHt/Vf5//KSTw+FUNxqFCxe
	BZXYRXwMPV07pD4tdLd7IiaiOZOjbI1ieme4cHO5DuJ+z9o2VzcX9wULFzkV/natCbu0/MaMF3XAV
	dZsalBlAvQDKmkrysad8NNFENrgagL4BHUVVMduMTzQ5ybLGaKEFZ7gghLjtKlb7lVVL9W86ZPfet
	zJnXhn6XMdAuuTFJEtHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0q-009Unw-B0; Fri, 10 Jun 2022 19:09:40 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0l-009UlD-Hl
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:09:38 +0000
Received: by mail-lj1-x229.google.com with SMTP id m25so105538lji.11
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t8cFBeL6oaupJ0q3SE5S8ahW3WKZd9XFlVZZZy9lrWQ=;
        b=lIQDOorNK+D7GTmn9wFnU4UWDFKgJlCS6y1m4qJnVqjxTg7grseGue2lmcj2MewjXt
         M9XlRAinJJoOY8Embo/TO7hirNmYG8uZsP973mw/CGgjrgCaD611FVEYVLoU3d60Mork
         Luwek18clOxeTqlpqRSBmPe8kDSGssx6QdzpxnipTJnpXGpPbmOK5sWREu8UTELLigRy
         CJJCMLTv2dEiIO0t5DsrpLzpTThIl2SYbEuGOJRpJiNSdnrJ+w0c3Ku2p7YG3JwpvbNk
         VTtULHYPdtbGc3VxHtTieOQZilX4StI26+H+/+JXjYWbOgoq5AsxCNO07k+60OnAAmER
         DYvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t8cFBeL6oaupJ0q3SE5S8ahW3WKZd9XFlVZZZy9lrWQ=;
        b=65UE5Ttp1x/3zO2wXl2m13MUICBErujFX5wHeaeUuo/YXASjDRXykiMwkywXeZM21+
         GmK7H4BQwt201SQhX/928rRyvRautA8V5kvsan9AAtS2h8HG/08zmWmH4EBtqDCnQIDP
         8w+dpiSHcMKlQw83A1GtMjWZCxhzV/OzkZFp7C/km63sclsZc3uEb5xr2cqMKEdpN68g
         RCIkHs03x186QJ3tEweQb/k2fQHHHZ49b2iLOmZy6l8f8PGAlngx4Tkx7RdaipSafonV
         EW8QJeF05bk250Ud5kY8+mQyDK1Mxs1TjrAHEU8UC3gg/J6ERDvF9JL7aV/VsFzhodsg
         IkhQ==
X-Gm-Message-State: AOAM533z26BuSBTYsAw88B6aOnPjUleSti0yZIS2BolCQa/PBv8tRr94
	I87haTHk9pEwW4nu00j6JMsVWw==
X-Google-Smtp-Source: ABdhPJwbxDGSDVm5wdSEMxK5tTT6zvlubTms74fW/52jYpdO7iTAQUAr164uhxIQrwO5UuHMMTI0mw==
X-Received: by 2002:a2e:b282:0:b0:255:79c1:7ff6 with SMTP id 2-20020a2eb282000000b0025579c17ff6mr23169530ljx.142.1654888174210;
        Fri, 10 Jun 2022 12:09:34 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:09:33 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 05/28] phy: qcom-qmp: drop special QMP V2 PCIE gen3 defines
Date: Fri, 10 Jun 2022 22:09:02 +0300
Message-Id: <20220610190925.3670081-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_120935_660601_EFD8EDDC 
X-CRM114-Status: UNSURE (   8.83  )
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

Replace separate defines for QMP V2 PHY for PCIe gen3 ports. They are
equivalent to the QSERDES_V4_ symbols.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 66 ++++++++++++------------
 drivers/phy/qualcomm/phy-qcom-qmp.h      | 40 --------------
 2 files changed, 33 insertions(+), 73 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 987f0b1d023c..5e984ad3d3a1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -315,42 +315,42 @@ static const struct qmp_phy_init_tbl ipq6018_pcie_serdes_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl ipq6018_pcie_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_TX0_RES_CODE_LANE_OFFSET_TX, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_TX0_LANE_MODE_1, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_TX0_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_TX, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RCV_DETECT_LVL_2, 0x12),
 };
 
 static const struct qmp_phy_init_tbl ipq6018_pcie_rx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_FO_GAIN, 0x0c),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_SO_GAIN, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_PI_CONTROLS, 0x70),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL2, 0x61),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL3, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL4, 0x1e),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_IDAC_TSETTLE_LOW, 0xc0),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_IDAC_TSETTLE_HIGH, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x73),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_SIGDET_ENABLES, 0x1c),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_SIGDET_CNTRL, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_SIGDET_DEGLITCH_CNTRL, 0x14),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_LOW, 0xf0),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH2, 0x2f),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH3, 0xd3),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH4, 0x40),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_LOW, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH2, 0xc8),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH3, 0x09),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH4, 0xb1),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_LOW, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH2, 0xc8),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH3, 0x09),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH4, 0xb1),
-	QMP_PHY_INIT_CFG(QSERDES_RX0_DFE_EN_TIMER, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FO_GAIN, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_GAIN, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CONTROLS, 0x70),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL2, 0x61),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL3, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL4, 0x1e),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_LOW, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x73),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_CNTRL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_DEGLITCH_CNTRL, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_LOW, 0xf0),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH2, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH3, 0xd3),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH4, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_LOW, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH2, 0xc8),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH3, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0xb1),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_LOW, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH2, 0xc8),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH3, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH4, 0xb1),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_EN_TIMER, 0x04),
 };
 
 static const struct qmp_phy_init_tbl ipq6018_pcie_pcs_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index adb155a45923..6cb660455088 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -64,46 +64,6 @@
 #define QSERDES_PLL_SVS_MODE_CLK_SEL			0x194
 #define QSERDES_PLL_CORECLK_DIV_MODE1			0x1b4
 
-/* QMP V2 PHY for PCIE gen3 ports - QSERDES TX registers */
-
-#define QSERDES_TX0_RES_CODE_LANE_OFFSET_TX		0x03c
-#define QSERDES_TX0_HIGHZ_DRVR_EN			0x058
-#define QSERDES_TX0_LANE_MODE_1				0x084
-#define QSERDES_TX0_RCV_DETECT_LVL_2			0x09c
-
-/* QMP V2 PHY for PCIE gen3 ports - QSERDES RX registers */
-
-#define QSERDES_RX0_UCDR_FO_GAIN			0x008
-#define QSERDES_RX0_UCDR_SO_GAIN			0x014
-#define QSERDES_RX0_UCDR_SO_SATURATION_AND_ENABLE	0x034
-#define QSERDES_RX0_UCDR_PI_CONTROLS			0x044
-#define QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL2		0x0ec
-#define QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL3		0x0f0
-#define QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL4		0x0f4
-#define QSERDES_RX0_RX_IDAC_TSETTLE_LOW			0x0f8
-#define QSERDES_RX0_RX_IDAC_TSETTLE_HIGH		0x0fc
-#define QSERDES_RX0_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x110
-#define QSERDES_RX0_RX_OFFSET_ADAPTOR_CNTRL2		0x114
-#define QSERDES_RX0_SIGDET_ENABLES			0x118
-#define QSERDES_RX0_SIGDET_CNTRL			0x11c
-#define QSERDES_RX0_SIGDET_DEGLITCH_CNTRL		0x124
-#define QSERDES_RX0_RX_MODE_00_LOW			0x170
-#define QSERDES_RX0_RX_MODE_00_HIGH			0x174
-#define QSERDES_RX0_RX_MODE_00_HIGH2			0x178
-#define QSERDES_RX0_RX_MODE_00_HIGH3			0x17c
-#define QSERDES_RX0_RX_MODE_00_HIGH4			0x180
-#define QSERDES_RX0_RX_MODE_01_LOW			0x184
-#define QSERDES_RX0_RX_MODE_01_HIGH			0x188
-#define QSERDES_RX0_RX_MODE_01_HIGH2			0x18c
-#define QSERDES_RX0_RX_MODE_01_HIGH3			0x190
-#define QSERDES_RX0_RX_MODE_01_HIGH4			0x194
-#define QSERDES_RX0_RX_MODE_10_LOW			0x198
-#define QSERDES_RX0_RX_MODE_10_HIGH			0x19c
-#define QSERDES_RX0_RX_MODE_10_HIGH2			0x1a0
-#define QSERDES_RX0_RX_MODE_10_HIGH3			0x1a4
-#define QSERDES_RX0_RX_MODE_10_HIGH4			0x1a8
-#define QSERDES_RX0_DFE_EN_TIMER			0x1b4
-
 /* QMP V2 PHY for PCIE gen3 ports - PCS registers */
 
 #define PCS_COM_FLL_CNTRL1				0x098
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
