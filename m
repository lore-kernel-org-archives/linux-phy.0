Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4542C6FA8E
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 16:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDX6S+Vq9KaEVrPVynpZlhOu4/WPzDXitl+wLvSzbCU=; b=myYxiYWgY0shAO
	179r4Jjb4ZKE6zqoaH1/rtN2A63MWmc3fmLDn4zbTUzbofr90FEzicCKG0Bwl2T/NihNxBiMF9+X+
	OJ4BxmNkMl9t2jEaGy4TwehvyV3SlqpKvZbLOiDBiW9O5Vb4V0Vk4kK2aXmHRyuCJnU9eMWmcfbkQ
	4E2YWkuQrl+XoOf8/rZgasaOftIwdcTJwitBJuLp8uak3wLV5Y7te9k2NloOJ319YBcOHbZSrYLCG
	zG/ra7bXMKkU5eh2DsOM6e2qLZDRe1GWPsAe0gbNNtnZbHuX3JLk4Q4CJDujeXxhrxPpskdmXRNDS
	GKMF7p0bFo5IqXrKi2yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7cW-007t3v-C4; Sat, 24 Sep 2022 16:03:12 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7cR-007szv-Px
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 16:03:10 +0000
Received: by mail-lj1-x235.google.com with SMTP id l12so3114988ljg.9
        for <linux-phy@lists.infradead.org>; Sat, 24 Sep 2022 09:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=5Fw2HWdlMkJhO3UC0znX6ahd5v6qxKMsjDOm0yRZsrg=;
        b=Ic5WniG9E+e+bTFlBI8w1LvNb2y/C2zRUPlxP2fFTaD+swgTZmOjQ/sS6gbwvEzBFH
         Gspt1VY8P7b3y8gXCY9y2W+wZBPpKaYfg/MEYciPh1Mjm5Wfb6oOtz7ORudtAP0RHXBN
         RdBYxz3Q8NxhSBZ6+q3vDKnX8h7Zn5eLnI/6m8i67N8QfuN6ciWFnQdeYTYBneCdWnpW
         IUM109P9OXS7auXiVXL5dRiMMPOWiouHkA9exp67azOESHVH/APF+v4M/U+SjrInZwga
         AMxxP0r5+DKdvN/4yWD2BrRRh6a5DKGCZQY983isgPkCgUxTlz6XNZtkacRUDkmfRsQe
         o7LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=5Fw2HWdlMkJhO3UC0znX6ahd5v6qxKMsjDOm0yRZsrg=;
        b=vbaS62fOS8jJwT346+mBh5tsAWCvUCrf3clwThyisdrFSkYOHDuK9Dz+ihpJ/z2s2T
         6iZ5eY+i9ZRDMtdDiRs+DbBwGgvowXK/byCYuWhRcjFThgxgCSxvP3E1LvJZZZQ7lQY7
         Fg8d5aopMRqgr+7m/ocZYXO3MMEmiJZSUc8uvOQlfEUG9sQnW+AWgWDc2PDQ+ADp/1m0
         eQywVAvXkp2SZ/SFg4EP8+D92Q+VnsYHzGmoTdq/yIYNQr8RNSkXH66hVqakVOiczcl5
         NInvTcVXoAPMF5wyTMkqqYhalQDnpG65LZvghsyWPk9qbzllYfI4t3z8Uipw8lxu7wyL
         Otpg==
X-Gm-Message-State: ACrzQf1wDIeHFY/URgvvSlMtjCZrqTU7SwQPdqNZsV/K/mqFqViHdgBQ
	hn5Xyrh/8rv5WhH4rD/j/rIOQQ==
X-Google-Smtp-Source: AMsMyM7M2IxI4tauVrsGy1D2gHP8KO5950S7LC1ANkRMgbdrMgYnj6X6XZ2T7LDNU9sEdoDucfRIGw==
X-Received: by 2002:a05:651c:234:b0:26c:77bf:8eb3 with SMTP id z20-20020a05651c023400b0026c77bf8eb3mr3313764ljn.178.1664035385780;
        Sat, 24 Sep 2022 09:03:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru ([95.161.222.31])
        by smtp.gmail.com with ESMTPSA id 9-20020ac25f09000000b00499f9ba6af0sm1928015lfq.207.2022.09.24.09.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 09:03:05 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
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
Subject: [PATCH v4 2/6] phy: qcom-qmp-pcie: split PHY programming to separate functions
Date: Sat, 24 Sep 2022 19:02:58 +0300
Message-Id: <20220924160302.285875-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220924160302.285875-1-dmitry.baryshkov@linaro.org>
References: <20220924160302.285875-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_090307_886305_FE66E541 
X-CRM114-Status: GOOD (  12.31  )
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

Split the code using PHY programming tables into separate functions,
which take a single struct qmp_phy_cfg_tables instance.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 80 ++++++++++++++----------
 1 file changed, 48 insertions(+), 32 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 30806816c8b0..6e8c74585670 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1877,15 +1877,53 @@ static void qmp_pcie_configure(void __iomem *base,
 	qmp_pcie_configure_lane(base, regs, tbl, num, 0xff);
 }
 
