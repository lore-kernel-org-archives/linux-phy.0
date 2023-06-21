Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD163EB64DD
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 15:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xby6cqT/T3Xi16YwFzrvWEjJ+Xrkk9f35A930Y8cTcg=; b=aSv5VUDPgarncu
	8SPFK0F3691xaweNOhGRtGexPp7v7huoRYIY+cAGAV3SDj7G7lv51EXPUD8ninwPqfsydG0ra+e44
	ej53iN+Pyoupm83T9ZlPd1E3HOzS0pUP2yh6E1MOYWqlO0FA3/m3LSPMeFQHoY2R9R320dkiHEhEz
	QKE+cc/lDd7DbBYeoNLDDZKwLyjNkRnBEjGX5Lwocs47d8xurNnI7NAoeOd9Iqb0YYVQ9EB/Z2yc9
	0WCioCAempTqM9g/yh0yPNT3FkBaCq/7xsVgUw4A6u12/1ZjR5IUfMtRhR0fALwjklVTgHlueWQ4m
	2YjGXYFkAaKCwRjbn7kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBzpn-00ExJG-1W;
	Wed, 21 Jun 2023 15:33:27 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBzpk-00ExGA-1Q
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 15:33:25 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f870247d6aso5406923e87.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Jun 2023 08:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687361602; x=1689953602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MicCFkNBouLiXbSIH4JKKed61jEBtgAzBmipuLWTl/4=;
        b=aVPaow9xhb3xYotbyBCYo5A5C7RiiRO3yZG+j5v40/WJe+geF1e/7xUCsze5BjeCGD
         //VthO92/bjexjZIpNC/4HjssldnYZXmz6q7PwwoRY5ip3Lzbf4388LeRGnb8qoBCUUr
         dyNRozhwmGqto7XlePF2MZRCmftZ3QW4r74Rb4ofOa9OMa8RQJK6mZnNq479wDJzZ1k0
         trnx3t7MtuELbUFy+Hjfe5wzeqRWi8JymNOrgFLPCOI+nRX0Kk01rFudbx7cZdUlvSHX
         58ZX03GpAtDR0eeFI1f4cx4x6ZNkH4axt2Suw0wvRUAGbz7R8XxcEqULbnNFysvsDgsN
         LKhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687361602; x=1689953602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MicCFkNBouLiXbSIH4JKKed61jEBtgAzBmipuLWTl/4=;
        b=i8bpT3cIKuC+CuuypfHrQ3e/eNQePVi8xzMM2/2V2ZD8tfAHmRMQNSKo5/AgARkrAn
         +SxxJwCnm4hMKt9crBLYt0FL6qDs31aqtfoPf5znzB13jJB+lnK+9dyTdmaXoDKesrOs
         HRnDn+7QMQD8nR8pTFH0E/TINsH55gnKe6LAYt+IQ+zbr5FpArlTcKRohjehStFcZMZk
         IyW+mqbKZePi7p4ypQt2uv7/TZCl8gvXEzfWqXUyREePqHQ5rWxL8DqTX2sQ4U/vFojN
         a+z/3e6SdcJjU/yA//jn2waGNAKnDgGXj6yQazjTIL22EGm5xSuT/uB2aOYuRcmZNAxe
         HgQw==
X-Gm-Message-State: AC+VfDwVwXWQO7nDZHkYxf7GIHq/8Pd8IUxN0G0ZMyiq4DndqGpWVfMn
	+69aD+3zTyawPW6GcWSFZn3mGg==
X-Google-Smtp-Source: ACHHUZ5Ay+e1qvAcNp8A1s2flxC/4+7psevy6GnCjLquxSCTm79PTFphiu8SNNSg70r7jqNkNsbSfQ==
X-Received: by 2002:a05:6512:3110:b0:4f9:5682:3b54 with SMTP id n16-20020a056512311000b004f956823b54mr2440803lfb.28.1687361602115;
        Wed, 21 Jun 2023 08:33:22 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id o3-20020a056512050300b004f8751285a5sm804888lfb.80.2023.06.21.08.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 08:33:21 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	freedreno@lists.freedesktop.org
Subject: [RESEND PATCH 4/7] phy: qcom: qmp-combo: reuse register layouts for some more registers
Date: Wed, 21 Jun 2023 18:33:14 +0300
Message-Id: <20230621153317.1025914-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230621153317.1025914-1-dmitry.baryshkov@linaro.org>
References: <20230621153317.1025914-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_083324_481668_149D5B1C 
X-CRM114-Status: GOOD (  10.28  )
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

Use register layout for TX_HIGHZ_DRVR_EN and TX_TRANSCEIVER_BIAS_EN
registers. This will allow us to unify qmp_v[456]_configure_dp_phy()
functions in the next commit.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 34 ++++++++++++-------
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h   |  2 ++
 2 files changed, 24 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 2f95e29110df..d034b4f45bd3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -116,6 +116,8 @@ enum qphy_reg_layout {
 	QPHY_TX_TX_POL_INV,
 	QPHY_TX_TX_DRV_LVL,
 	QPHY_TX_TX_EMP_POST1_LVL,
+	QPHY_TX_HIGHZ_DRVR_EN,
+	QPHY_TX_TRANSCEIVER_BIAS_EN,
 
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
@@ -138,6 +140,8 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_TX_TX_POL_INV]		= QSERDES_V3_TX_TX_POL_INV,
 	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V3_TX_TX_DRV_LVL,
 	[QPHY_TX_TX_EMP_POST1_LVL]	= QSERDES_V3_TX_TX_EMP_POST1_LVL,
