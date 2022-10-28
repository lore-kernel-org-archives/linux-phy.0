Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11481ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQU8WzZ3CjUDeVBba9+8uRcsn+ici/PecVW3tvXECdQ=; b=Kymnh45uZSsmFZ
	Bt9Sskrai5bpJZYh0jzZ02HWF6UzORG68Wtdo3GtW15IAGppmUi//R4KOeyBw7HzijmprkoeJKlPz
	VhjKc58qqmpPMowqmilyOABM2HaOx+5d7iayz6wDmXBkurSWwy4JPxJY5gEqyGxuxuZ/Oyp2PVsx8
	AcHgnx9Q9Sx8ABrqt9ejHkmvBxgbs3DvfvO2J+PK+Vht54xKx2kkala16xDM9bq7bEKdgc2b79Cu+
	zfrpjG1EnCu5nMn2/M3rVK0T1tYmoc+2UFWck72SYMYk7+wTujB9V9HE4kbHTetCyT+rmxZ7IrdYp
	WE9tg6mzOCKpGZialh9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPXc-00HO5o-Vl; Fri, 28 Oct 2022 13:36:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPXX-00HO0s-Go
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:36:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 19EDE62899;
	Fri, 28 Oct 2022 13:36:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C96FC43151;
	Fri, 28 Oct 2022 13:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666964209;
	bh=zRz+xGr3qfzBHmqhYcHtUOAO+a77B5PUV9OisEOT424=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NGwjL6BUqzf4qmUkH5RKP2HzYrjJv+TeCLW0MnsOPLlWz8BcrM7/qzpl90OjOoPnr
	 3KmQGEfbkHOh4x341ygFqo14frXR4VD/rFF+f3CBqxKWgHLi6lty6eCugeOBEb+vLW
	 Zvb3FVE+EcnNWnwvBfVvIWcN7+hLiQhMVvj/bT7XkTw2NOcu6H/Pwvwkl6IjRdr+T1
	 BXHPddWl2wPREB1TZi41kLvK47s7oQOA0CpYyxYdRls2adqEM6dhw1N8tGrtleghOf
	 Yhi3HNR3Njl5h4G5hqQpCc7xyLCK6cXXrDv4E8DECLnf+oe24SnYa3JcCQW9rNfFib
	 qO6cPomTiBsLg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooPXH-0004rG-Hw; Fri, 28 Oct 2022 15:36:35 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v4 09/16] phy: qcom-qmp-pcie: add register init helper
Date: Fri, 28 Oct 2022 15:35:56 +0200
Message-Id: <20221028133603.18470-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028133603.18470-1-johan+linaro@kernel.org>
References: <20221028133603.18470-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_063651_651262_2A82F2D5 
X-CRM114-Status: GOOD (  12.49  )
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

Generalise the serdes initialisation helper so that it can be used to
initialise all the PHY registers (e.g. serdes, tx, rx, pcs).

Note that this defers the ungating of the PIPE clock somewhat, which is
fine as it isn't needed until starting the PHY.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 37 +++++-------------------
 1 file changed, 8 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 791ed7ef0eab..f57d10f20277 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1820,27 +1820,22 @@ static void qmp_pcie_configure(void __iomem *base,
 	qmp_pcie_configure_lane(base, tbl, num, 0xff);
 }
 
-static void qmp_pcie_serdes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
-{
-	void __iomem *serdes = qmp->serdes;
-
-	if (!tbls)
-		return;
-
-	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
-}
-
-static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
+static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	void __iomem *serdes = qmp->serdes;
 	void __iomem *tx = qmp->tx;
 	void __iomem *rx = qmp->rx;
 	void __iomem *tx2 = qmp->tx2;
 	void __iomem *rx2 = qmp->rx2;
+	void __iomem *pcs = qmp->pcs;
+	void __iomem *pcs_misc = qmp->pcs_misc;
 
 	if (!tbls)
 		return;
 
+	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
+
 	qmp_pcie_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
 	qmp_pcie_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
 
@@ -1848,15 +1843,6 @@ static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_t
 		qmp_pcie_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
 		qmp_pcie_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
 	}
-}
-
-static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
-{
-	void __iomem *pcs = qmp->pcs;
-	void __iomem *pcs_misc = qmp->pcs_misc;
-
-	if (!tbls)
-		return;
 
 	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
 	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
@@ -1932,8 +1918,8 @@ static int qmp_pcie_power_on(struct phy *phy)
 	else
 		mode_tables = cfg->tables_ep;
 
-	qmp_pcie_serdes_init(qmp, &cfg->tables);
-	qmp_pcie_serdes_init(qmp, mode_tables);
+	qmp_pcie_init_registers(qmp, &cfg->tables);
+	qmp_pcie_init_registers(qmp, mode_tables);
 
 	ret = clk_prepare_enable(qmp->pipe_clk);
 	if (ret) {
@@ -1941,13 +1927,6 @@ static int qmp_pcie_power_on(struct phy *phy)
 		return ret;
 	}
 
-	/* Tx, Rx, and PCS configurations */
-	qmp_pcie_lanes_init(qmp, &cfg->tables);
-	qmp_pcie_lanes_init(qmp, mode_tables);
-
-	qmp_pcie_pcs_init(qmp, &cfg->tables);
-	qmp_pcie_pcs_init(qmp, mode_tables);
-
 	/* Pull PHY out of reset state */
 	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