-static int qmp_pcie_serdes_init(struct qmp_phy *qphy)
+static void qmp_pcie_serdes_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *serdes = qphy->serdes;
 
-	qmp_pcie_configure(serdes, cfg->regs, cfg->common.serdes_tbl, cfg->common.serdes_tbl_num);
-	qmp_pcie_configure(serdes, cfg->regs, cfg->extra->serdes_tbl, cfg->extra->serdes_tbl_num);
+	if (!tables)
+		return;
 
-	return 0;
+	qmp_pcie_configure(serdes, cfg->regs, tables->serdes_tbl, tables->serdes_tbl_num);
+}
+
+static void qmp_pcie_lanes_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
+{
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	void __iomem *tx = qphy->tx;
+	void __iomem *rx = qphy->rx;
+
+	if (!tables)
+		return;
+
+	qmp_pcie_configure_lane(tx, cfg->regs,
+				tables->tx_tbl, tables->tx_tbl_num, 1);
+
+	if (cfg->lanes >= 2)
+		qmp_pcie_configure_lane(qphy->tx2, cfg->regs,
+					tables->tx_tbl, tables->tx_tbl_num, 2);
+
+	qmp_pcie_configure_lane(rx, cfg->regs,
+				tables->rx_tbl, tables->rx_tbl_num, 1);
+	if (cfg->lanes >= 2)
+		qmp_pcie_configure_lane(qphy->rx2, cfg->regs,
+					tables->rx_tbl, tables->rx_tbl_num, 2);
+}
+
+static void qmp_pcie_pcs_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
+{
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	void __iomem *pcs = qphy->pcs;
+	void __iomem *pcs_misc = qphy->pcs_misc;
+
+	if (!tables)
+		return;
+
+	qmp_pcie_configure(pcs, cfg->regs,
+			   tables->pcs_tbl, tables->pcs_tbl_num);
+	qmp_pcie_configure(pcs_misc, cfg->regs,
+			   tables->pcs_misc_tbl, tables->pcs_misc_tbl_num);
 }
 
 static int qmp_pcie_init(struct phy *phy)
@@ -1957,15 +1995,13 @@ static int qmp_pcie_power_on(struct phy *phy)
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *tx = qphy->tx;
-	void __iomem *rx = qphy->rx;
 	void __iomem *pcs = qphy->pcs;
-	void __iomem *pcs_misc = qphy->pcs_misc;
 	void __iomem *status;
 	unsigned int mask, val, ready;
 	int ret;
 
-	qmp_pcie_serdes_init(qphy);
+	qmp_pcie_serdes_init(qphy, &cfg->common);
+	qmp_pcie_serdes_init(qphy, cfg->extra);
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
 	if (ret) {
@@ -1974,31 +2010,11 @@ static int qmp_pcie_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qmp_pcie_configure_lane(tx, cfg->regs, cfg->common.tx_tbl, cfg->common.tx_tbl_num, 1);
-	qmp_pcie_configure_lane(tx, cfg->regs, cfg->extra->tx_tbl, cfg->extra->tx_tbl_num, 1);
-
-	if (cfg->lanes >= 2) {
-		qmp_pcie_configure_lane(qphy->tx2, cfg->regs, cfg->common.tx_tbl,
-					cfg->common.tx_tbl_num, 2);
-		qmp_pcie_configure_lane(qphy->tx2, cfg->regs, cfg->extra->tx_tbl,
-					cfg->extra->tx_tbl_num, 2);
-	}
-
-	qmp_pcie_configure_lane(rx, cfg->regs, cfg->common.rx_tbl, cfg->common.rx_tbl_num, 1);
-	qmp_pcie_configure_lane(rx, cfg->regs, cfg->extra->rx_tbl, cfg->extra->rx_tbl_num, 1);
-
-	if (cfg->lanes >= 2) {
-		qmp_pcie_configure_lane(qphy->rx2, cfg->regs, cfg->common.rx_tbl,
-					cfg->common.rx_tbl_num, 2);
-		qmp_pcie_configure_lane(qphy->rx2, cfg->regs, cfg->extra->rx_tbl,
-					cfg->extra->rx_tbl_num, 2);
-	}
-
-	qmp_pcie_configure(pcs, cfg->regs, cfg->common.pcs_tbl, cfg->common.pcs_tbl_num);
-	qmp_pcie_configure(pcs, cfg->regs, cfg->extra->pcs_tbl, cfg->extra->pcs_tbl_num);
+	qmp_pcie_lanes_init(qphy, &cfg->common);
+	qmp_pcie_lanes_init(qphy, cfg->extra);
 
-	qmp_pcie_configure(pcs_misc, cfg->regs, cfg->common.pcs_misc_tbl, cfg->common.pcs_misc_tbl_num);
-	qmp_pcie_configure(pcs_misc, cfg->regs, cfg->extra->pcs_misc_tbl, cfg->extra->pcs_misc_tbl_num);
+	qmp_pcie_pcs_init(qphy, &cfg->common);
+	qmp_pcie_pcs_init(qphy, cfg->extra);
 
 	/*
 	 * Pull out PHY from POWER DOWN state.
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