+	[QPHY_TX_HIGHZ_DRVR_EN]		= QSERDES_V3_TX_HIGHZ_DRVR_EN,
+	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V3_TX_TRANSCEIVER_BIAS_EN,
 };
 
 static const unsigned int qmp_v45_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -159,6 +163,8 @@ static const unsigned int qmp_v45_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_TX_TX_POL_INV]		= QSERDES_V4_TX_TX_POL_INV,
 	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V4_TX_TX_DRV_LVL,
 	[QPHY_TX_TX_EMP_POST1_LVL]	= QSERDES_V4_TX_TX_EMP_POST1_LVL,
+	[QPHY_TX_HIGHZ_DRVR_EN]		= QSERDES_V4_TX_HIGHZ_DRVR_EN,
+	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V4_TX_TRANSCEIVER_BIAS_EN,
 };
 
 static const unsigned int qmp_v5_5nm_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -180,6 +186,8 @@ static const unsigned int qmp_v5_5nm_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_TX_TX_POL_INV]		= QSERDES_V5_5NM_TX_TX_POL_INV,
 	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V5_5NM_TX_TX_DRV_LVL,
 	[QPHY_TX_TX_EMP_POST1_LVL]	= QSERDES_V5_5NM_TX_TX_EMP_POST1_LVL,
+	[QPHY_TX_HIGHZ_DRVR_EN]		= QSERDES_V5_5NM_TX_HIGHZ_DRVR_EN,
+	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V5_5NM_TX_TRANSCEIVER_BIAS_EN,
 };
 
 static const unsigned int qmp_v6_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -201,6 +209,8 @@ static const unsigned int qmp_v6_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_TX_TX_POL_INV]		= QSERDES_V6_TX_TX_POL_INV,
 	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V6_TX_TX_DRV_LVL,
 	[QPHY_TX_TX_EMP_POST1_LVL]	= QSERDES_V6_TX_TX_EMP_POST1_LVL,
+	[QPHY_TX_HIGHZ_DRVR_EN]		= QSERDES_V6_TX_HIGHZ_DRVR_EN,
+	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V6_TX_TRANSCEIVER_BIAS_EN,
 };
 
 static const struct qmp_phy_init_tbl qmp_v3_usb3_serdes_tbl[] = {
@@ -2346,10 +2356,10 @@ static int qmp_v4_configure_dp_phy(struct qmp_combo *qmp)
 		drvr1_en = 0x10;
 	}
 
-	writel(drvr0_en, qmp->dp_tx + QSERDES_V4_TX_HIGHZ_DRVR_EN);
-	writel(bias0_en, qmp->dp_tx + QSERDES_V4_TX_TRANSCEIVER_BIAS_EN);
-	writel(drvr1_en, qmp->dp_tx2 + QSERDES_V4_TX_HIGHZ_DRVR_EN);
-	writel(bias1_en, qmp->dp_tx2 + QSERDES_V4_TX_TRANSCEIVER_BIAS_EN);
+	writel(drvr0_en, qmp->dp_tx + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
+	writel(bias0_en, qmp->dp_tx + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
+	writel(drvr1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
+	writel(bias1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
 
 	writel(0x18, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 	udelay(2000);
@@ -2406,10 +2416,10 @@ static int qmp_v5_configure_dp_phy(struct qmp_combo *qmp)
 		drvr1_en = 0x10;
 	}
 
-	writel(drvr0_en, qmp->dp_tx + QSERDES_V5_5NM_TX_HIGHZ_DRVR_EN);
-	writel(bias0_en, qmp->dp_tx + QSERDES_V5_5NM_TX_TRANSCEIVER_BIAS_EN);
-	writel(drvr1_en, qmp->dp_tx2 + QSERDES_V5_5NM_TX_HIGHZ_DRVR_EN);
-	writel(bias1_en, qmp->dp_tx2 + QSERDES_V5_5NM_TX_TRANSCEIVER_BIAS_EN);
+	writel(drvr0_en, qmp->dp_tx + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
+	writel(bias0_en, qmp->dp_tx + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
+	writel(drvr1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
+	writel(bias1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
 
 	writel(0x18, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 	udelay(2000);
@@ -2464,10 +2474,10 @@ static int qmp_v6_configure_dp_phy(struct qmp_combo *qmp)
 		drvr1_en = 0x10;
 	}
 
-	writel(drvr0_en, qmp->dp_tx + QSERDES_V4_TX_HIGHZ_DRVR_EN);
-	writel(bias0_en, qmp->dp_tx + QSERDES_V4_TX_TRANSCEIVER_BIAS_EN);
-	writel(drvr1_en, qmp->dp_tx2 + QSERDES_V4_TX_HIGHZ_DRVR_EN);
-	writel(bias1_en, qmp->dp_tx2 + QSERDES_V4_TX_TRANSCEIVER_BIAS_EN);
+	writel(drvr0_en, qmp->dp_tx + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
+	writel(bias0_en, qmp->dp_tx + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
+	writel(drvr1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
+	writel(bias1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
 
 	writel(0x18, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 	udelay(2000);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
index b4810c48dc20..8883e1de730e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
@@ -17,6 +17,8 @@
 #define QSERDES_V6_TX_RES_CODE_LANE_RX				0x38
 #define QSERDES_V6_TX_RES_CODE_LANE_OFFSET_TX			0x3c
 #define QSERDES_V6_TX_RES_CODE_LANE_OFFSET_RX			0x40
+#define QSERDES_V6_TX_TRANSCEIVER_BIAS_EN			0x54
+#define QSERDES_V6_TX_HIGHZ_DRVR_EN				0x58
 #define QSERDES_V6_TX_TX_POL_INV				0x5c
 #define QSERDES_V6_TX_PARRATE_REC_DETECT_IDLE_EN		0x60
 #define QSERDES_V6_TX_BIST_PATTERN7				0x7c
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
