Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2EEFC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 19 Jul 2022 20:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKmj+h+NqEsAFzWVf1r4/FHXF05PbjQ5ruyNn1kxBks=; b=bOHfa7tQoSgz8y
	s9ooI2FD1DtP8Sseo4pn78qo7y1HWx87FvvzrwneLJiQV9gDBZZf+9FDa9mt08jqeHreW1/gCBt8u
	nXRx1ZwDJ/RDSyzWunP6l39Qr0qJPLKx4Lhfsxp28kNE+MSt9Me4GJGfbwdUyHxs9bQDe9okUciMr
	RmjSGe1r8AmGvRmBVezgUNA1rcemN6ly3Ddl9yU15+0dV4NZmMZPwkFSXo8VUeXo0MzcX5sjugHox
	va3oiW6KNw6X0NKeQ9MN8f5TOa0/SoDUeJNbIQ+qQNO0ae0vgYNZMYU/0SjDaphlu/i7LgmfHpX9X
	QnkXnsOkFrVtyPCqgo0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDtUM-00CKpi-3H; Tue, 19 Jul 2022 20:06:38 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDtUH-00CKhd-Jv
	for linux-phy@lists.infradead.org; Tue, 19 Jul 2022 20:06:35 +0000
Received: by mail-lf1-x130.google.com with SMTP id u13so26747172lfn.5
        for <linux-phy@lists.infradead.org>; Tue, 19 Jul 2022 13:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BewLiTjR10h+oTJ0avemj1AO0l9V25Sz/9zi/qmKcRY=;
        b=gGEjViutvNjXVf0k/0lnlk6F6kfNsnWDhR2AdE+SJCKd67l+bJMnGdxwHhqitUYa5v
         EV4jFcjKoY51Ff4AwSuy5aqDPqsLS8PdnOCcTeKRMQV+xO6mEVyI4LwlMc2vTgueqcBK
         rvoNCZjksHZAeuE0pmnrPt/PUsyhke3/vowKM/N+fgJheZzNfQmZYnlu6IzbfRkVSKEk
         cXvN6PkyFcYePFypX7EWycshS0VR5IiLyi2YXaT/aFN6j0UaGxiO+xDj4xghDESnyJgJ
         8eMDLDx0txt+JmEFrA285l5g/EhvUw6gYDEWvIn65CIGW2HBwvB2H169ilKLqzzBPgxE
         cIaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BewLiTjR10h+oTJ0avemj1AO0l9V25Sz/9zi/qmKcRY=;
        b=nZoReE+yH0F6V4s2ANcxeXCBSGAC/20d8SaepqB5ZpkwzwsmAdpyMhvzri4JG8EPgD
         E9MDZGI73x1YWAZxYv3/arWe69dx/FyQCPwT/d45DdU1vpaP4k+YWTFnziQ4qUsQwYc4
         ZOhXISTYP6Wui58RjrnPvJ5jiMephinWs/N0c6H4kf9D1A2Pl+f8H8tWczN2FNot2co9
         /g4sy3SzbSRm7MM+54TjDL+PRWlnz5m9AOGbtw3HN+39lzJgopUWDzzt0LKQWSK2hS7+
         qILo0BWktcMYNeAHpEX0Q+XTXvY5tcKMi95FSdoDrFp1DoXml+U4rjcFDXK/wdE3pQdn
         3/pA==
X-Gm-Message-State: AJIora+JEszfKfSI0gL6Yr2tfnaAfC2xttj/GZ6YSyj7PTqyP1+TWetn
	5BFUPXja7tPgJY82BkVFKQaLHA==
X-Google-Smtp-Source: AGRyM1ul+6Nz73ETIKvto/V1zZUbkttJUhYVONnezX8bzG221NalQq3YMwzJDDmiX4O064jivTsV8g==
X-Received: by 2002:a05:6512:4029:b0:489:c7a7:42c8 with SMTP id br41-20020a056512402900b00489c7a742c8mr17632245lfb.461.1658261189849;
        Tue, 19 Jul 2022 13:06:29 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w16-20020a05651234d000b00485caa0f5dfsm3402324lfr.44.2022.07.19.13.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jul 2022 13:06:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH 2/4] phy: qcom-qmp-pcie: suppor separate tables for EP mode
Date: Tue, 19 Jul 2022 23:06:24 +0300
Message-Id: <20220719200626.976084-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220719200626.976084-1-dmitry.baryshkov@linaro.org>
References: <20220719200626.976084-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_130633_704983_AFE63702 
X-CRM114-Status: GOOD (  16.48  )
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

