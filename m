Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40C35C3DA7F
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 15:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E7fXVLZznohdSFv8bDDJS7QtfLnIuxeaHKi3LvNTgUs=; b=hMctPSrXsp1t/M
	qT7/IW4KSnWIrKXGyH8EX7xmnZ8Zcuj15yk10CTsdRKeE1CTNkXnusH5oiRom15f0+Pf9+BCv2tef
	nW84xR8Hd2VgdOK3+cm1MTDIt2gulsDbiVtTJVaoUjVRLvS51uXPGHq6qhpyDwLx4s60R09NArsrX
	uvGoRUp2nW3DzhqKNsqcj2iDfBC00y0gEacvJEMqQ699JU/eVab2Zfi3eChAkDRb2RpA2fB9PuUIF
	fT4gq3/WXmO5KubYhzusVKdG7lskaZUUwKKI7fSunIEUqS6tHk7kcjwu63BynGnmbAojEseq11eNL
	IjUysAcXuDp1zo2cUYwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZBDF-00000001i4q-3wIQ;
	Wed, 31 Jul 2024 15:26:01 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZBDC-00000001i4S-1u5F
	for linux-phy@lists.infradead.org;
	Wed, 31 Jul 2024 15:26:00 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1fc66fc35f2so8107905ad.0
        for <linux-phy@lists.infradead.org>; Wed, 31 Jul 2024 08:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722439557; x=1723044357; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KROUJfzd7zpmXBSNKTmAstwkucbbvJRvDUFfClcBUTs=;
        b=cbi7c58hVUYzgs85U1ry2Kk2U2VD+TF0GJb9+mY93dwK4KPQqcFbg+180QwoJdrA0W
         xEOyomrCa7o7ItzsKIGcCZFRpw+ublmJ3ReIOzdW7pcKP3c1HkYyzY/s57GP+KDnyUN0
         9rW3eMsVVAXzkXRnkeaPk0i+bRrxwpcevHiuZKZNyKLTZupUwz75rfeTX2ebH2NEOn4M
         cpNvBBraEXrcZNLH1QcG7fEEJ9sT7vgbPCDyLKJjBCb0FWMyFBmc4JvNs2AprJsBAQEb
         Qmqrn1WdbX97o8pimUrIfpg8m+e1ZNxbloAkQVHoZ+G2rIY175CXz2PBxZrMq238lyeU
         fnmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722439557; x=1723044357;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KROUJfzd7zpmXBSNKTmAstwkucbbvJRvDUFfClcBUTs=;
        b=ZQaewIeXUl9QqM2b522DKa9MKzqn7wRegfA+TdMoaKkg+wsspyT09Tt8GyMkqsPrMB
         DxgBPFLecXfv3BB8S6p7KmfcOCy8b0lXFVJiQAm0jI7UBM+3REYRocqsCW27EG4BUM9e
         Ar0y2eW7aJooQKHSZoqRsjQuOIrpVw2v4oTcKPsGM9p741+RBXsxuvma5aAfe7hGx+P5
         tRRD8wsGovAjXGRLTgA9d6VN2whWN1C8eeaXqWhLHOHb5voM5kVuS16pyUK/ed75I4gQ
         PRHaabaeV1PVtYAlcmzSYBiuV9ozuVQsLcKqWC3RwEZm67Q48mY7SXlCZ+BhA1q+kDh/
         3Pmw==
X-Forwarded-Encrypted: i=1; AJvYcCXYY0vbDj3hFIbTKbIfD9B4+VDTkCd+m1tYTxMevTTEwobmv+DOjHlEhneS7e73Uvz+++Qwta9HzoODM3/7xRW/GhI94O3xrZ+dWqkPqw==
X-Gm-Message-State: AOJu0YxjW550omj/6gAg/W42Naf8AfnWx8kSIf/q8Y0IjfYJSH9FG+zO
	nhqn6PTuFAY0lBVUE51OFIj7wqAjk1yIagsNL+Hrh467sySYrGHVS8q0MRsN0AX/KM8m7+anoJk
	=