The PCIe QMP PHY requires different programming sequences when being
used for the RC (Root Complex) or for the EP (End Point) modes. Allow
selecting the submode and thus selecting a set of PHY programming
tables.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 33 ++++++++++++++++--------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 23ca5848c4a8..898288c1cd7d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1368,7 +1368,8 @@ struct qmp_phy_cfg {
 
 	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
 	struct qmp_phy_cfg_tables pri;
-	struct qmp_phy_cfg_tables sec;
+	struct qmp_phy_cfg_tables sec_rc; /* for the RC only */
+	struct qmp_phy_cfg_tables sec_ep; /* for the EP only */
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -1418,6 +1419,7 @@ struct qmp_phy_cfg {
  * @index: lane index
  * @qmp: QMP phy to which this lane belongs
  * @mode: current PHY mode
+ * @sec: currently selected PHY init table set
  */
 struct qmp_phy {
 	struct phy *phy;
@@ -1433,6 +1435,7 @@ struct qmp_phy {
 	unsigned int index;
 	struct qcom_qmp *qmp;
 	enum phy_mode mode;
+	const struct qmp_phy_cfg_tables *sec;
 };
 
 /**
@@ -1683,7 +1686,7 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
 	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
 	},
-	.sec = {
+	.sec_rc = {
 	.serdes_tbl		= sm8250_qmp_gen3x1_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_serdes_tbl),
 	.rx_tbl			= sm8250_qmp_gen3x1_pcie_rx_tbl,
@@ -1726,7 +1729,7 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
 	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
 	},
-	.sec = {
+	.sec_rc = {
 	.tx_tbl			= sm8250_qmp_gen3x2_pcie_tx_tbl,
 	.tx_tbl_num		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_tx_tbl),
 	.rx_tbl			= sm8250_qmp_gen3x2_pcie_rx_tbl,
@@ -1951,7 +1954,7 @@ static int qcom_qmp_phy_pcie_serdes_init(struct qmp_phy *qphy)
 	void __iomem *serdes = qphy->serdes;
 
 	qcom_qmp_phy_pcie_configure(serdes, cfg->regs, cfg->pri.serdes_tbl, cfg->pri.serdes_tbl_num);
-	qcom_qmp_phy_pcie_configure(serdes, cfg->regs, cfg->sec.serdes_tbl, cfg->sec.serdes_tbl_num);
+	qcom_qmp_phy_pcie_configure(serdes, cfg->regs, qphy->sec->serdes_tbl, qphy->sec->serdes_tbl_num);
 
 	return 0;
 }
@@ -2045,6 +2048,9 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 	unsigned int mask, val, ready;
 	int ret;
 
+	if (!qphy->sec)
+		qphy->sec = &cfg->sec_rc;
+
 	qcom_qmp_phy_pcie_serdes_init(qphy);
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
@@ -2057,35 +2063,35 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 	qcom_qmp_phy_pcie_configure_lane(tx, cfg->regs,
 					 cfg->pri.tx_tbl, cfg->pri.tx_tbl_num, 1);
 	qcom_qmp_phy_pcie_configure_lane(tx, cfg->regs,
-					 cfg->sec.tx_tbl, cfg->sec.tx_tbl_num, 1);
+					 qphy->sec->tx_tbl, qphy->sec->tx_tbl_num, 1);
 
 	/* Configuration for other LANE for USB-DP combo PHY */
 	if (cfg->is_dual_lane_phy) {
 		qcom_qmp_phy_pcie_configure_lane(qphy->tx2, cfg->regs,
 						 cfg->pri.tx_tbl, cfg->pri.tx_tbl_num, 2);
 		qcom_qmp_phy_pcie_configure_lane(qphy->tx2, cfg->regs,
-						 cfg->sec.tx_tbl, cfg->sec.tx_tbl_num, 2);
+						 qphy->sec->tx_tbl, qphy->sec->tx_tbl_num, 2);
 	}
 
 	qcom_qmp_phy_pcie_configure_lane(rx, cfg->regs,
 					 cfg->pri.rx_tbl, cfg->pri.rx_tbl_num, 1);
 	qcom_qmp_phy_pcie_configure_lane(rx, cfg->regs,
-					 cfg->sec.rx_tbl, cfg->sec.rx_tbl_num, 1);
+					 qphy->sec->rx_tbl, qphy->sec->rx_tbl_num, 1);
 
 	if (cfg->is_dual_lane_phy) {
 		qcom_qmp_phy_pcie_configure_lane(qphy->rx2, cfg->regs,
 						 cfg->pri.rx_tbl, cfg->pri.rx_tbl_num, 2);
 		qcom_qmp_phy_pcie_configure_lane(qphy->rx2, cfg->regs,
-						 cfg->sec.rx_tbl, cfg->sec.rx_tbl_num, 2);
+						 qphy->sec->rx_tbl, qphy->sec->rx_tbl_num, 2);
 	}
 
 	qcom_qmp_phy_pcie_configure(pcs, cfg->regs, cfg->pri.pcs_tbl, cfg->pri.pcs_tbl_num);
-	qcom_qmp_phy_pcie_configure(pcs, cfg->regs, cfg->sec.pcs_tbl, cfg->sec.pcs_tbl_num);
+	qcom_qmp_phy_pcie_configure(pcs, cfg->regs, qphy->sec->pcs_tbl, qphy->sec->pcs_tbl_num);
 
 	qcom_qmp_phy_pcie_configure(pcs_misc, cfg->regs, cfg->pri.pcs_misc_tbl,
 			       cfg->pri.pcs_misc_tbl_num);
-	qcom_qmp_phy_pcie_configure(pcs_misc, cfg->regs, cfg->sec.pcs_misc_tbl,
-			       cfg->sec.pcs_misc_tbl_num);
+	qcom_qmp_phy_pcie_configure(pcs_misc, cfg->regs, qphy->sec->pcs_misc_tbl,
+			       qphy->sec->pcs_misc_tbl_num);
 
 	/*
 	 * Pull out PHY from POWER DOWN state.
@@ -2187,6 +2193,11 @@ static int qcom_qmp_phy_pcie_set_mode(struct phy *phy,
 
 	qphy->mode = mode;
 
+	if (submode)
+		qphy->sec = &qphy->cfg->sec_ep;
+	else
+		qphy->sec = &qphy->cfg->sec_rc;
+
 	return 0;
 }
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