X-Google-Smtp-Source: AGHT+IHaAHeZJQl/6BDz4olgLSYsP8h4LTGjurEwCiEHHGx1zq6QKMnCPnTjvxLmt1OVRUHjdIxKYw==
X-Received: by 2002:a17:903:1250:b0:1fe:d72d:13e1 with SMTP id d9443c01a7336-1ff37c1f3d6mr83336925ad.30.1722439556869;
        Wed, 31 Jul 2024 08:25:56 -0700 (PDT)
Received: from localhost.localdomain ([120.60.66.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7ee0185sm121896295ad.132.2024.07.31.08.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 08:25:56 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vkoul@kernel.org
Cc: kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3] phy: qcom: qmp: Add debug prints for register writes
Date: Wed, 31 Jul 2024 20:55:48 +0530
Message-Id: <20240731152548.102987-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_082558_531280_46090721 
X-CRM114-Status: GOOD (  15.83  )
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

These register prints are useful to validate the init sequence against the
Qcom internal documentation and also to share with the Qcom hw engineers to
debug issues related to PHY.

Sample debug prints:

qcom-qmp-pcie-phy 1c0e000.phy: Writing Reg: QSERDES_V5_COM_SYSCLK_EN_SEL Offset: 0x0094 Val: 0xd9
qcom-qmp-pcie-phy 1c0e000.phy: Writing Reg: QSERDES_V5_COM_HSCLK_SEL Offset: 0x0158 Val: 0x11

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---

Changes in v3:

* Used dev_dbg() to print device name

Changes in v2:

* Modifed the debug print to include reg offset

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 38 ++++++++++---------
 drivers/phy/qualcomm/phy-qcom-qmp-common.h    | 19 ++++++----
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  |  8 ++--
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 27 ++++++-------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 12 +++---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 10 ++---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c      | 13 ++++---
 7 files changed, 67 insertions(+), 60 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b00945f7191..a8adc3214bfe 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2190,24 +2190,25 @@ static int qmp_combo_dp_serdes_init(struct qmp_combo *qmp)
 	void __iomem *serdes = qmp->dp_serdes;
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 
-	qmp_configure(serdes, cfg->dp_serdes_tbl, cfg->dp_serdes_tbl_num);
+	qmp_configure(qmp->dev, serdes, cfg->dp_serdes_tbl,
+		      cfg->dp_serdes_tbl_num);
 
 	switch (dp_opts->link_rate) {
 	case 1620:
-		qmp_configure(serdes, cfg->serdes_tbl_rbr,
-				cfg->serdes_tbl_rbr_num);
+		qmp_configure(qmp->dev, serdes, cfg->serdes_tbl_rbr,
+			      cfg->serdes_tbl_rbr_num);
 		break;
 	case 2700:
-		qmp_configure(serdes, cfg->serdes_tbl_hbr,
-				cfg->serdes_tbl_hbr_num);
+		qmp_configure(qmp->dev, serdes, cfg->serdes_tbl_hbr,
+			      cfg->serdes_tbl_hbr_num);
 		break;
 	case 5400:
-		qmp_configure(serdes, cfg->serdes_tbl_hbr2,
-				cfg->serdes_tbl_hbr2_num);
+		qmp_configure(qmp->dev, serdes, cfg->serdes_tbl_hbr2,
+			      cfg->serdes_tbl_hbr2_num);
 		break;
 	case 8100:
-		qmp_configure(serdes, cfg->serdes_tbl_hbr3,
-				cfg->serdes_tbl_hbr3_num);
+		qmp_configure(qmp->dev, serdes, cfg->serdes_tbl_hbr3,
+			      cfg->serdes_tbl_hbr3_num);
 		break;
 	default:
 		/* Other link rates aren't supported */
@@ -2807,8 +2808,8 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 
 	qmp_combo_dp_serdes_init(qmp);
 
-	qmp_configure_lane(tx, cfg->dp_tx_tbl, cfg->dp_tx_tbl_num, 1);
-	qmp_configure_lane(tx2, cfg->dp_tx_tbl, cfg->dp_tx_tbl_num, 2);
+	qmp_configure_lane(qmp->dev, tx, cfg->dp_tx_tbl, cfg->dp_tx_tbl_num, 1);
+	qmp_configure_lane(qmp->dev, tx2, cfg->dp_tx_tbl, cfg->dp_tx_tbl_num, 2);
 
 	/* Configure special DP tx tunings */
 	cfg->configure_dp_tx(qmp);
@@ -2850,7 +2851,7 @@ static int qmp_combo_usb_power_on(struct phy *phy)
 	unsigned int val;
 	int ret;
 
-	qmp_configure(serdes, cfg->serdes_tbl, cfg->serdes_tbl_num);
+	qmp_configure(qmp->dev, serdes, cfg->serdes_tbl, cfg->serdes_tbl_num);
 
 	ret = clk_prepare_enable(qmp->pipe_clk);
 	if (ret) {
@@ -2859,16 +2860,17 @@ static int qmp_combo_usb_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qmp_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
-	qmp_configure_lane(tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
+	qmp_configure_lane(qmp->dev, tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
+	qmp_configure_lane(qmp->dev, tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
 
-	qmp_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
-	qmp_configure_lane(rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
+	qmp_configure_lane(qmp->dev, rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
+	qmp_configure_lane(qmp->dev, rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
 
-	qmp_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	qmp_configure(qmp->dev, pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	if (pcs_usb)
-		qmp_configure(pcs_usb, cfg->pcs_usb_tbl, cfg->pcs_usb_tbl_num);
+		qmp_configure(qmp->dev, pcs_usb, cfg->pcs_usb_tbl,
+			      cfg->pcs_usb_tbl_num);
 
 	if (cfg->has_pwrdn_delay)
 		usleep_range(10, 20);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-common.h b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
index 799384210509..b945fc14cece 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-common.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
@@ -9,6 +9,7 @@
 struct qmp_phy_init_tbl {
 	unsigned int offset;
 	unsigned int val;
+	char *name;
 	/*
 	 * mask of lanes for which this register is written
 	 * for cases when second lane needs different values
@@ -20,6 +21,7 @@ struct qmp_phy_init_tbl {
 	{				\
 		.offset = o,		\
 		.val = v,		\
+		.name = #o,		\
 		.lane_mask = 0xff,	\
 	}
 
@@ -27,13 +29,13 @@ struct qmp_phy_init_tbl {
 	{				\
 		.offset = o,		\
 		.val = v,		\
+		.name = #o,		\
 		.lane_mask = l,		\
 	}
 
-static inline void qmp_configure_lane(void __iomem *base,
-					   const struct qmp_phy_init_tbl tbl[],
-					   int num,
-					   u8 lane_mask)
+static inline void qmp_configure_lane(struct device *dev, void __iomem *base,
+				      const struct qmp_phy_init_tbl tbl[],
+				      int num, u8 lane_mask)
 {
 	int i;
 	const struct qmp_phy_init_tbl *t = tbl;
@@ -45,15 +47,16 @@ static inline void qmp_configure_lane(void __iomem *base,
 		if (!(t->lane_mask & lane_mask))
 			continue;
 
+		dev_dbg(dev, "Writing Reg: %s Offset: 0x%04x Val: 0x%02x\n",
+			t->name, t->offset, t->val);
 		writel(t->val, base + t->offset);
 	}
 }
 
-static inline void qmp_configure(void __iomem *base,
-				      const struct qmp_phy_init_tbl tbl[],
-				      int num)
+static inline void qmp_configure(struct device *dev, void __iomem *base,
+				 const struct qmp_phy_init_tbl tbl[], int num)
 {
-	qmp_configure_lane(base, tbl, num, 0xff);
+	qmp_configure_lane(dev, base, tbl, num, 0xff);
 }
 
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 0442b3120563..5f89e3a3e54f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -288,7 +288,7 @@ static int qmp_pcie_msm8996_serdes_init(struct qmp_phy *qphy)
 	unsigned int val;
 	int ret;
 
-	qmp_configure(serdes, serdes_tbl, serdes_tbl_num);
+	qmp_configure(qmp->dev, serdes, serdes_tbl, serdes_tbl_num);
 
 	qphy_clrbits(serdes, cfg->regs[QPHY_COM_SW_RESET], SW_RESET);
 	qphy_setbits(serdes, cfg->regs[QPHY_COM_START_CONTROL],
@@ -431,9 +431,9 @@ static int qmp_pcie_msm8996_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qmp_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
-	qmp_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
-	qmp_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	qmp_configure_lane(qmp->dev, tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
+	qmp_configure_lane(qmp->dev, rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
+	qmp_configure(qmp->dev, pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	/*
 	 * Pull out PHY from POWER DOWN state.
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 5b36cc7ac78b..b09ec1d7cf5a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3667,11 +3667,11 @@ static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_
 	tx4 = qmp->port_b + offs->tx2;
 	rx4 = qmp->port_b + offs->rx2;
 
-	qmp_configure_lane(tx3, tbls->tx, tbls->tx_num, 1);
-	qmp_configure_lane(rx3, tbls->rx, tbls->rx_num, 1);
+	qmp_configure_lane(qmp->dev, tx3, tbls->tx, tbls->tx_num, 1);
+	qmp_configure_lane(qmp->dev, rx3, tbls->rx, tbls->rx_num, 1);
 
-	qmp_configure_lane(tx4, tbls->tx, tbls->tx_num, 2);
-	qmp_configure_lane(rx4, tbls->rx, tbls->rx_num, 2);
+	qmp_configure_lane(qmp->dev, tx4, tbls->tx, tbls->tx_num, 2);
+	qmp_configure_lane(qmp->dev, rx4, tbls->rx, tbls->rx_num, 2);
 }
 
 static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
@@ -3689,25 +3689,26 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
 	if (!tbls)
 		return;
 
-	qmp_configure(serdes, tbls->serdes, tbls->serdes_num);
+	qmp_configure(qmp->dev, serdes, tbls->serdes, tbls->serdes_num);
 
-	qmp_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
-	qmp_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
+	qmp_configure_lane(qmp->dev, tx, tbls->tx, tbls->tx_num, 1);
+	qmp_configure_lane(qmp->dev, rx, tbls->rx, tbls->rx_num, 1);
 
 	if (cfg->lanes >= 2) {
-		qmp_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
-		qmp_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
+		qmp_configure_lane(qmp->dev, tx2, tbls->tx, tbls->tx_num, 2);
+		qmp_configure_lane(qmp->dev, rx2, tbls->rx, tbls->rx_num, 2);
 	}
 
-	qmp_configure(pcs, tbls->pcs, tbls->pcs_num);
-	qmp_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
+	qmp_configure(qmp->dev, pcs, tbls->pcs, tbls->pcs_num);
+	qmp_configure(qmp->dev, pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
 
 	if (cfg->lanes >= 4 && qmp->tcsr_4ln_config) {
-		qmp_configure(serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);
+		qmp_configure(qmp->dev, serdes, cfg->serdes_4ln_tbl,
+			      cfg->serdes_4ln_num);
 		qmp_pcie_init_port_b(qmp, tbls);
 	}
 
-	qmp_configure(ln_shrd, tbls->ln_shrd, tbls->ln_shrd_num);
+	qmp_configure(qmp->dev, ln_shrd, tbls->ln_shrd, tbls->ln_shrd_num);
 }
 
 static int qmp_pcie_init(struct phy *phy)
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index a57e8a4657f4..d964bdfe8700 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1527,7 +1527,7 @@ static void qmp_ufs_serdes_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tb
 {
 	void __iomem *serdes = qmp->serdes;
 
-	qmp_configure(serdes, tbls->serdes, tbls->serdes_num);
+	qmp_configure(qmp->dev, serdes, tbls->serdes, tbls->serdes_num);
 }
 
 static void qmp_ufs_lanes_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls *tbls)
@@ -1536,12 +1536,12 @@ static void qmp_ufs_lanes_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbl
 	void __iomem *tx = qmp->tx;
 	void __iomem *rx = qmp->rx;
 
-	qmp_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
-	qmp_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
+	qmp_configure_lane(qmp->dev, tx, tbls->tx, tbls->tx_num, 1);
+	qmp_configure_lane(qmp->dev, rx, tbls->rx, tbls->rx_num, 1);
 
 	if (cfg->lanes >= 2) {
-		qmp_configure_lane(qmp->tx2, tbls->tx, tbls->tx_num, 2);
-		qmp_configure_lane(qmp->rx2, tbls->rx, tbls->rx_num, 2);
+		qmp_configure_lane(qmp->dev, qmp->tx2, tbls->tx, tbls->tx_num, 2);
+		qmp_configure_lane(qmp->dev, qmp->rx2, tbls->rx, tbls->rx_num, 2);
 	}
 }
 
@@ -1549,7 +1549,7 @@ static void qmp_ufs_pcs_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls
 {
 	void __iomem *pcs = qmp->pcs;
 
-	qmp_configure(pcs, tbls->pcs, tbls->pcs_num);
+	qmp_configure(qmp->dev, pcs, tbls->pcs, tbls->pcs_num);
 }
 
 static int qmp_ufs_get_gear_overlay(struct qmp_ufs *qmp, const struct qmp_phy_cfg *cfg)
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 9b0eb87b1680..2fd49355aa37 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1649,7 +1649,7 @@ static int qmp_usb_serdes_init(struct qmp_usb *qmp)
 	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
 	int serdes_tbl_num = cfg->serdes_tbl_num;
 
-	qmp_configure(serdes, serdes_tbl, serdes_tbl_num);
+	qmp_configure(qmp->dev, serdes, serdes_tbl, serdes_tbl_num);
 
 	return 0;
 }
@@ -1730,13 +1730,13 @@ static int qmp_usb_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qmp_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
-	qmp_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
+	qmp_configure_lane(qmp->dev, tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
+	qmp_configure_lane(qmp->dev, rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	qmp_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	qmp_configure(qmp->dev, pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	if (pcs_usb)
-		qmp_configure(pcs_usb, cfg->pcs_usb_tbl, cfg->pcs_usb_tbl_num);
+		qmp_configure(qmp->dev, pcs_usb, cfg->pcs_usb_tbl, cfg->pcs_usb_tbl_num);
 
 	if (cfg->has_pwrdn_delay)
 		usleep_range(10, 20);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 5cbc5fd529eb..d4fa1063ea61 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -526,7 +526,8 @@ static int qmp_usbc_power_on(struct phy *phy)
 	unsigned int val;
 	int ret;
 
-	qmp_configure(qmp->serdes, cfg->serdes_tbl, cfg->serdes_tbl_num);
+	qmp_configure(qmp->dev, qmp->serdes, cfg->serdes_tbl,
+		      cfg->serdes_tbl_num);
 
 	ret = clk_prepare_enable(qmp->pipe_clk);
 	if (ret) {
@@ -535,13 +536,13 @@ static int qmp_usbc_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qmp_configure_lane(qmp->tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
-	qmp_configure_lane(qmp->rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
+	qmp_configure_lane(qmp->dev, qmp->tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
+	qmp_configure_lane(qmp->dev, qmp->rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	qmp_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
-	qmp_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
+	qmp_configure_lane(qmp->dev, qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
+	qmp_configure_lane(qmp->dev, qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
 
-	qmp_configure(qmp->pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	qmp_configure(qmp->dev, qmp->pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	/* Pull PHY out of reset state */
 	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
